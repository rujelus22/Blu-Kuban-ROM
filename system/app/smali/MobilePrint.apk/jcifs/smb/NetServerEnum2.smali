.class Ljcifs/smb/NetServerEnum2;
.super Ljcifs/smb/SmbComTransaction;
.source "NetServerEnum2.java"


# static fields
.field static final DESCR:[Ljava/lang/String; = null

.field static final SV_TYPE_ALL:I = -0x1

.field static final SV_TYPE_DOMAIN_ENUM:I = -0x80000000


# instance fields
.field domain:Ljava/lang/String;

.field lastName:Ljava/lang/String;

.field serverTypes:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 30
    const-string v2, "WrLehDz\u0000B16BBDz\u0000"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 31
    const-string v2, "WrLehDzz\u0000B16BBDz\u0000"

    aput-object v2, v0, v1

    .line 29
    sput-object v0, Ljcifs/smb/NetServerEnum2;->DESCR:[Ljava/lang/String;

    .line 24
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .parameter "domain"
    .parameter "serverTypes"

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/NetServerEnum2;->lastName:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Ljcifs/smb/NetServerEnum2;->domain:Ljava/lang/String;

    .line 39
    iput p2, p0, Ljcifs/smb/NetServerEnum2;->serverTypes:I

    .line 40
    const/16 v0, 0x25

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 41
    const/16 v0, 0x68

    iput-byte v0, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    .line 42
    const-string v0, "\\PIPE\\LANMAN"

    iput-object v0, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    .line 44
    const/16 v0, 0x8

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 46
    const/16 v0, 0x4000

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 47
    iput-byte v1, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    .line 48
    iput v1, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    .line 49
    const/16 v0, 0x1388

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->timeout:I

    .line 50
    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .registers 5
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method readParametersWireFormat([BII)I
    .registers 5
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method readSetupWireFormat([BII)I
    .registers 5
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method reset(ILjava/lang/String;)V
    .registers 3
    .parameter "key"
    .parameter "lastName"

    .prologue
    .line 53
    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->reset()V

    .line 54
    iput-object p2, p0, Ljcifs/smb/NetServerEnum2;->lastName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 101
    new-instance v1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "NetServerEnum2["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    const-string v2, ",name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    const-string v2, ",serverTypes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Ljcifs/smb/NetServerEnum2;->serverTypes:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3c

    .line 104
    const-string v0, "SV_TYPE_ALL"

    :goto_2a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 104
    :cond_3c
    const-string v0, "SV_TYPE_DOMAIN_ENUM"

    goto :goto_2a
.end method

.method writeDataWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .registers 11
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 61
    move v1, p2

    .line 63
    .local v1, start:I
    iget-byte v6, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    const/16 v7, 0x68

    if-ne v6, v7, :cond_56

    move v3, v4

    .line 66
    .local v3, which:I
    :goto_a
    :try_start_a
    sget-object v6, Ljcifs/smb/NetServerEnum2;->DESCR:[Ljava/lang/String;

    aget-object v6, v6, v3

    const-string v7, "ASCII"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_13} :catch_58

    move-result-object v0

    .line 71
    .local v0, descr:[B
    iget-byte v6, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    invoke-static {v6, v7, p1, p2}, Ljcifs/smb/NetServerEnum2;->writeInt2(J[BI)V

    .line 72
    add-int/lit8 p2, p2, 0x2

    .line 73
    array-length v6, v0

    invoke-static {v0, v4, p1, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    array-length v6, v0

    add-int/2addr p2, v6

    .line 75
    const-wide/16 v6, 0x1

    invoke-static {v6, v7, p1, p2}, Ljcifs/smb/NetServerEnum2;->writeInt2(J[BI)V

    .line 76
    add-int/lit8 p2, p2, 0x2

    .line 77
    iget v6, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    int-to-long v6, v6

    invoke-static {v6, v7, p1, p2}, Ljcifs/smb/NetServerEnum2;->writeInt2(J[BI)V

    .line 78
    add-int/lit8 p2, p2, 0x2

    .line 79
    iget v6, p0, Ljcifs/smb/NetServerEnum2;->serverTypes:I

    int-to-long v6, v6

    invoke-static {v6, v7, p1, p2}, Ljcifs/smb/NetServerEnum2;->writeInt4(J[BI)V

    .line 80
    add-int/lit8 p2, p2, 0x4

    .line 81
    iget-object v6, p0, Ljcifs/smb/NetServerEnum2;->domain:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, p1, p2, v4}, Ljcifs/smb/NetServerEnum2;->writeString(Ljava/lang/String;[BIZ)I

    move-result v6

    add-int/2addr p2, v6

    .line 82
    if-ne v3, v5, :cond_53

    .line 83
    iget-object v5, p0, Ljcifs/smb/NetServerEnum2;->lastName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, p1, p2, v4}, Ljcifs/smb/NetServerEnum2;->writeString(Ljava/lang/String;[BIZ)I

    move-result v4

    add-int/2addr p2, v4

    .line 86
    :cond_53
    sub-int v4, p2, v1

    .end local v0           #descr:[B
    :goto_55
    return v4

    .end local v3           #which:I
    :cond_56
    move v3, v5

    .line 63
    goto :goto_a

    .line 67
    .restart local v3       #which:I
    :catch_58
    move-exception v2

    .line 68
    .local v2, uee:Ljava/io/UnsupportedEncodingException;
    goto :goto_55
.end method

.method writeSetupWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method
