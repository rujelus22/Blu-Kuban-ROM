.class public Ljcifs/ntlmssp/Type2Message;
.super Ljcifs/ntlmssp/NtlmMessage;
.source "Type2Message.java"


# static fields
.field private static final DEFAULT_DOMAIN:Ljava/lang/String;

.field private static final DEFAULT_FLAGS:I

.field private static final DEFAULT_TARGET_INFORMATION:[B


# instance fields
.field private challenge:[B

.field private context:[B

.field private target:Ljava/lang/String;

.field private targetInformation:[B


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 50
    const-string v7, "jcifs.smb.client.useUnicode"

    invoke-static {v7, v8}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_6d

    move v7, v8

    :goto_c
    or-int/lit16 v7, v7, 0x200

    sput v7, Ljcifs/ntlmssp/Type2Message;->DEFAULT_FLAGS:I

    .line 53
    const-string v7, "jcifs.smb.client.domain"

    const/4 v11, 0x0

    invoke-static {v7, v11}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Ljcifs/ntlmssp/Type2Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 54
    new-array v0, v10, [B

    .line 55
    .local v0, domain:[B
    sget-object v7, Ljcifs/ntlmssp/Type2Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    if-eqz v7, :cond_27

    .line 57
    :try_start_1f
    sget-object v7, Ljcifs/ntlmssp/Type2Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    const-string v11, "UTF-16LE"

    invoke-virtual {v7, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_26} :catch_77

    move-result-object v0

    .line 60
    :cond_27
    :goto_27
    array-length v1, v0

    .line 61
    .local v1, domainLength:I
    new-array v4, v10, [B

    .line 63
    .local v4, server:[B
    :try_start_2a
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getLocalHost()Ljcifs/netbios/NbtAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;
    :try_end_31
    .catch Ljava/net/UnknownHostException; {:try_start_2a .. :try_end_31} :catch_73

    move-result-object v2

    .line 64
    .local v2, host:Ljava/lang/String;
    if-eqz v2, :cond_3a

    .line 66
    :try_start_34
    const-string v7, "UTF-16LE"

    invoke-virtual {v2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_39} :catch_75
    .catch Ljava/net/UnknownHostException; {:try_start_34 .. :try_end_39} :catch_73

    move-result-object v4

    .line 70
    .end local v2           #host:Ljava/lang/String;
    :cond_3a
    :goto_3a
    array-length v5, v4

    .line 71
    .local v5, serverLength:I
    if-lez v1, :cond_6f

    add-int/lit8 v7, v1, 0x4

    move v11, v7

    :goto_40
    if-lez v5, :cond_71

    add-int/lit8 v7, v5, 0x4

    :goto_44
    add-int/2addr v7, v11

    add-int/lit8 v7, v7, 0x4

    new-array v6, v7, [B

    .line 73
    .local v6, targetInfo:[B
    const/4 v3, 0x0

    .line 74
    .local v3, offset:I
    if-lez v1, :cond_5b

    .line 75
    invoke-static {v6, v3, v9}, Ljcifs/ntlmssp/Type2Message;->writeUShort([BII)V

    .line 76
    add-int/lit8 v3, v3, 0x2

    .line 77
    invoke-static {v6, v3, v1}, Ljcifs/ntlmssp/Type2Message;->writeUShort([BII)V

    .line 78
    add-int/lit8 v3, v3, 0x2

    .line 79
    invoke-static {v0, v10, v6, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    add-int/lit8 v3, v1, 0x4

    .line 82
    :cond_5b
    if-lez v5, :cond_6a

    .line 83
    invoke-static {v6, v3, v8}, Ljcifs/ntlmssp/Type2Message;->writeUShort([BII)V

    .line 84
    add-int/lit8 v3, v3, 0x2

    .line 85
    invoke-static {v6, v3, v5}, Ljcifs/ntlmssp/Type2Message;->writeUShort([BII)V

    .line 86
    add-int/lit8 v3, v3, 0x2

    .line 87
    invoke-static {v4, v10, v6, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    :cond_6a
    sput-object v6, Ljcifs/ntlmssp/Type2Message;->DEFAULT_TARGET_INFORMATION:[B

    .line 90
    return-void

    .end local v0           #domain:[B
    .end local v1           #domainLength:I
    .end local v3           #offset:I
    .end local v4           #server:[B
    .end local v5           #serverLength:I
    .end local v6           #targetInfo:[B
    :cond_6d
    move v7, v9

    .line 50
    goto :goto_c

    .restart local v0       #domain:[B
    .restart local v1       #domainLength:I
    .restart local v4       #server:[B
    .restart local v5       #serverLength:I
    :cond_6f
    move v11, v10

    .line 71
    goto :goto_40

    :cond_71
    move v7, v10

    goto :goto_44

    .line 69
    .end local v5           #serverLength:I
    :catch_73
    move-exception v7

    goto :goto_3a

    .line 67
    .restart local v2       #host:Ljava/lang/String;
    :catch_75
    move-exception v7

    goto :goto_3a

    .line 58
    .end local v1           #domainLength:I
    .end local v2           #host:Ljava/lang/String;
    .end local v4           #server:[B
    :catch_77
    move-exception v7

    goto :goto_27
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-static {}, Ljcifs/ntlmssp/Type2Message;->getDefaultFlags()I

    move-result v0

    invoke-direct {p0, v0, v1, v1}, Ljcifs/ntlmssp/Type2Message;-><init>(I[BLjava/lang/String;)V

    .line 98
    return-void
.end method

.method public constructor <init>(I[BLjava/lang/String;)V
    .registers 5
    .parameter "flags"
    .parameter "challenge"
    .parameter "target"

    .prologue
    .line 130
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    .line 131
    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type2Message;->setFlags(I)V

    .line 132
    invoke-virtual {p0, p2}, Ljcifs/ntlmssp/Type2Message;->setChallenge([B)V

    .line 133
    invoke-virtual {p0, p3}, Ljcifs/ntlmssp/Type2Message;->setTarget(Ljava/lang/String;)V

    .line 134
    if-eqz p3, :cond_15

    invoke-static {}, Ljcifs/ntlmssp/Type2Message;->getDefaultTargetInformation()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type2Message;->setTargetInformation([B)V

    .line 135
    :cond_15
    return-void
.end method

.method public constructor <init>(Ljcifs/ntlmssp/Type1Message;)V
    .registers 3
    .parameter "type1"

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, v0, v0}, Ljcifs/ntlmssp/Type2Message;-><init>(Ljcifs/ntlmssp/Type1Message;[BLjava/lang/String;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljcifs/ntlmssp/Type1Message;[BLjava/lang/String;)V
    .registers 6
    .parameter "type1"
    .parameter "challenge"
    .parameter "target"

    .prologue
    .line 118
    invoke-static {p1}, Ljcifs/ntlmssp/Type2Message;->getDefaultFlags(Ljcifs/ntlmssp/Type1Message;)I

    move-result v0

    if-eqz p1, :cond_13

    if-nez p3, :cond_13

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljcifs/ntlmssp/Type1Message;->getFlag(I)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Ljcifs/ntlmssp/Type2Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object p3

    .end local p3
    :cond_13
    invoke-direct {p0, v0, p2, p3}, Ljcifs/ntlmssp/Type2Message;-><init>(I[BLjava/lang/String;)V

    .line 121
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2
    .parameter "material"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    .line 144
    invoke-direct {p0, p1}, Ljcifs/ntlmssp/Type2Message;->parse([B)V

    .line 145
    return-void
.end method

.method public static getDefaultDomain()Ljava/lang/String;
    .registers 1

    .prologue
    .line 324
    sget-object v0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultFlags()I
    .registers 1

    .prologue
    .line 294
    sget v0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_FLAGS:I

    return v0
.end method

.method public static getDefaultFlags(Ljcifs/ntlmssp/Type1Message;)I
    .registers 5
    .parameter "type1"

    .prologue
    .line 304
    if-nez p0, :cond_5

    sget v1, Ljcifs/ntlmssp/Type2Message;->DEFAULT_FLAGS:I

    .line 315
    :cond_4
    :goto_4
    return v1

    .line 305
    :cond_5
    const/16 v1, 0x200

    .line 306
    .local v1, flags:I
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getFlags()I

    move-result v2

    .line 307
    .local v2, type1Flags:I
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_20

    const/4 v3, 0x1

    :goto_10
    or-int/2addr v1, v3

    .line 309
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_4

    .line 310
    invoke-static {}, Ljcifs/ntlmssp/Type2Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, domain:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 312
    const v3, 0x10004

    or-int/2addr v1, v3

    goto :goto_4

    .line 307
    .end local v0           #domain:Ljava/lang/String;
    :cond_20
    const/4 v3, 0x2

    goto :goto_10
.end method

.method public static getDefaultTargetInformation()[B
    .registers 1

    .prologue
    .line 328
    sget-object v0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_TARGET_INFORMATION:[B

    return-object v0
.end method

.method private parse([B)V
    .registers 15
    .parameter "material"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x28

    const/16 v10, 0x20

    const/16 v9, 0x8

    .line 332
    const/4 v4, 0x0

    .local v4, i:I
    :goto_8
    if-ge v4, v9, :cond_1d

    .line 333
    aget-byte v7, p1, v4

    sget-object v8, Ljcifs/ntlmssp/Type2Message;->NTLMSSP_SIGNATURE:[B

    aget-byte v8, v8, v4

    if-eq v7, v8, :cond_1a

    .line 334
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Not an NTLMSSP message."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 332
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 337
    :cond_1d
    invoke-static {p1, v9}, Ljcifs/ntlmssp/Type2Message;->readULong([BI)I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2c

    .line 338
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Not a Type 2 message."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 340
    :cond_2c
    const/16 v7, 0x14

    invoke-static {p1, v7}, Ljcifs/ntlmssp/Type2Message;->readULong([BI)I

    move-result v3

    .line 341
    .local v3, flags:I
    invoke-virtual {p0, v3}, Ljcifs/ntlmssp/Type2Message;->setFlags(I)V

    .line 342
    const/4 v6, 0x0

    .line 343
    .local v6, target:Ljava/lang/String;
    const/16 v7, 0xc

    invoke-static {p1, v7}, Ljcifs/ntlmssp/Type2Message;->readSecurityBuffer([BI)[B

    move-result-object v0

    .line 344
    .local v0, bytes:[B
    array-length v7, v0

    if-eqz v7, :cond_4a

    .line 345
    new-instance v6, Ljava/lang/String;

    .end local v6           #target:Ljava/lang/String;
    and-int/lit8 v7, v3, 0x1

    if-eqz v7, :cond_6b

    const-string v7, "UTF-16LE"

    :goto_47
    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 349
    .restart local v6       #target:Ljava/lang/String;
    :cond_4a
    invoke-virtual {p0, v6}, Ljcifs/ntlmssp/Type2Message;->setTarget(Ljava/lang/String;)V

    .line 350
    const/16 v4, 0x18

    :goto_4f
    if-ge v4, v10, :cond_5f

    .line 351
    aget-byte v7, p1, v4

    if-eqz v7, :cond_70

    .line 352
    new-array v1, v9, [B

    .line 353
    .local v1, challenge:[B
    const/16 v7, 0x18

    invoke-static {p1, v7, v1, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type2Message;->setChallenge([B)V

    .line 358
    .end local v1           #challenge:[B
    :cond_5f
    const/16 v7, 0x10

    invoke-static {p1, v7}, Ljcifs/ntlmssp/Type2Message;->readULong([BI)I

    move-result v5

    .line 359
    .local v5, offset:I
    if-eq v5, v10, :cond_6a

    array-length v7, p1

    if-ne v7, v10, :cond_73

    .line 371
    :cond_6a
    :goto_6a
    return-void

    .line 345
    .end local v5           #offset:I
    .end local v6           #target:Ljava/lang/String;
    :cond_6b
    invoke-static {}, Ljcifs/ntlmssp/Type2Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v7

    goto :goto_47

    .line 350
    .restart local v6       #target:Ljava/lang/String;
    :cond_70
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 360
    .restart local v5       #offset:I
    :cond_73
    const/16 v4, 0x20

    :goto_75
    if-ge v4, v11, :cond_83

    .line 361
    aget-byte v7, p1, v4

    if-eqz v7, :cond_93

    .line 362
    new-array v2, v9, [B

    .line 363
    .local v2, context:[B
    invoke-static {p1, v10, v2, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    invoke-virtual {p0, v2}, Ljcifs/ntlmssp/Type2Message;->setContext([B)V

    .line 368
    .end local v2           #context:[B
    :cond_83
    if-eq v5, v11, :cond_6a

    array-length v7, p1

    if-eq v7, v11, :cond_6a

    .line 369
    invoke-static {p1, v11}, Ljcifs/ntlmssp/Type2Message;->readSecurityBuffer([BI)[B

    move-result-object v0

    .line 370
    array-length v7, v0

    if-eqz v7, :cond_6a

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type2Message;->setTargetInformation([B)V

    goto :goto_6a

    .line 360
    :cond_93
    add-int/lit8 v4, v4, 0x1

    goto :goto_75
.end method


# virtual methods
.method public getChallenge()[B
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Ljcifs/ntlmssp/Type2Message;->challenge:[B

    return-object v0
.end method

.method public getContext()[B
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Ljcifs/ntlmssp/Type2Message;->context:[B

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Ljcifs/ntlmssp/Type2Message;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetInformation()[B
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Ljcifs/ntlmssp/Type2Message;->targetInformation:[B

    return-object v0
.end method

.method public setChallenge([B)V
    .registers 2
    .parameter "challenge"

    .prologue
    .line 162
    iput-object p1, p0, Ljcifs/ntlmssp/Type2Message;->challenge:[B

    .line 163
    return-void
.end method

.method public setContext([B)V
    .registers 2
    .parameter "context"

    .prologue
    .line 223
    iput-object p1, p0, Ljcifs/ntlmssp/Type2Message;->context:[B

    .line 224
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .registers 2
    .parameter "target"

    .prologue
    .line 180
    iput-object p1, p0, Ljcifs/ntlmssp/Type2Message;->target:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setTargetInformation([B)V
    .registers 2
    .parameter "targetInformation"

    .prologue
    .line 202
    iput-object p1, p0, Ljcifs/ntlmssp/Type2Message;->targetInformation:[B

    .line 203
    return-void
.end method

.method public toByteArray()[B
    .registers 14

    .prologue
    const/4 v9, 0x0

    .line 228
    :try_start_1
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTarget()Ljava/lang/String;

    move-result-object v7

    .line 229
    .local v7, targetName:Ljava/lang/String;
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v0

    .line 230
    .local v0, challenge:[B
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getContext()[B

    move-result-object v1

    .line 231
    .local v1, context:[B
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTargetInformation()[B

    move-result-object v6

    .line 232
    .local v6, targetInformation:[B
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getFlags()I

    move-result v4

    .line 233
    .local v4, flags:I
    const/4 v10, 0x0

    new-array v5, v10, [B

    .line 234
    .local v5, target:[B
    const/high16 v10, 0x7

    and-int/2addr v10, v4

    if-eqz v10, :cond_2f

    .line 237
    if-eqz v7, :cond_90

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_90

    .line 238
    and-int/lit8 v10, v4, 0x1

    if-eqz v10, :cond_83

    const-string v10, "UTF-16LE"

    invoke-virtual {v7, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 247
    :cond_2f
    :goto_2f
    if-eqz v6, :cond_3a

    .line 248
    const/high16 v10, 0x80

    or-int/2addr v4, v10

    .line 250
    if-nez v1, :cond_3a

    const/16 v10, 0x8

    new-array v1, v10, [B

    .line 252
    :cond_3a
    const/16 v2, 0x20

    .line 253
    .local v2, data:I
    if-eqz v1, :cond_40

    add-int/lit8 v2, v2, 0x8

    .line 254
    :cond_40
    if-eqz v6, :cond_44

    add-int/lit8 v2, v2, 0x8

    .line 255
    :cond_44
    array-length v10, v5

    add-int/2addr v10, v2

    if-eqz v6, :cond_49

    array-length v9, v6

    :cond_49
    add-int/2addr v9, v10

    new-array v8, v9, [B

    .line 257
    .local v8, type2:[B
    sget-object v9, Ljcifs/ntlmssp/Type2Message;->NTLMSSP_SIGNATURE:[B

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static {v9, v10, v8, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    const/16 v9, 0x8

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Ljcifs/ntlmssp/Type2Message;->writeULong([BII)V

    .line 259
    const/16 v9, 0xc

    invoke-static {v8, v9, v2, v5}, Ljcifs/ntlmssp/Type2Message;->writeSecurityBuffer([BII[B)V

    .line 260
    const/16 v9, 0x14

    invoke-static {v8, v9, v4}, Ljcifs/ntlmssp/Type2Message;->writeULong([BII)V

    .line 261
    if-eqz v0, :cond_95

    .end local v0           #challenge:[B
    :goto_67
    const/4 v9, 0x0

    const/16 v10, 0x18

    const/16 v11, 0x8

    invoke-static {v0, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    if-eqz v1, :cond_79

    const/4 v9, 0x0

    const/16 v10, 0x20

    const/16 v11, 0x8

    invoke-static {v1, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    :cond_79
    if-eqz v6, :cond_82

    .line 265
    const/16 v9, 0x28

    array-length v10, v5

    add-int/2addr v10, v2

    invoke-static {v8, v9, v10, v6}, Ljcifs/ntlmssp/Type2Message;->writeSecurityBuffer([BII[B)V

    .line 268
    :cond_82
    return-object v8

    .line 238
    .end local v2           #data:I
    .end local v8           #type2:[B
    .restart local v0       #challenge:[B
    :cond_83
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljcifs/ntlmssp/Type2Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    goto :goto_2f

    .line 242
    :cond_90
    const v10, -0x70001

    and-int/2addr v4, v10

    goto :goto_2f

    .line 261
    .restart local v2       #data:I
    .restart local v8       #type2:[B
    :cond_95
    const/16 v9, 0x8

    new-array v0, v9, [B
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_99} :catch_9a

    goto :goto_67

    .line 269
    .end local v0           #challenge:[B
    .end local v1           #context:[B
    .end local v2           #data:I
    .end local v4           #flags:I
    .end local v5           #target:[B
    .end local v6           #targetInformation:[B
    .end local v7           #targetName:Ljava/lang/String;
    .end local v8           #type2:[B
    :catch_9a
    move-exception v3

    .line 270
    .local v3, ex:Ljava/io/IOException;
    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 275
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTarget()Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, target:Ljava/lang/String;
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v0

    .line 277
    .local v0, challenge:[B
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getContext()[B

    move-result-object v1

    .line 278
    .local v1, context:[B
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTargetInformation()[B

    move-result-object v3

    .line 280
    .local v3, targetInformation:[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type2Message[target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",challenge="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_68

    const-string v4, "null"

    :goto_29
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",context="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_83

    const-string v4, "null"

    :goto_37
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",targetInformation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v3, :cond_9e

    const-string v4, "null"

    :goto_45
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",flags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getFlags()I

    move-result v5

    const/16 v6, 0x8

    invoke-static {v5, v6}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " bytes>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_29

    :cond_83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " bytes>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_37

    :cond_9e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " bytes>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_45
.end method
