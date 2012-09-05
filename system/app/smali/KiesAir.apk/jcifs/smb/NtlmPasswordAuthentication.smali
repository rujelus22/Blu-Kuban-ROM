.class public final Ljcifs/smb/NtlmPasswordAuthentication;
.super Ljava/lang/Object;
.source "NtlmPasswordAuthentication.java"

# interfaces
.implements Ljava/security/Principal;
.implements Ljava/io/Serializable;


# static fields
.field public static final ANONYMOUS:Ljcifs/smb/NtlmPasswordAuthentication; = null

.field static final BLANK:Ljava/lang/String; = ""

.field static final DEFAULT:Ljcifs/smb/NtlmPasswordAuthentication;

.field static DEFAULT_DOMAIN:Ljava/lang/String;

.field static DEFAULT_PASSWORD:Ljava/lang/String;

.field static DEFAULT_USERNAME:Ljava/lang/String;

.field static final GUEST:Ljcifs/smb/NtlmPasswordAuthentication;

.field private static final LM_COMPATIBILITY:I

.field static final NULL:Ljcifs/smb/NtlmPasswordAuthentication;

.field private static final RANDOM:Ljava/util/Random;

.field private static final S8:[B

.field private static log:Ljcifs/util/LogStream;


# instance fields
.field ansiHash:[B

.field challenge:[B

.field clientChallenge:[B

.field domain:Ljava/lang/String;

.field hashesExternal:Z

.field password:Ljava/lang/String;

.field unicodeHash:[B

.field username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 44
    const-string v0, "jcifs.smb.lmCompatibility"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    .line 47
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->RANDOM:Ljava/util/Random;

    .line 49
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    .line 52
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_50

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->S8:[B

    .line 77
    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->ANONYMOUS:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 268
    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->NULL:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 270
    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    const-string v1, "?"

    const-string v2, "GUEST"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->GUEST:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 272
    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT:Ljcifs/smb/NtlmPasswordAuthentication;

    return-void

    .line 52
    nop

    :array_50
    .array-data 0x1
        0x4bt
        0x47t
        0x53t
        0x21t
        0x40t
        0x23t
        0x24t
        0x25t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8
    .parameter "userInfo"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-boolean v5, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    .line 281
    iput-object v4, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    .line 282
    iput-object v4, p0, Ljcifs/smb/NtlmPasswordAuthentication;->challenge:[B

    .line 291
    iput-object v4, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    iput-object v4, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    iput-object v4, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 293
    if-eqz p1, :cond_44

    .line 295
    :try_start_13
    invoke-static {p1}, Ljcifs/smb/NtlmPasswordAuthentication;->unescape(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_16} :catch_60

    move-result-object p1

    .line 301
    :goto_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 302
    .local v1, end:I
    const/4 v2, 0x0

    .local v2, i:I
    const/4 v3, 0x0

    .local v3, u:I
    :goto_1d
    if-ge v2, v1, :cond_3e

    .line 303
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 304
    .local v0, c:C
    const/16 v4, 0x3b

    if-ne v0, v4, :cond_32

    .line 305
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 306
    add-int/lit8 v3, v2, 0x1

    .line 302
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 307
    :cond_32
    const/16 v4, 0x3a

    if-ne v0, v4, :cond_2f

    .line 308
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 312
    .end local v0           #c:C
    :cond_3e
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 315
    .end local v1           #end:I
    .end local v2           #i:I
    .end local v3           #u:I
    :cond_44
    invoke-static {}, Ljcifs/smb/NtlmPasswordAuthentication;->initDefaults()V

    .line 317
    iget-object v4, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    if-nez v4, :cond_4f

    sget-object v4, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    iput-object v4, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 318
    :cond_4f
    iget-object v4, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    if-nez v4, :cond_57

    sget-object v4, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_USERNAME:Ljava/lang/String;

    iput-object v4, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 319
    :cond_57
    iget-object v4, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    if-nez v4, :cond_5f

    sget-object v4, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_PASSWORD:Ljava/lang/String;

    iput-object v4, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 320
    :cond_5f
    return-void

    .line 296
    :catch_60
    move-exception v4

    goto :goto_17
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "domain"
    .parameter "username"
    .parameter "password"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-boolean v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    .line 281
    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    .line 282
    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->challenge:[B

    .line 331
    const/16 v1, 0x40

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 332
    .local v0, ci:I
    if-lez v0, :cond_39

    .line 333
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 334
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 343
    :cond_1d
    :goto_1d
    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 344
    iput-object p2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 345
    iput-object p3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 347
    invoke-static {}, Ljcifs/smb/NtlmPasswordAuthentication;->initDefaults()V

    .line 349
    if-nez p1, :cond_2c

    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 350
    :cond_2c
    if-nez p2, :cond_32

    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_USERNAME:Ljava/lang/String;

    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 351
    :cond_32
    if-nez p3, :cond_38

    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_PASSWORD:Ljava/lang/String;

    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 352
    :cond_38
    return-void

    .line 336
    :cond_39
    const/16 v1, 0x5c

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 337
    if-lez v0, :cond_1d

    .line 338
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 339
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1d
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B[B[B)V
    .registers 8
    .parameter "domain"
    .parameter "username"
    .parameter "challenge"
    .parameter "ansiHash"
    .parameter "unicodeHash"

    .prologue
    const/4 v1, 0x0

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    .line 281
    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    .line 282
    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->challenge:[B

    .line 360
    if-eqz p1, :cond_13

    if-eqz p2, :cond_13

    if-eqz p4, :cond_13

    if-nez p5, :cond_1b

    .line 362
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "External credentials cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_1b
    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 365
    iput-object p2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 366
    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 367
    iput-object p3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->challenge:[B

    .line 368
    iput-object p4, p0, Ljcifs/smb/NtlmPasswordAuthentication;->ansiHash:[B

    .line 369
    iput-object p5, p0, Ljcifs/smb/NtlmPasswordAuthentication;->unicodeHash:[B

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    .line 371
    return-void
.end method

.method private static E([B[B[B)V
    .registers 11
    .parameter "key"
    .parameter "data"
    .parameter "e"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v5, 0x0

    .line 61
    new-array v3, v6, [B

    .line 62
    .local v3, key7:[B
    new-array v1, v7, [B

    .line 64
    .local v1, e8:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    array-length v4, p0

    div-int/lit8 v4, v4, 0x7

    if-ge v2, v4, :cond_23

    .line 65
    mul-int/lit8 v4, v2, 0x7

    invoke-static {p0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    new-instance v0, Ljcifs/util/DES;

    invoke-direct {v0, v3}, Ljcifs/util/DES;-><init>([B)V

    .line 67
    .local v0, des:Ljcifs/util/DES;
    invoke-virtual {v0, p1, v1}, Ljcifs/util/DES;->encrypt([B[B)V

    .line 68
    mul-int/lit8 v4, v2, 0x8

    invoke-static {v1, v5, p2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 70
    .end local v0           #des:Ljcifs/util/DES;
    :cond_23
    return-void
.end method

.method static computeResponse([B[B[BII)[B
    .registers 11
    .parameter "responseKey"
    .parameter "serverChallenge"
    .parameter "clientData"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v5, 0x0

    .line 222
    new-instance v0, Ljcifs/util/HMACT64;

    invoke-direct {v0, p0}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 223
    .local v0, hmac:Ljcifs/util/HMACT64;
    invoke-virtual {v0, p1}, Ljcifs/util/HMACT64;->update([B)V

    .line 224
    invoke-virtual {v0, p2, p3, p4}, Ljcifs/util/HMACT64;->update([BII)V

    .line 225
    invoke-virtual {v0}, Ljcifs/util/HMACT64;->digest()[B

    move-result-object v1

    .line 226
    .local v1, mac:[B
    array-length v3, v1

    array-length v4, p2

    add-int/2addr v3, v4

    new-array v2, v3, [B

    .line 227
    .local v2, ret:[B
    array-length v3, v1

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    array-length v3, v1

    array-length v4, p2

    invoke-static {p2, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    return-object v2
.end method

.method public static getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .registers 14
    .parameter "domain"
    .parameter "user"
    .parameter "password"
    .parameter "challenge"
    .parameter "clientChallenge"

    .prologue
    .line 148
    const/16 v6, 0x10

    :try_start_2
    new-array v1, v6, [B

    .line 149
    .local v1, hash:[B
    const/16 v6, 0x18

    new-array v5, v6, [B

    .line 151
    .local v5, response:[B
    new-instance v4, Ljcifs/util/MD4;

    invoke-direct {v4}, Ljcifs/util/MD4;-><init>()V

    .line 152
    .local v4, md4:Ljcifs/util/MD4;
    const-string v6, "UTF-16LE"

    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljcifs/util/MD4;->update([B)V

    .line 153
    new-instance v2, Ljcifs/util/HMACT64;

    invoke-virtual {v4}, Ljcifs/util/MD4;->digest()[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 154
    .local v2, hmac:Ljcifs/util/HMACT64;
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-16LE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljcifs/util/HMACT64;->update([B)V

    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-16LE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljcifs/util/HMACT64;->update([B)V

    .line 156
    new-instance v3, Ljcifs/util/HMACT64;

    invoke-virtual {v2}, Ljcifs/util/HMACT64;->digest()[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 157
    .end local v2           #hmac:Ljcifs/util/HMACT64;
    .local v3, hmac:Ljcifs/util/HMACT64;
    invoke-virtual {v3, p3}, Ljcifs/util/HMACT64;->update([B)V

    .line 158
    invoke-virtual {v3, p4}, Ljcifs/util/HMACT64;->update([B)V

    .line 159
    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-virtual {v3, v5, v6, v7}, Ljcifs/util/HMACT64;->digest([BII)I

    .line 160
    const/4 v6, 0x0

    const/16 v7, 0x10

    const/16 v8, 0x8

    invoke-static {p4, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_56} :catch_57

    .line 165
    .end local v1           #hash:[B
    .end local v3           #hmac:Ljcifs/util/HMACT64;
    .end local v4           #md4:Ljcifs/util/MD4;
    .end local v5           #response:[B
    :goto_56
    return-object v5

    .line 162
    :catch_57
    move-exception v0

    .line 163
    .local v0, ex:Ljava/lang/Exception;
    sget-object v6, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    sget v6, Ljcifs/util/LogStream;->level:I

    if-lez v6, :cond_63

    .line 164
    sget-object v6, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 165
    :cond_63
    const/4 v5, 0x0

    goto :goto_56
.end method

.method public static getLMv2Response([B[B[B)[B
    .registers 5
    .parameter "responseKeyLM"
    .parameter "serverChallenge"
    .parameter "clientChallenge"

    .prologue
    .line 236
    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p0, p1, p2, v0, v1}, Ljcifs/smb/NtlmPasswordAuthentication;->computeResponse([B[B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getNTLM2Response([B[B[B)[B
    .registers 13
    .parameter "nTOWFv1"
    .parameter "serverChallenge"
    .parameter "clientChallenge"

    .prologue
    const/16 v5, 0x8

    const/4 v9, 0x0

    .line 172
    new-array v4, v5, [B

    .line 176
    .local v4, sessionHash:[B
    :try_start_5
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 177
    .local v2, md5:Ljava/security/MessageDigest;
    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 178
    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-virtual {v2, p2, v5, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 179
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-static {v5, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1f
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_1f} :catch_30

    .line 186
    const/16 v5, 0x15

    new-array v1, v5, [B

    .line 187
    .local v1, key:[B
    const/16 v5, 0x10

    invoke-static {p0, v9, v1, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    const/16 v5, 0x18

    new-array v3, v5, [B

    .line 189
    .local v3, ntResponse:[B
    invoke-static {v1, v4, v3}, Ljcifs/smb/NtlmPasswordAuthentication;->E([B[B[B)V

    .line 191
    return-object v3

    .line 180
    .end local v1           #key:[B
    .end local v2           #md5:Ljava/security/MessageDigest;
    .end local v3           #ntResponse:[B
    :catch_30
    move-exception v0

    .line 181
    .local v0, gse:Ljava/security/GeneralSecurityException;
    sget-object v5, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    sget v5, Ljcifs/util/LogStream;->level:I

    if-lez v5, :cond_3c

    .line 182
    sget-object v5, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v5}, Ljava/security/GeneralSecurityException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 183
    :cond_3c
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "MD5"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static getNTLMResponse(Ljava/lang/String;[B)[B
    .registers 10
    .parameter "password"
    .parameter "challenge"

    .prologue
    .line 114
    const/4 v5, 0x0

    .line 115
    .local v5, uni:[B
    const/16 v6, 0x15

    new-array v2, v6, [B

    .line 116
    .local v2, p21:[B
    const/16 v6, 0x18

    new-array v3, v6, [B

    .line 119
    .local v3, p24:[B
    :try_start_9
    const-string v6, "UTF-16LE"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_e} :catch_21

    move-result-object v5

    .line 124
    :cond_f
    :goto_f
    new-instance v1, Ljcifs/util/MD4;

    invoke-direct {v1}, Ljcifs/util/MD4;-><init>()V

    .line 125
    .local v1, md4:Ljcifs/util/MD4;
    invoke-virtual {v1, v5}, Ljcifs/util/MD4;->update([B)V

    .line 127
    const/4 v6, 0x0

    const/16 v7, 0x10

    :try_start_1a
    invoke-virtual {v1, v2, v6, v7}, Ljcifs/util/MD4;->digest([BII)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_2e

    .line 132
    :cond_1d
    :goto_1d
    invoke-static {v2, p1, v3}, Ljcifs/smb/NtlmPasswordAuthentication;->E([B[B[B)V

    .line 133
    return-object v3

    .line 120
    .end local v1           #md4:Ljcifs/util/MD4;
    :catch_21
    move-exception v4

    .line 121
    .local v4, uee:Ljava/io/UnsupportedEncodingException;
    sget-object v6, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    sget v6, Ljcifs/util/LogStream;->level:I

    if-lez v6, :cond_f

    .line 122
    sget-object v6, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    invoke-virtual {v4, v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_f

    .line 128
    .end local v4           #uee:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #md4:Ljcifs/util/MD4;
    :catch_2e
    move-exception v0

    .line 129
    .local v0, ex:Ljava/lang/Exception;
    sget-object v6, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    sget v6, Ljcifs/util/LogStream;->level:I

    if-lez v6, :cond_1d

    .line 130
    sget-object v6, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1d
.end method

.method public static getNTLMv2Response([B[B[BJ[B)[B
    .registers 11
    .parameter "responseKeyNT"
    .parameter "serverChallenge"
    .parameter "clientChallenge"
    .parameter "nanos1601"
    .parameter "targetInfo"

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 249
    if-eqz p5, :cond_34

    array-length v0, p5

    .line 250
    .local v0, targetInfoLength:I
    :goto_6
    add-int/lit8 v3, v0, 0x1c

    add-int/lit8 v3, v3, 0x4

    new-array v1, v3, [B

    .line 252
    .local v1, temp:[B
    const/16 v3, 0x101

    invoke-static {v3, v1, v2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 253
    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 254
    invoke-static {p3, p4, v1, v4}, Ljcifs/util/Encdec;->enc_uint64le(J[BI)I

    .line 255
    const/16 v3, 0x10

    invoke-static {p2, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    const/16 v3, 0x18

    invoke-static {v2, v1, v3}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 257
    if-eqz p5, :cond_29

    .line 258
    const/16 v3, 0x1c

    invoke-static {p5, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    :cond_29
    add-int/lit8 v3, v0, 0x1c

    invoke-static {v2, v1, v3}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 261
    array-length v3, v1

    invoke-static {p0, p1, v1, v2, v3}, Ljcifs/smb/NtlmPasswordAuthentication;->computeResponse([B[B[BII)[B

    move-result-object v2

    return-object v2

    .end local v0           #targetInfoLength:I
    .end local v1           #temp:[B
    :cond_34
    move v0, v2

    .line 249
    goto :goto_6
.end method

.method public static getPreNTLMResponse(Ljava/lang/String;[B)[B
    .registers 12
    .parameter "password"
    .parameter "challenge"

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x0

    .line 90
    new-array v0, v9, [B

    .line 91
    .local v0, p14:[B
    const/16 v6, 0x15

    new-array v1, v6, [B

    .line 92
    .local v1, p21:[B
    const/16 v6, 0x18

    new-array v2, v6, [B

    .line 95
    .local v2, p24:[B
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljcifs/smb/ServerMessageBlock;->OEM_ENCODING:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_16} :catch_28

    move-result-object v3

    .line 99
    .local v3, passwordBytes:[B
    array-length v4, v3

    .line 102
    .local v4, passwordLength:I
    if-le v4, v9, :cond_1c

    .line 103
    const/16 v4, 0xe

    .line 105
    :cond_1c
    invoke-static {v3, v8, v0, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    sget-object v6, Ljcifs/smb/NtlmPasswordAuthentication;->S8:[B

    invoke-static {v0, v6, v1}, Ljcifs/smb/NtlmPasswordAuthentication;->E([B[B[B)V

    .line 107
    invoke-static {v1, p1, v2}, Ljcifs/smb/NtlmPasswordAuthentication;->E([B[B[B)V

    .line 108
    return-object v2

    .line 96
    .end local v3           #passwordBytes:[B
    .end local v4           #passwordLength:I
    :catch_28
    move-exception v5

    .line 97
    .local v5, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Try setting jcifs.encoding=US-ASCII"

    invoke-direct {v6, v7, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method static initDefaults()V
    .registers 2

    .prologue
    .line 80
    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 84
    :goto_4
    return-void

    .line 81
    :cond_5
    const-string v0, "jcifs.smb.client.domain"

    const-string v1, "?"

    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 82
    const-string v0, "jcifs.smb.client.username"

    const-string v1, "GUEST"

    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_USERNAME:Ljava/lang/String;

    .line 83
    const-string v0, "jcifs.smb.client.password"

    const-string v1, ""

    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_PASSWORD:Ljava/lang/String;

    goto :goto_4
.end method

.method public static nTOWFv1(Ljava/lang/String;)[B
    .registers 5
    .parameter "password"

    .prologue
    .line 196
    :try_start_0
    new-instance v0, Ljcifs/util/MD4;

    invoke-direct {v0}, Ljcifs/util/MD4;-><init>()V

    .line 197
    .local v0, md4:Ljcifs/util/MD4;
    const-string v2, "UTF-16LE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljcifs/util/MD4;->update([B)V

    .line 198
    invoke-virtual {v0}, Ljcifs/util/MD4;->digest()[B
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v2

    return-object v2

    .line 199
    .end local v0           #md4:Ljcifs/util/MD4;
    :catch_13
    move-exception v1

    .line 200
    .local v1, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static nTOWFv2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 8
    .parameter "domain"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 206
    :try_start_0
    new-instance v1, Ljcifs/util/MD4;

    invoke-direct {v1}, Ljcifs/util/MD4;-><init>()V

    .line 207
    .local v1, md4:Ljcifs/util/MD4;
    const-string v3, "UTF-16LE"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljcifs/util/MD4;->update([B)V

    .line 208
    new-instance v0, Ljcifs/util/HMACT64;

    invoke-virtual {v1}, Ljcifs/util/MD4;->digest()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 209
    .local v0, hmac:Ljcifs/util/HMACT64;
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-16LE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljcifs/util/HMACT64;->update([B)V

    .line 210
    const-string v3, "UTF-16LE"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljcifs/util/HMACT64;->update([B)V

    .line 211
    invoke-virtual {v0}, Ljcifs/util/HMACT64;->digest()[B
    :try_end_30
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_30} :catch_32

    move-result-object v3

    return-object v3

    .line 212
    .end local v0           #hmac:Ljcifs/util/HMACT64;
    .end local v1           #md4:Ljcifs/util/MD4;
    :catch_32
    move-exception v2

    .line 213
    .local v2, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 596
    new-array v0, v11, [B

    .line 598
    .local v0, b:[B
    if-nez p0, :cond_8

    .line 599
    const/4 v8, 0x0

    .line 626
    :goto_7
    return-object v8

    .line 602
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 603
    .local v5, len:I
    new-array v6, v5, [C

    .line 604
    .local v6, out:[C
    const/4 v7, 0x0

    .line 605
    .local v7, state:I
    const/4 v3, 0x0

    .local v3, j:I
    move v2, v3

    .local v2, i:I
    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    :goto_12
    if-ge v2, v5, :cond_50

    .line 606
    packed-switch v7, :pswitch_data_56

    move v3, v4

    .line 605
    .end local v4           #j:I
    .restart local v3       #j:I
    :goto_18
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_12

    .line 608
    :pswitch_1c
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 609
    .local v1, ch:C
    const/16 v8, 0x25

    if-ne v1, v8, :cond_27

    .line 610
    const/4 v7, 0x1

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_18

    .line 612
    .end local v3           #j:I
    .restart local v4       #j:I
    :cond_27
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    aput-char v1, v6, v4

    goto :goto_18

    .line 619
    .end local v1           #ch:C
    .end local v3           #j:I
    .restart local v4       #j:I
    :pswitch_2c
    add-int/lit8 v8, v2, 0x2

    invoke-virtual {p0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v10

    .line 620
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    new-instance v8, Ljava/lang/String;

    const-string v9, "ASCII"

    invoke-direct {v8, v0, v10, v11, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput-char v8, v6, v4

    .line 621
    add-int/lit8 v2, v2, 0x1

    .line 622
    const/4 v7, 0x0

    goto :goto_18

    .line 626
    .end local v3           #j:I
    .restart local v4       #j:I
    :cond_50
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6, v10, v4}, Ljava/lang/String;-><init>([CII)V

    goto :goto_7

    .line 606
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_2c
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 558
    instance-of v3, p1, Ljcifs/smb/NtlmPasswordAuthentication;

    if-eqz v3, :cond_5a

    move-object v0, p1

    .line 559
    check-cast v0, Ljcifs/smb/NtlmPasswordAuthentication;

    .line 560
    .local v0, ntlm:Ljcifs/smb/NtlmPasswordAuthentication;
    iget-object v3, v0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    iget-object v3, v0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 562
    iget-boolean v3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v3, :cond_4c

    iget-boolean v3, v0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v3, :cond_4c

    .line 563
    iget-object v3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->ansiHash:[B

    iget-object v4, v0, Ljcifs/smb/NtlmPasswordAuthentication;->ansiHash:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->unicodeHash:[B

    iget-object v4, v0, Ljcifs/smb/NtlmPasswordAuthentication;->unicodeHash:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 574
    .end local v0           #ntlm:Ljcifs/smb/NtlmPasswordAuthentication;
    :cond_49
    :goto_49
    return v1

    .restart local v0       #ntlm:Ljcifs/smb/NtlmPasswordAuthentication;
    :cond_4a
    move v1, v2

    .line 563
    goto :goto_49

    .line 569
    :cond_4c
    iget-boolean v3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-nez v3, :cond_5a

    iget-object v3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    iget-object v4, v0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    .end local v0           #ntlm:Ljcifs/smb/NtlmPasswordAuthentication;
    :cond_5a
    move v1, v2

    .line 574
    goto :goto_49
.end method

.method public getAnsiHash([B)[B
    .registers 6
    .parameter "challenge"

    .prologue
    .line 409
    iget-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v0, :cond_7

    .line 410
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->ansiHash:[B

    .line 428
    :goto_6
    return-object v0

    .line 412
    :cond_7
    sget v0, Ljcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    packed-switch v0, :pswitch_data_40

    .line 428
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getPreNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_6

    .line 415
    :pswitch_13
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getPreNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_6

    .line 417
    :pswitch_1a
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_6

    .line 421
    :pswitch_21
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    if-nez v0, :cond_32

    .line 422
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    .line 423
    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->RANDOM:Ljava/util/Random;

    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 425
    :cond_32
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    iget-object v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    iget-object v3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    invoke-static {v0, v1, v2, p1, v3}, Ljcifs/smb/NtlmPasswordAuthentication;->getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object v0

    goto :goto_6

    .line 412
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_13
        :pswitch_13
        :pswitch_1a
        :pswitch_21
        :pswitch_21
        :pswitch_21
    .end packed-switch
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 401
    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_31

    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    const/4 v0, 0x1

    .line 402
    .local v0, d:Z
    :goto_13
    if-eqz v0, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_30
    return-object v1

    .line 401
    .end local v0           #d:Z
    :cond_31
    const/4 v0, 0x0

    goto :goto_13

    .line 402
    .restart local v0       #d:Z
    :cond_33
    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    goto :goto_30
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSigningKey([B)[B
    .registers 7
    .parameter "challenge"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 462
    sget v1, Ljcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    packed-switch v1, :pswitch_data_24

    .line 478
    const/4 v0, 0x0

    :goto_7
    return-object v0

    .line 466
    :pswitch_8
    const/16 v1, 0x28

    new-array v0, v1, [B

    .line 467
    .local v0, signingKey:[B
    invoke-virtual {p0, p1, v0, v4}, Ljcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V

    .line 468
    invoke-virtual {p0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUnicodeHash([B)[B

    move-result-object v1

    const/16 v2, 0x10

    const/16 v3, 0x18

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    .line 476
    .end local v0           #signingKey:[B
    :pswitch_1b
    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, "NTLMv2 requires extended security (jcifs.smb.client.useExtendedSecurity must be true if jcifs.smb.lmCompatibility >= 3)"

    invoke-direct {v1, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public getUnicodeHash([B)[B
    .registers 3
    .parameter "challenge"

    .prologue
    .line 435
    iget-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v0, :cond_7

    .line 436
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->unicodeHash:[B

    .line 456
    :goto_6
    return-object v0

    .line 438
    :cond_7
    sget v0, Ljcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    packed-switch v0, :pswitch_data_1e

    .line 456
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_6

    .line 442
    :pswitch_13
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_6

    .line 454
    :pswitch_1a
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_6

    .line 438
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method getUserSessionKey([B[BI)V
    .registers 11
    .parameter "challenge"
    .parameter "dest"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 510
    iget-boolean v5, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v5, :cond_5

    .line 550
    :goto_4
    return-void

    .line 512
    :cond_5
    :try_start_5
    new-instance v2, Ljcifs/util/MD4;

    invoke-direct {v2}, Ljcifs/util/MD4;-><init>()V

    .line 513
    .local v2, md4:Ljcifs/util/MD4;
    iget-object v5, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    const-string v6, "UTF-16LE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljcifs/util/MD4;->update([B)V

    .line 514
    sget v5, Ljcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    packed-switch v5, :pswitch_data_9a

    .line 543
    invoke-virtual {v2}, Ljcifs/util/MD4;->digest()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljcifs/util/MD4;->update([B)V

    .line 544
    const/16 v5, 0x10

    invoke-virtual {v2, p2, p3, v5}, Ljcifs/util/MD4;->digest([BII)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_26} :catch_27

    goto :goto_4

    .line 547
    .end local v2           #md4:Ljcifs/util/MD4;
    :catch_27
    move-exception v0

    .line 548
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljcifs/smb/SmbException;

    const-string v6, ""

    invoke-direct {v5, v6, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 518
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #md4:Ljcifs/util/MD4;
    :pswitch_30
    :try_start_30
    invoke-virtual {v2}, Ljcifs/util/MD4;->digest()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljcifs/util/MD4;->update([B)V

    .line 519
    const/16 v5, 0x10

    invoke-virtual {v2, p2, p3, v5}, Ljcifs/util/MD4;->digest([BII)I

    goto :goto_4

    .line 524
    :pswitch_3d
    iget-object v5, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    if-nez v5, :cond_4e

    .line 525
    const/16 v5, 0x8

    new-array v5, v5, [B

    iput-object v5, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    .line 526
    sget-object v5, Ljcifs/smb/NtlmPasswordAuthentication;->RANDOM:Ljava/util/Random;

    iget-object v6, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextBytes([B)V

    .line 529
    :cond_4e
    new-instance v1, Ljcifs/util/HMACT64;

    invoke-virtual {v2}, Ljcifs/util/MD4;->digest()[B

    move-result-object v5

    invoke-direct {v1, v5}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 530
    .local v1, hmac:Ljcifs/util/HMACT64;
    iget-object v5, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-16LE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljcifs/util/HMACT64;->update([B)V

    .line 532
    iget-object v5, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-16LE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljcifs/util/HMACT64;->update([B)V

    .line 534
    invoke-virtual {v1}, Ljcifs/util/HMACT64;->digest()[B

    move-result-object v3

    .line 535
    .local v3, ntlmv2Hash:[B
    new-instance v1, Ljcifs/util/HMACT64;

    .end local v1           #hmac:Ljcifs/util/HMACT64;
    invoke-direct {v1, v3}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 536
    .restart local v1       #hmac:Ljcifs/util/HMACT64;
    invoke-virtual {v1, p1}, Ljcifs/util/HMACT64;->update([B)V

    .line 537
    iget-object v5, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    invoke-virtual {v1, v5}, Ljcifs/util/HMACT64;->update([B)V

    .line 538
    new-instance v4, Ljcifs/util/HMACT64;

    invoke-direct {v4, v3}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 539
    .local v4, userKey:Ljcifs/util/HMACT64;
    invoke-virtual {v1}, Ljcifs/util/HMACT64;->digest()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljcifs/util/HMACT64;->update([B)V

    .line 540
    const/16 v5, 0x10

    invoke-virtual {v4, p2, p3, v5}, Ljcifs/util/HMACT64;->digest([BII)I
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_97} :catch_27

    goto/16 :goto_4

    .line 514
    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
    .end packed-switch
.end method

.method public getUserSessionKey([B)[B
    .registers 5
    .parameter "challenge"

    .prologue
    .line 489
    iget-boolean v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v2, :cond_6

    const/4 v1, 0x0

    .line 497
    :cond_5
    :goto_5
    return-object v1

    .line 490
    :cond_6
    const/16 v2, 0x10

    new-array v1, v2, [B

    .line 492
    .local v1, key:[B
    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {p0, p1, v1, v2}, Ljcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_5

    .line 493
    :catch_f
    move-exception v0

    .line 494
    .local v0, ex:Ljava/lang/Exception;
    sget-object v2, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lez v2, :cond_5

    .line 495
    sget-object v2, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_5
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 582
    invoke-virtual {p0}, Ljcifs/smb/NtlmPasswordAuthentication;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 589
    invoke-virtual {p0}, Ljcifs/smb/NtlmPasswordAuthentication;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
