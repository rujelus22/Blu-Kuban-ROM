.class public Lcom/sprint/w/installer/dev/SecureSharedPreferences;
.super Ljava/lang/Object;
.source "SecureSharedPreferences.java"


# static fields
.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"


# instance fields
.field private keySeed:Ljava/lang/String;

.field protected preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter "appContext"
    .parameter "prefrencesName"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sprint/w/installer/dev/SecureSharedPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "appContext"
    .parameter "prefrencesName"
    .parameter "key"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/w/installer/dev/SecureSharedPreferences;->keySeed:Ljava/lang/String;

    .line 67
    if-nez p3, :cond_14

    .line 68
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/dev/SecureSharedPreferences;->generateDefaultKey(Landroid/content/Context;)V

    .line 73
    :goto_c
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/dev/SecureSharedPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 74
    return-void

    .line 70
    :cond_14
    iput-object p3, p0, Lcom/sprint/w/installer/dev/SecureSharedPreferences;->keySeed:Ljava/lang/String;

    goto :goto_c
.end method

.method private appendHex(Ljava/lang/StringBuffer;B)V
    .registers 6
    .parameter "sb"
    .parameter "b"

    .prologue
    .line 218
    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p2, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 219
    return-void
.end method

.method private decrypt([B[B)[B
    .registers 7
    .parameter "raw"
    .parameter "encrypted"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 180
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 181
    .local v2, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 182
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 183
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 184
    .local v1, decrypted:[B
    return-object v1
.end method

.method private encrypt([B[B)[B
    .registers 7
    .parameter "raw"
    .parameter "clear"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 172
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 173
    .local v2, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 174
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 175
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 176
    .local v1, encrypted:[B
    return-object v1
.end method

.method private getRawKey([B)[B
    .registers 7
    .parameter "seed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 162
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 163
    .local v0, kgen:Ljavax/crypto/KeyGenerator;
    const-string v4, "SHA1PRNG"

    invoke-static {v4}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    .line 164
    .local v3, sr:Ljava/security/SecureRandom;
    invoke-virtual {v3, p1}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 165
    const/16 v4, 0x80

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 166
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 167
    .local v2, skey:Ljavax/crypto/SecretKey;
    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 168
    .local v1, raw:[B
    return-object v1
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "seed"
    .parameter "encrypted"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sprint/w/installer/dev/SecureSharedPreferences;->getRawKey([B)[B

    move-result-object v1

    .line 156
    .local v1, rawKey:[B
    invoke-virtual {p0, p2}, Lcom/sprint/w/installer/dev/SecureSharedPreferences;->toByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 157
    .local v0, enc:[B
    invoke-direct {p0, v1, v0}, Lcom/sprint/w/installer/dev/SecureSharedPreferences;->decrypt([B[B)[B

    move-result-object v2

    .line 158
    .local v2, result:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "seed"
    .parameter "cleartext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sprint/w/installer/dev/SecureSharedPreferences;->getRawKey([B)[B

    move-result-object v0

    .line 150
    .local v0, rawKey:[B
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/sprint/w/installer/dev/SecureSharedPreferences;->encrypt([B[B)[B

    move-result-object v1

    .line 151
    .local v1, result:[B
    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/dev/SecureSharedPreferences;->toHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public fromHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "hex"

    .prologue
    .line 192
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/dev/SecureSharedPreferences;->toByte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method protected generateDefaultKey(Landroid/content/Context;)V
    .registers 6
    .parameter "appContext"

    .prologue
    .line 85
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 86
    .local v0, mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, meid:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "w"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/w/installer/dev/SecureSharedPreferences;->keySeed:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 122
    iget-object v2, p0, Lcom/sprint/w/installer/dev/SecureSharedPreferences;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, encryptedValue:Ljava/lang/String;
    :try_start_6
    iget-object v2, p0, Lcom/sprint/w/installer/dev/SecureSharedPreferences;->keySeed:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/sprint/w/installer/dev/SecureSharedPreferences;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object p2

    .line 126
    .end local p2
    :goto_c
    return-object p2

    .line 125
    .restart local p2
    :catch_d
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/Exception;
    goto :goto_c
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 106
    :try_start_0
    iget-object v2, p0, Lcom/sprint/w/installer/dev/SecureSharedPreferences;->keySeed:Ljava/lang/String;

    invoke-virtual {p0, v2, p2}, Lcom/sprint/w/installer/dev/SecureSharedPreferences;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, encryptedValue:Ljava/lang/String;
    iget-object v2, p0, Lcom/sprint/w/installer/dev/SecureSharedPreferences;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 108
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 112
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #encryptedValue:Ljava/lang/String;
    :goto_12
    return-void

    .line 110
    :catch_13
    move-exception v2

    goto :goto_12
.end method

.method public remove(Ljava/lang/String;)V
    .registers 4
    .parameter "key"

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/sprint/w/installer/dev/SecureSharedPreferences;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 138
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 142
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_c
    return-void

    .line 140
    :catch_d
    move-exception v1

    goto :goto_c
.end method

.method public toByte(Ljava/lang/String;)[B
    .registers 7
    .parameter "hexString"

    .prologue
    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 197
    .local v1, len:I
    new-array v2, v1, [B

    .line 198
    .local v2, result:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, v1, :cond_24

    .line 199
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 201
    :cond_24
    return-object v2
.end method

.method public toHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "txt"

    .prologue
    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/dev/SecureSharedPreferences;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toHex([B)Ljava/lang/String;
    .registers 5
    .parameter "buf"

    .prologue
    .line 205
    if-nez p1, :cond_5

    .line 206
    const-string v2, ""

    .line 212
    :goto_4
    return-object v2

    .line 208
    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 209
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    array-length v2, p1

    if-ge v0, v2, :cond_19

    .line 210
    aget-byte v2, p1, v0

    invoke-direct {p0, v1, v2}, Lcom/sprint/w/installer/dev/SecureSharedPreferences;->appendHex(Ljava/lang/StringBuffer;B)V

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 212
    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method
