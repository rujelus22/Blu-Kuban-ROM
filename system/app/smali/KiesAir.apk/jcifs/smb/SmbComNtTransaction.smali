.class abstract Ljcifs/smb/SmbComNtTransaction;
.super Ljcifs/smb/SmbComTransaction;
.source "SmbComNtTransaction.java"


# static fields
.field private static final NTT_PRIMARY_SETUP_OFFSET:I = 0x45

.field private static final NTT_SECONDARY_PARAMETER_OFFSET:I = 0x33

.field static final NT_TRANSACT_QUERY_SECURITY_DESC:I = 0x6


# instance fields
.field function:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    .line 33
    const/16 v0, 0x45

    iput v0, p0, Ljcifs/smb/SmbComNtTransaction;->primarySetupOffset:I

    .line 34
    const/16 v0, 0x33

    iput v0, p0, Ljcifs/smb/SmbComNtTransaction;->secondaryParameterOffset:I

    .line 35
    return-void
.end method


# virtual methods
.method writeParameterWordsWireFormat([BI)I
    .registers 10
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/16 v6, -0x5f

    const/4 v3, 0x0

    .line 38
    move v1, p2

    .line 40
    .local v1, start:I
    iget-byte v2, p0, Ljcifs/smb/SmbComNtTransaction;->command:B

    if-eq v2, v6, :cond_81

    .line 41
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    iget-byte v2, p0, Ljcifs/smb/SmbComNtTransaction;->maxSetupCount:B

    aput-byte v2, p1, p2

    move p2, v0

    .line 45
    .end local v0           #dstIndex:I
    .restart local p2
    :goto_f
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #dstIndex:I
    aput-byte v3, p1, p2

    .line 46
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    aput-byte v3, p1, v0

    .line 47
    iget v2, p0, Ljcifs/smb/SmbComNtTransaction;->totalParameterCount:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    .line 48
    add-int/lit8 p2, p2, 0x4

    .line 49
    iget v2, p0, Ljcifs/smb/SmbComNtTransaction;->totalDataCount:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    .line 50
    add-int/lit8 p2, p2, 0x4

    .line 51
    iget-byte v2, p0, Ljcifs/smb/SmbComNtTransaction;->command:B

    if-eq v2, v6, :cond_3b

    .line 52
    iget v2, p0, Ljcifs/smb/SmbComNtTransaction;->maxParameterCount:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    .line 53
    add-int/lit8 p2, p2, 0x4

    .line 54
    iget v2, p0, Ljcifs/smb/SmbComNtTransaction;->maxDataCount:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    .line 55
    add-int/lit8 p2, p2, 0x4

    .line 57
    :cond_3b
    iget v2, p0, Ljcifs/smb/SmbComNtTransaction;->parameterCount:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    .line 58
    add-int/lit8 p2, p2, 0x4

    .line 59
    iget v2, p0, Ljcifs/smb/SmbComNtTransaction;->parameterCount:I

    if-nez v2, :cond_87

    move v2, v3

    :goto_48
    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    .line 60
    add-int/lit8 p2, p2, 0x4

    .line 61
    iget-byte v2, p0, Ljcifs/smb/SmbComNtTransaction;->command:B

    if-ne v2, v6, :cond_5a

    .line 62
    iget v2, p0, Ljcifs/smb/SmbComNtTransaction;->parameterDisplacement:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    .line 63
    add-int/lit8 p2, p2, 0x4

    .line 65
    :cond_5a
    iget v2, p0, Ljcifs/smb/SmbComNtTransaction;->dataCount:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    .line 66
    add-int/lit8 p2, p2, 0x4

    .line 67
    iget v2, p0, Ljcifs/smb/SmbComNtTransaction;->dataCount:I

    if-nez v2, :cond_8a

    move v2, v3

    :goto_67
    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    .line 68
    add-int/lit8 p2, p2, 0x4

    .line 69
    iget-byte v2, p0, Ljcifs/smb/SmbComNtTransaction;->command:B

    if-ne v2, v6, :cond_8d

    .line 70
    iget v2, p0, Ljcifs/smb/SmbComNtTransaction;->dataDisplacement:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    .line 71
    add-int/lit8 p2, p2, 0x4

    .line 72
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #dstIndex:I
    aput-byte v3, p1, p2

    move p2, v0

    .line 80
    .end local v0           #dstIndex:I
    .restart local p2
    :goto_7e
    sub-int v2, p2, v1

    return v2

    .line 43
    :cond_81
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #dstIndex:I
    aput-byte v3, p1, p2

    move p2, v0

    .end local v0           #dstIndex:I
    .restart local p2
    goto :goto_f

    .line 59
    :cond_87
    iget v2, p0, Ljcifs/smb/SmbComNtTransaction;->parameterOffset:I

    goto :goto_48

    .line 67
    :cond_8a
    iget v2, p0, Ljcifs/smb/SmbComNtTransaction;->dataOffset:I

    goto :goto_67

    .line 74
    :cond_8d
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #dstIndex:I
    iget v2, p0, Ljcifs/smb/SmbComNtTransaction;->setupCount:I

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    .line 75
    iget v2, p0, Ljcifs/smb/SmbComNtTransaction;->function:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComNtTransaction;->writeInt2(J[BI)V

    .line 76
    add-int/lit8 p2, v0, 0x2

    .line 77
    .end local v0           #dstIndex:I
    .restart local p2
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/SmbComNtTransaction;->writeSetupWireFormat([BI)I

    move-result v2

    add-int/2addr p2, v2

    goto :goto_7e
.end method
