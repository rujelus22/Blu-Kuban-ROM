.class public Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;
.super Ljava/lang/Object;


# static fields
.field private static strDefaultKey:Ljava/lang/String;


# instance fields
.field private decryptCipher:Ljavax/crypto/Cipher;

.field private encryptCipher:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "estrongs"

    sput-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;->strDefaultKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;->strDefaultKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;->encryptCipher:Ljavax/crypto/Cipher;

    iput-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;->decryptCipher:Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;->getKey([B)Ljava/security/Key;

    move-result-object v0

    const-string v1, "DES/ECB/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;->encryptCipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;->encryptCipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;->decryptCipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;->decryptCipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    return-void
.end method

.method public static byteArr2HexStr([B)Ljava/lang/String;
    .registers 7

    const/16 v5, 0x10

    array-length v2, p0

    new-instance v3, Ljava/lang/StringBuffer;

    mul-int/lit8 v0, v2, 0x2

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-lt v1, v2, :cond_13

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    aget-byte v0, p0, v1

    :goto_15
    if-ltz v0, :cond_29

    if-ge v0, v5, :cond_1e

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1e
    invoke-static {v0, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_29
    add-int/lit16 v0, v0, 0x100

    goto :goto_15
.end method

.method private getKey([B)Ljava/security/Key;
    .registers 5

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_5
    array-length v2, p1

    if-ge v0, v2, :cond_b

    array-length v2, v1

    if-lt v0, v2, :cond_13

    :cond_b
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "DES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_13
    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public static hexStr2ByteArr(Ljava/lang/String;)[B
    .registers 8

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v2, v1

    div-int/lit8 v0, v2, 0x2

    new-array v3, v0, [B

    const/4 v0, 0x0

    :goto_a
    if-lt v0, v2, :cond_d

    return-object v3

    :cond_d
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {v4, v1, v0, v5}, Ljava/lang/String;-><init>([BII)V

    div-int/lit8 v5, v0, 0x2

    const/16 v6, 0x10

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    add-int/lit8 v0, v0, 0x2

    goto :goto_a
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;->hexStr2ByteArr(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;->decrypt([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public decrypt([B)[B
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;->decryptCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;->encrypt([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;->byteArr2HexStr([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encrypt([B)[B
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/Statistics$DESPlus;->encryptCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method
