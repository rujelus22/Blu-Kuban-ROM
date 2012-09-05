.class public Ljcifs/ntlmssp/Type1Message;
.super Ljcifs/ntlmssp/NtlmMessage;
.source "Type1Message.java"


# static fields
.field private static final DEFAULT_DOMAIN:Ljava/lang/String;

.field private static final DEFAULT_FLAGS:I

.field private static final DEFAULT_WORKSTATION:Ljava/lang/String;


# instance fields
.field private suppliedDomain:Ljava/lang/String;

.field private suppliedWorkstation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 46
    const-string v2, "jcifs.smb.client.useUnicode"

    invoke-static {v2, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_22

    :goto_9
    or-int/lit16 v1, v1, 0x200

    sput v1, Ljcifs/ntlmssp/Type1Message;->DEFAULT_FLAGS:I

    .line 49
    const-string v1, "jcifs.smb.client.domain"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljcifs/ntlmssp/Type1Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, defaultWorkstation:Ljava/lang/String;
    :try_start_17
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getLocalHost()Ljcifs/netbios/NbtAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;
    :try_end_1e
    .catch Ljava/net/UnknownHostException; {:try_start_17 .. :try_end_1e} :catch_24

    move-result-object v0

    .line 54
    :goto_1f
    sput-object v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_WORKSTATION:Ljava/lang/String;

    .line 55
    return-void

    .line 46
    .end local v0           #defaultWorkstation:Ljava/lang/String;
    :cond_22
    const/4 v1, 0x2

    goto :goto_9

    .line 53
    .restart local v0       #defaultWorkstation:Ljava/lang/String;
    :catch_24
    move-exception v1

    goto :goto_1f
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 62
    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultFlags()I

    move-result v0

    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Ljcifs/ntlmssp/Type1Message;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "flags"
    .parameter "suppliedDomain"
    .parameter "suppliedWorkstation"

    .prologue
    .line 73
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    .line 74
    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultFlags()I

    move-result v0

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type1Message;->setFlags(I)V

    .line 75
    invoke-virtual {p0, p2}, Ljcifs/ntlmssp/Type1Message;->setSuppliedDomain(Ljava/lang/String;)V

    .line 76
    if-nez p3, :cond_14

    .line 77
    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object p3

    .line 78
    :cond_14
    invoke-virtual {p0, p3}, Ljcifs/ntlmssp/Type1Message;->setSuppliedWorkstation(Ljava/lang/String;)V

    .line 79
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
    .line 87
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    .line 88
    invoke-direct {p0, p1}, Ljcifs/ntlmssp/Type1Message;->parse([B)V

    .line 89
    return-void
.end method

.method public static getDefaultDomain()Ljava/lang/String;
    .registers 1

    .prologue
    .line 193
    sget-object v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultFlags()I
    .registers 1

    .prologue
    .line 184
    sget v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_FLAGS:I

    return v0
.end method

.method public static getDefaultWorkstation()Ljava/lang/String;
    .registers 1

    .prologue
    .line 202
    sget-object v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_WORKSTATION:Ljava/lang/String;

    return-object v0
.end method

.method private parse([B)V
    .registers 11
    .parameter "material"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    .line 206
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-ge v2, v8, :cond_18

    .line 207
    aget-byte v6, p1, v2

    sget-object v7, Ljcifs/ntlmssp/Type1Message;->NTLMSSP_SIGNATURE:[B

    aget-byte v7, v7, v2

    if-eq v6, v7, :cond_15

    .line 208
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Not an NTLMSSP message."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 206
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 211
    :cond_18
    invoke-static {p1, v8}, Ljcifs/ntlmssp/Type1Message;->readULong([BI)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_27

    .line 212
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Not a Type 1 message."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 214
    :cond_27
    const/16 v6, 0xc

    invoke-static {p1, v6}, Ljcifs/ntlmssp/Type1Message;->readULong([BI)I

    move-result v1

    .line 215
    .local v1, flags:I
    const/4 v3, 0x0

    .line 216
    .local v3, suppliedDomain:Ljava/lang/String;
    and-int/lit16 v6, v1, 0x1000

    if-eqz v6, :cond_41

    .line 217
    const/16 v6, 0x10

    invoke-static {p1, v6}, Ljcifs/ntlmssp/Type1Message;->readSecurityBuffer([BI)[B

    move-result-object v0

    .line 218
    .local v0, domain:[B
    new-instance v3, Ljava/lang/String;

    .end local v3           #suppliedDomain:Ljava/lang/String;
    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 220
    .end local v0           #domain:[B
    .restart local v3       #suppliedDomain:Ljava/lang/String;
    :cond_41
    const/4 v4, 0x0

    .line 221
    .local v4, suppliedWorkstation:Ljava/lang/String;
    and-int/lit16 v6, v1, 0x2000

    if-eqz v6, :cond_55

    .line 222
    const/16 v6, 0x18

    invoke-static {p1, v6}, Ljcifs/ntlmssp/Type1Message;->readSecurityBuffer([BI)[B

    move-result-object v5

    .line 223
    .local v5, workstation:[B
    new-instance v4, Ljava/lang/String;

    .end local v4           #suppliedWorkstation:Ljava/lang/String;
    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 225
    .end local v5           #workstation:[B
    .restart local v4       #suppliedWorkstation:Ljava/lang/String;
    :cond_55
    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type1Message;->setFlags(I)V

    .line 226
    invoke-virtual {p0, v3}, Ljcifs/ntlmssp/Type1Message;->setSuppliedDomain(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0, v4}, Ljcifs/ntlmssp/Type1Message;->setSuppliedWorkstation(Ljava/lang/String;)V

    .line 228
    return-void
.end method


# virtual methods
.method public getSuppliedDomain()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Ljcifs/ntlmssp/Type1Message;->suppliedDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getSuppliedWorkstation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Ljcifs/ntlmssp/Type1Message;->suppliedWorkstation:Ljava/lang/String;

    return-object v0
.end method

.method public setSuppliedDomain(Ljava/lang/String;)V
    .registers 2
    .parameter "suppliedDomain"

    .prologue
    .line 106
    iput-object p1, p0, Ljcifs/ntlmssp/Type1Message;->suppliedDomain:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setSuppliedWorkstation(Ljava/lang/String;)V
    .registers 2
    .parameter "suppliedWorkstation"

    .prologue
    .line 124
    iput-object p1, p0, Ljcifs/ntlmssp/Type1Message;->suppliedWorkstation:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public toByteArray()[B
    .registers 13

    .prologue
    const/16 v8, 0x10

    .line 129
    :try_start_2
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getSuppliedDomain()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, suppliedDomain:Ljava/lang/String;
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getSuppliedWorkstation()Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, suppliedWorkstation:Ljava/lang/String;
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getFlags()I

    move-result v2

    .line 132
    .local v2, flags:I
    const/4 v3, 0x0

    .line 133
    .local v3, hostInfo:Z
    const/4 v9, 0x0

    new-array v0, v9, [B

    .line 134
    .local v0, domain:[B
    if-eqz v4, :cond_72

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_72

    .line 135
    const/4 v3, 0x1

    .line 136
    or-int/lit16 v2, v2, 0x1000

    .line 137
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 142
    :goto_29
    const/4 v9, 0x0

    new-array v7, v9, [B

    .line 143
    .local v7, workstation:[B
    if-eqz v5, :cond_75

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_75

    .line 145
    const/4 v3, 0x1

    .line 146
    or-int/lit16 v2, v2, 0x2000

    .line 147
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 154
    :goto_43
    if-eqz v3, :cond_4a

    array-length v8, v0

    add-int/lit8 v8, v8, 0x20

    array-length v9, v7

    add-int/2addr v8, v9

    :cond_4a
    new-array v6, v8, [B

    .line 156
    .local v6, type1:[B
    sget-object v8, Ljcifs/ntlmssp/Type1Message;->NTLMSSP_SIGNATURE:[B

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static {v8, v9, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    const/16 v8, 0x8

    const/4 v9, 0x1

    invoke-static {v6, v8, v9}, Ljcifs/ntlmssp/Type1Message;->writeULong([BII)V

    .line 158
    const/16 v8, 0xc

    invoke-static {v6, v8, v2}, Ljcifs/ntlmssp/Type1Message;->writeULong([BII)V

    .line 159
    if-eqz v3, :cond_71

    .line 160
    const/16 v8, 0x10

    const/16 v9, 0x20

    invoke-static {v6, v8, v9, v0}, Ljcifs/ntlmssp/Type1Message;->writeSecurityBuffer([BII[B)V

    .line 161
    const/16 v8, 0x18

    array-length v9, v0

    add-int/lit8 v9, v9, 0x20

    invoke-static {v6, v8, v9, v7}, Ljcifs/ntlmssp/Type1Message;->writeSecurityBuffer([BII[B)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_71} :catch_78

    .line 163
    :cond_71
    return-object v6

    .line 140
    .end local v6           #type1:[B
    .end local v7           #workstation:[B
    :cond_72
    and-int/lit16 v2, v2, -0x1001

    goto :goto_29

    .line 151
    .restart local v7       #workstation:[B
    :cond_75
    and-int/lit16 v2, v2, -0x2001

    goto :goto_43

    .line 164
    .end local v0           #domain:[B
    .end local v2           #flags:I
    .end local v3           #hostInfo:Z
    .end local v4           #suppliedDomain:Ljava/lang/String;
    .end local v5           #suppliedWorkstation:Ljava/lang/String;
    .end local v7           #workstation:[B
    :catch_78
    move-exception v1

    .line 165
    .local v1, ex:Ljava/io/IOException;
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 170
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getSuppliedDomain()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, suppliedDomain:Ljava/lang/String;
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getSuppliedWorkstation()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, suppliedWorkstation:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type1Message[suppliedDomain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_17

    const-string v0, "null"

    .end local v0           #suppliedDomain:Ljava/lang/String;
    :cond_17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",suppliedWorkstation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_25

    const-string v1, "null"

    .end local v1           #suppliedWorkstation:Ljava/lang/String;
    :cond_25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",flags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getFlags()I

    move-result v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
