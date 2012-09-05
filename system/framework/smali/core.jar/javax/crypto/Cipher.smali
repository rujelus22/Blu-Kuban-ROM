.class public Ljavax/crypto/Cipher;
.super Ljava/lang/Object;
.source "Cipher.java"


# static fields
.field public static final DECRYPT_MODE:I = 0x2

.field public static final ENCRYPT_MODE:I = 0x1

.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine; = null

.field public static final PRIVATE_KEY:I = 0x2

.field public static final PUBLIC_KEY:I = 0x1

.field public static final SECRET_KEY:I = 0x3

.field private static final SERVICE:Ljava/lang/String; = "Cipher"

.field public static final UNWRAP_MODE:I = 0x4

.field public static final WRAP_MODE:I = 0x3

.field private static secureRandom:Ljava/security/SecureRandom;


# instance fields
.field private mode:I

.field private provider:Ljava/security/Provider;

.field private spiImpl:Ljavax/crypto/CipherSpi;

.field private transformation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 109
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "Cipher"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/crypto/Cipher;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 5
    .parameter "cipherSpi"
    .parameter "provider"
    .parameter "transformation"

    .prologue
    .line 142
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 143
    if-nez p1, :cond_b

    .line 144
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 146
    :cond_b
    instance-of v0, p1, Lorg/apache/harmony/crypto/internal/NullCipherSpi;

    if-nez v0, :cond_17

    if-nez p2, :cond_17

    .line 147
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 149
    :cond_17
    iput-object p2, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    .line 150
    iput-object p3, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    .line 151
    iput-object p1, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    .line 152
    return-void
.end method

.method private checkMode(I)V
    .registers 5
    .parameter "mode"

    .prologue
    .line 524
    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_25

    const/4 v0, 0x4

    if-eq p1, v0, :cond_25

    const/4 v0, 0x3

    if-eq p1, v0, :cond_25

    .line 526
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_25
    return-void
.end method

.method private static checkTransformation(Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .parameter "transformation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 332
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 333
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 336
    :cond_f
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, pieces:[Ljava/lang/String;
    array-length v4, v2

    if-le v4, v7, :cond_1d

    .line 338
    invoke-static {p0}, Ljavax/crypto/Cipher;->invalidTransformation(Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v4

    throw v4

    .line 341
    :cond_1d
    new-array v3, v7, [Ljava/lang/String;

    .line 342
    .local v3, result:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_20
    array-length v4, v2

    if-ge v0, v4, :cond_34

    .line 343
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, piece:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_31

    .line 345
    aput-object v1, v3, v0

    .line 342
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 349
    .end local v1           #piece:Ljava/lang/String;
    :cond_34
    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-nez v4, :cond_3e

    .line 350
    invoke-static {p0}, Ljavax/crypto/Cipher;->invalidTransformation(Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v4

    throw v4

    .line 352
    :cond_3e
    aget-object v4, v3, v5

    if-nez v4, :cond_46

    aget-object v4, v3, v6

    if-eqz v4, :cond_53

    :cond_46
    aget-object v4, v3, v5

    if-eqz v4, :cond_4e

    aget-object v4, v3, v6

    if-nez v4, :cond_53

    .line 353
    :cond_4e
    invoke-static {p0}, Ljavax/crypto/Cipher;->invalidTransformation(Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v4

    throw v4

    .line 355
    :cond_53
    return-object v3
.end method

.method private static declared-synchronized getCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .registers 18
    .parameter "transformation"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 258
    const-class v13, Ljavax/crypto/Cipher;

    monitor-enter v13

    if-eqz p0, :cond_b

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_13

    .line 259
    :cond_b
    invoke-static/range {p0 .. p0}, Ljavax/crypto/Cipher;->invalidTransformation(Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v12

    throw v12
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_10

    .line 258
    :catchall_10
    move-exception v12

    monitor-exit v13

    throw v12

    .line 262
    :cond_13
    :try_start_13
    invoke-static/range {p0 .. p0}, Ljavax/crypto/Cipher;->checkTransformation(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 264
    .local v11, transf:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 265
    .local v8, needSetPadding:Z
    const/4 v7, 0x0

    .line 266
    .local v7, needSetMode:Z
    const/4 v5, 0x0

    .line 267
    .local v5, engineSpi:Ljava/lang/Object;
    move-object/from16 v4, p1

    .line 268
    .local v4, engineProvider:Ljava/security/Provider;
    const/4 v12, 0x1

    aget-object v12, v11, v12

    if-nez v12, :cond_51

    const/4 v12, 0x2

    aget-object v12, v11, v12

    if-nez v12, :cond_51

    .line 269
    if-nez p1, :cond_43

    .line 270
    sget-object v12, Ljavax/crypto/Cipher;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v14, 0x0

    aget-object v14, v11, v14

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v9

    .line 271
    .local v9, sap:Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    iget-object v5, v9, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    .line 272
    iget-object v4, v9, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    move-object v2, v5

    .line 312
    .end local v5           #engineSpi:Ljava/lang/Object;
    .end local v9           #sap:Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :goto_37
    if-eqz v2, :cond_3b

    if-nez v4, :cond_10a

    .line 313
    :cond_3b
    new-instance v12, Ljava/security/NoSuchAlgorithmException;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 274
    .restart local v5       #engineSpi:Ljava/lang/Object;
    :cond_43
    sget-object v12, Ljavax/crypto/Cipher;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v14, 0x0

    aget-object v14, v11, v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v14, v0, v15}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    goto :goto_37

    .line 277
    :cond_51
    const/4 v12, 0x4

    new-array v10, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v12

    const/4 v12, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v12

    const/4 v12, 0x2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "//"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v12

    const/4 v12, 0x3

    const/4 v14, 0x0

    aget-object v14, v11, v14

    aput-object v14, v10, v12

    .line 284
    .local v10, searchOrder:[Ljava/lang/String;
    const/4 v6, 0x0

    .end local v5           #engineSpi:Ljava/lang/Object;
    .local v6, i:I
    :goto_c8
    array-length v12, v10
    :try_end_c9
    .catchall {:try_start_13 .. :try_end_c9} :catchall_10

    if-ge v6, v12, :cond_da

    .line 286
    if-nez p1, :cond_e0

    .line 287
    :try_start_cd
    sget-object v12, Ljavax/crypto/Cipher;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    aget-object v14, v10, v6

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v9

    .line 288
    .restart local v9       #sap:Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    iget-object v5, v9, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    .line 289
    .restart local v5       #engineSpi:Ljava/lang/Object;
    iget-object v4, v9, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    .line 300
    .end local v5           #engineSpi:Ljava/lang/Object;
    .end local v9           #sap:Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :cond_da
    :goto_da
    packed-switch v6, :pswitch_data_13c

    move-object v2, v5

    goto/16 :goto_37

    .line 291
    :cond_e0
    sget-object v12, Ljavax/crypto/Cipher;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    aget-object v14, v10, v6

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v14, v0, v15}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ea
    .catchall {:try_start_cd .. :try_end_ea} :catchall_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_cd .. :try_end_ea} :catch_ec

    move-result-object v5

    .restart local v5       #engineSpi:Ljava/lang/Object;
    goto :goto_da

    .line 294
    .end local v5           #engineSpi:Ljava/lang/Object;
    :catch_ec
    move-exception v3

    .line 295
    .local v3, e:Ljava/security/NoSuchAlgorithmException;
    :try_start_ed
    array-length v12, v10

    add-int/lit8 v12, v12, -0x1

    if-ne v6, v12, :cond_fa

    .line 296
    new-instance v12, Ljava/security/NoSuchAlgorithmException;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 284
    :cond_fa
    add-int/lit8 v6, v6, 0x1

    goto :goto_c8

    .line 302
    .end local v3           #e:Ljava/security/NoSuchAlgorithmException;
    :pswitch_fd
    const/4 v8, 0x1

    move-object v2, v5

    .line 303
    goto/16 :goto_37

    .line 305
    :pswitch_101
    const/4 v7, 0x1

    move-object v2, v5

    .line 306
    goto/16 :goto_37

    .line 308
    :pswitch_105
    const/4 v8, 0x1

    .line 309
    const/4 v7, 0x1

    move-object v2, v5

    goto/16 :goto_37

    .line 315
    .end local v6           #i:I
    .end local v10           #searchOrder:[Ljava/lang/String;
    :cond_10a
    instance-of v12, v2, Ljavax/crypto/CipherSpi;

    if-nez v12, :cond_11c

    .line 316
    new-instance v12, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 318
    :cond_11c
    check-cast v2, Ljavax/crypto/CipherSpi;

    .line 319
    .local v2, cspi:Ljavax/crypto/CipherSpi;
    new-instance v1, Ljavax/crypto/Cipher;

    move-object/from16 v0, p0

    invoke-direct {v1, v2, v4, v0}, Ljavax/crypto/Cipher;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;)V

    .line 320
    .local v1, c:Ljavax/crypto/Cipher;
    if-eqz v7, :cond_12f

    .line 321
    iget-object v12, v1, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    const/4 v14, 0x1

    aget-object v14, v11, v14

    invoke-virtual {v12, v14}, Ljavax/crypto/CipherSpi;->engineSetMode(Ljava/lang/String;)V

    .line 323
    :cond_12f
    if-eqz v8, :cond_139

    .line 324
    iget-object v12, v1, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    const/4 v14, 0x2

    aget-object v14, v11, v14

    invoke-virtual {v12, v14}, Ljavax/crypto/CipherSpi;->engineSetPadding(Ljava/lang/String;)V
    :try_end_139
    .catchall {:try_start_ed .. :try_end_139} :catchall_10

    .line 326
    :cond_139
    monitor-exit v13

    return-object v1

    .line 300
    nop

    :pswitch_data_13c
    .packed-switch 0x1
        :pswitch_fd
        :pswitch_101
        :pswitch_105
    .end packed-switch
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .registers 2
    .parameter "transformation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->getCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .registers 6
    .parameter "transformation"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 202
    if-nez p1, :cond_a

    .line 203
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "provider == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_a
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 207
    .local v0, p:Ljava/security/Provider;
    if-nez v0, :cond_29

    .line 208
    new-instance v1, Ljava/security/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider not available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_29
    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .registers 5
    .parameter "transformation"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 234
    if-nez p1, :cond_a

    .line 235
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "provider == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_a
    invoke-static {p0, p1}, Ljavax/crypto/Cipher;->getCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 238
    .local v0, c:Ljavax/crypto/Cipher;
    return-object v0
.end method

.method public static final getMaxAllowedKeyLength(Ljava/lang/String;)I
    .registers 2
    .parameter "transformation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 1333
    if-nez p0, :cond_8

    .line 1334
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1336
    :cond_8
    invoke-static {p0}, Ljavax/crypto/Cipher;->checkTransformation(Ljava/lang/String;)[Ljava/lang/String;

    .line 1338
    const v0, 0x7fffffff

    return v0
.end method

.method public static final getMaxAllowedParameterSpec(Ljava/lang/String;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2
    .parameter "transformation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 1357
    if-nez p0, :cond_8

    .line 1358
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1360
    :cond_8
    invoke-static {p0}, Ljavax/crypto/Cipher;->checkTransformation(Ljava/lang/String;)[Ljava/lang/String;

    .line 1362
    const/4 v0, 0x0

    return-object v0
.end method

.method private static invalidTransformation(Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;
    .registers 4
    .parameter "transformation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid transformation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 5
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 1257
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    .line 1258
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1260
    :cond_10
    if-ne p1, p2, :cond_1a

    .line 1261
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == output"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1263
    :cond_1a
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/CipherSpi;->engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public final doFinal([BI)I
    .registers 9
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1074
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    .line 1075
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1077
    :cond_11
    if-gez p2, :cond_1b

    .line 1078
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputOffset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1080
    :cond_1b
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    move v3, v2

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method public final doFinal([BII[B)I
    .registers 11
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 1179
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method public final doFinal([BII[BI)I
    .registers 12
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 1217
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    .line 1218
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1220
    :cond_10
    if-ltz p2, :cond_19

    if-ltz p3, :cond_19

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_21

    .line 1221
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect inputOffset/inputLen parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1223
    :cond_21
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method public final doFinal()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1041
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    .line 1042
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1044
    :cond_11
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final doFinal([B)[B
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 1103
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    .line 1104
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1106
    :cond_10
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final doFinal([BII)[B
    .registers 6
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 1137
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    .line 1138
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1140
    :cond_10
    if-ltz p2, :cond_19

    if-ltz p3, :cond_19

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_21

    .line 1141
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect inputOffset/inputLen parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1143
    :cond_21
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    return-object v0
.end method

.method public final getBlockSize()I
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetBlockSize()I

    move-result v0

    return v0
.end method

.method public final getExemptionMechanism()Ljavax/crypto/ExemptionMechanism;
    .registers 2

    .prologue
    .line 440
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIV()[B
    .registers 2

    .prologue
    .line 411
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetIV()[B

    move-result-object v0

    return-object v0
.end method

.method public final getOutputSize(I)I
    .registers 4
    .parameter "inputLen"

    .prologue
    .line 399
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    if-nez v0, :cond_c

    .line 400
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher has not yet been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_c
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineGetOutputSize(I)I

    move-result v0

    return v0
.end method

.method public final getParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .prologue
    .line 426
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(ILjava/security/Key;)V
    .registers 4
    .parameter "opmode"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 473
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_b

    .line 477
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    .line 479
    :cond_b
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 480
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    .registers 5
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 655
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_b

    .line 656
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    .line 658
    :cond_b
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 659
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 6
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 700
    invoke-direct {p0, p1}, Ljavax/crypto/Cipher;->checkMode(I)V

    .line 707
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 708
    iput p1, p0, Ljavax/crypto/Cipher;->mode:I

    .line 709
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 5
    .parameter "opmode"
    .parameter "key"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 515
    invoke-direct {p0, p1}, Ljavax/crypto/Cipher;->checkMode(I)V

    .line 519
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 520
    iput p1, p0, Ljavax/crypto/Cipher;->mode:I

    .line 521
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 563
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_b

    .line 564
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    .line 566
    :cond_b
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 567
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 6
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 609
    invoke-direct {p0, p1}, Ljavax/crypto/Cipher;->checkMode(I)V

    .line 616
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 617
    iput p1, p0, Ljavax/crypto/Cipher;->mode:I

    .line 618
    return-void
.end method

.method public final init(ILjava/security/cert/Certificate;)V
    .registers 4
    .parameter "opmode"
    .parameter "certificate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 745
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_b

    .line 746
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    .line 748
    :cond_b
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;Ljava/security/SecureRandom;)V

    .line 749
    return-void
.end method

.method public final init(ILjava/security/cert/Certificate;Ljava/security/SecureRandom;)V
    .registers 11
    .parameter "opmode"
    .parameter "certificate"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 788
    invoke-direct {p0, p1}, Ljavax/crypto/Cipher;->checkMode(I)V

    .line 789
    instance-of v5, p2, Ljava/security/cert/X509Certificate;

    if-eqz v5, :cond_5a

    move-object v5, p2

    .line 790
    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 791
    .local v0, ce:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 792
    .local v1, critical:Z
    if-eqz v0, :cond_5a

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5a

    .line 793
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 794
    .local v4, oid:Ljava/lang/String;
    const-string v5, "2.5.29.15"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 795
    const/4 v1, 0x1

    .line 799
    .end local v4           #oid:Ljava/lang/String;
    :cond_31
    if-eqz v1, :cond_5a

    move-object v5, p2

    .line 800
    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v3

    .line 816
    .local v3, keyUsage:[Z
    if-eqz v3, :cond_5a

    .line 817
    const/4 v5, 0x1

    if-ne p1, v5, :cond_4b

    aget-boolean v5, v3, v6

    if-nez v5, :cond_4b

    .line 818
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "The public key in the certificate cannot be used for ENCRYPT_MODE"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 820
    :cond_4b
    if-ne p1, v6, :cond_5a

    const/4 v5, 0x2

    aget-boolean v5, v3, v5

    if-nez v5, :cond_5a

    .line 821
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "The public key in the certificate cannot be used for WRAP_MODE"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 831
    .end local v0           #ce:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1           #critical:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #keyUsage:[Z
    :cond_5a
    iget-object v5, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {v5, p1, v6, p3}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 832
    iput p1, p0, Ljavax/crypto/Cipher;->mode:I

    .line 833
    return-void
.end method

.method public final unwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 6
    .parameter "wrappedKey"
    .parameter "wrappedKeyAlgorithm"
    .parameter "wrappedKeyType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 1312
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    .line 1313
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1315
    :cond_b
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public final update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 5
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 1014
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    .line 1015
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1017
    :cond_10
    if-ne p1, p2, :cond_1a

    .line 1018
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == output"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1020
    :cond_1a
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/CipherSpi;->engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public final update([BII[B)I
    .registers 11
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 930
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v0

    return v0
.end method

.method public final update([BII[BI)I
    .registers 12
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 965
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    .line 966
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 968
    :cond_10
    if-nez p1, :cond_1a

    .line 969
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 971
    :cond_1a
    if-nez p4, :cond_24

    .line 972
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 974
    :cond_24
    if-gez p5, :cond_2e

    .line 975
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputOffset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 977
    :cond_2e
    if-ltz p2, :cond_39

    if-ltz p3, :cond_39

    array-length v0, p1

    if-gt p3, v0, :cond_39

    array-length v0, p1

    sub-int/2addr v0, p3

    if-le p2, v0, :cond_41

    .line 979
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect inputOffset/inputLen parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 981
    :cond_41
    array-length v0, p1

    if-nez v0, :cond_46

    .line 982
    const/4 v0, 0x0

    .line 984
    :goto_45
    return v0

    :cond_46
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v0

    goto :goto_45
.end method

.method public final update([B)[B
    .registers 5
    .parameter "input"

    .prologue
    .line 850
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    .line 851
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 853
    :cond_10
    if-nez p1, :cond_1a

    .line 854
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 856
    :cond_1a
    array-length v0, p1

    if-nez v0, :cond_1f

    .line 857
    const/4 v0, 0x0

    .line 859
    :goto_1e
    return-object v0

    :cond_1f
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v0

    goto :goto_1e
.end method

.method public final update([BII)[B
    .registers 6
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"

    .prologue
    .line 883
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    .line 884
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 886
    :cond_10
    if-nez p1, :cond_1a

    .line 887
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 889
    :cond_1a
    if-ltz p2, :cond_25

    if-ltz p3, :cond_25

    array-length v0, p1

    if-gt p3, v0, :cond_25

    array-length v0, p1

    sub-int/2addr v0, p3

    if-le p2, v0, :cond_2d

    .line 892
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect inputOffset/inputLen parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 894
    :cond_2d
    array-length v0, p1

    if-nez v0, :cond_32

    .line 895
    const/4 v0, 0x0

    .line 897
    :goto_31
    return-object v0

    :cond_32
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v0

    goto :goto_31
.end method

.method public final wrap(Ljava/security/Key;)[B
    .registers 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 1282
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    .line 1283
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1285
    :cond_b
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineWrap(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method
