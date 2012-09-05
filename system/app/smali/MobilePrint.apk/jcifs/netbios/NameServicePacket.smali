.class abstract Ljcifs/netbios/NameServicePacket;
.super Ljava/lang/Object;
.source "NameServicePacket.java"


# static fields
.field static final A:I = 0x1

.field static final ACT_ERR:I = 0x6

.field static final ADDITIONAL_OFFSET:I = 0xa

.field static final ANSWER_OFFSET:I = 0x6

.field static final AUTHORITY_OFFSET:I = 0x8

.field static final CFT_ERR:I = 0x7

.field static final FMT_ERR:I = 0x1

.field static final HEADER_LENGTH:I = 0xc

.field static final IMP_ERR:I = 0x4

.field static final IN:I = 0x1

.field static final NB:I = 0x20

.field static final NBSTAT:I = 0x21

.field static final NBSTAT_IN:I = 0x210001

.field static final NB_IN:I = 0x200001

.field static final NS:I = 0x2

.field static final NULL:I = 0xa

.field static final OPCODE_OFFSET:I = 0x2

.field static final QUERY:I = 0x0

.field static final QUESTION_OFFSET:I = 0x4

.field static final RFS_ERR:I = 0x5

.field static final SRV_ERR:I = 0x2

.field static final WACK:I = 0x7


# instance fields
.field additionalCount:I

.field addr:Ljava/net/InetAddress;

.field addrEntry:[Ljcifs/netbios/NbtAddress;

.field addrIndex:I

.field answerCount:I

.field authorityCount:I

.field isAuthAnswer:Z

.field isBroadcast:Z

.field isRecurAvailable:Z

.field isRecurDesired:Z

.field isResponse:Z

.field isTruncated:Z

.field nameTrnId:I

.field opCode:I

.field questionClass:I

.field questionCount:I

.field questionName:Ljcifs/netbios/Name;

.field questionType:I

.field rDataLength:I

.field received:Z

.field recordClass:I

.field recordName:Ljcifs/netbios/Name;

.field recordType:I

.field resultCode:I

.field ttl:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isRecurDesired:Z

    .line 115
    iput-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 116
    iput v0, p0, Ljcifs/netbios/NameServicePacket;->questionCount:I

    .line 117
    iput v0, p0, Ljcifs/netbios/NameServicePacket;->questionClass:I

    .line 118
    return-void
.end method

.method static readInt2([BI)I
    .registers 4
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 68
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 69
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 68
    add-int/2addr v0, v1

    return v0
.end method

.method static readInt4([BI)I
    .registers 4
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 72
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 73
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 72
    add-int/2addr v0, v1

    .line 74
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 72
    add-int/2addr v0, v1

    .line 75
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 72
    add-int/2addr v0, v1

    return v0
.end method

.method static readNameTrnId([BI)I
    .registers 3
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 79
    invoke-static {p0, p1}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    return v0
.end method

.method static writeInt2(I[BI)V
    .registers 5
    .parameter "val"
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 58
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 59
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 60
    return-void
.end method

.method static writeInt4(I[BI)V
    .registers 5
    .parameter "val"
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 62
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 63
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 64
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #dstIndex:I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 65
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 66
    return-void
.end method


# virtual methods
.method abstract readBodyWireFormat([BI)I
.end method

.method readHeaderWireFormat([BI)I
    .registers 6
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 151
    invoke-static {p1, p2}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->nameTrnId:I

    .line 152
    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_84

    move v0, v1

    :goto_11
    iput-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isResponse:Z

    .line 153
    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x78

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->opCode:I

    .line 154
    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_86

    move v0, v1

    :goto_26
    iput-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isAuthAnswer:Z

    .line 155
    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_88

    move v0, v1

    :goto_31
    iput-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isTruncated:Z

    .line 156
    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_8a

    move v0, v1

    :goto_3c
    iput-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isRecurDesired:Z

    .line 158
    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_8c

    move v0, v1

    .line 157
    :goto_49
    iput-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isRecurAvailable:Z

    .line 159
    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_8e

    :goto_55
    iput-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 160
    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    .line 161
    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->questionCount:I

    .line 162
    add-int/lit8 v0, p2, 0x6

    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->answerCount:I

    .line 163
    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->authorityCount:I

    .line 164
    add-int/lit8 v0, p2, 0xa

    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->additionalCount:I

    .line 165
    const/16 v0, 0xc

    return v0

    :cond_84
    move v0, v2

    .line 152
    goto :goto_11

    :cond_86
    move v0, v2

    .line 154
    goto :goto_26

    :cond_88
    move v0, v2

    .line 155
    goto :goto_31

    :cond_8a
    move v0, v2

    .line 156
    goto :goto_3c

    :cond_8c
    move v0, v2

    .line 158
    goto :goto_49

    :cond_8e
    move v1, v2

    .line 159
    goto :goto_55
.end method

.method readQuestionSectionWireFormat([BI)I
    .registers 5
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 177
    move v0, p2

    .line 178
    .local v0, start:I
    iget-object v1, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    invoke-virtual {v1, p1, p2}, Ljcifs/netbios/Name;->readWireFormat([BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 179
    invoke-static {p1, p2}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/NameServicePacket;->questionType:I

    .line 180
    add-int/lit8 p2, p2, 0x2

    .line 181
    invoke-static {p1, p2}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/NameServicePacket;->questionClass:I

    .line 182
    add-int/lit8 p2, p2, 0x2

    .line 183
    sub-int v1, p2, v0

    return v1
.end method

.method abstract readRDataWireFormat([BI)I
.end method

.method readResourceRecordWireFormat([BI)I
    .registers 7
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 205
    move v1, p2

    .line 208
    .local v1, start:I
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xc0

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_43

    .line 209
    iget-object v2, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    iput-object v2, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    .line 210
    add-int/lit8 p2, p2, 0x2

    .line 214
    :goto_f
    invoke-static {p1, p2}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v2

    iput v2, p0, Ljcifs/netbios/NameServicePacket;->recordType:I

    .line 215
    add-int/lit8 p2, p2, 0x2

    .line 216
    invoke-static {p1, p2}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v2

    iput v2, p0, Ljcifs/netbios/NameServicePacket;->recordClass:I

    .line 217
    add-int/lit8 p2, p2, 0x2

    .line 218
    invoke-static {p1, p2}, Ljcifs/netbios/NameServicePacket;->readInt4([BI)I

    move-result v2

    iput v2, p0, Ljcifs/netbios/NameServicePacket;->ttl:I

    .line 219
    add-int/lit8 p2, p2, 0x4

    .line 220
    invoke-static {p1, p2}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v2

    iput v2, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    .line 221
    add-int/lit8 p2, p2, 0x2

    .line 223
    iget v2, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    div-int/lit8 v2, v2, 0x6

    new-array v2, v2, [Ljcifs/netbios/NbtAddress;

    iput-object v2, p0, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    .line 224
    iget v2, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    add-int v0, p2, v2

    .line 225
    .local v0, end:I
    const/4 v2, 0x0

    iput v2, p0, Ljcifs/netbios/NameServicePacket;->addrIndex:I

    :goto_3e
    if-lt p2, v0, :cond_4b

    .line 229
    sub-int v2, p2, v1

    return v2

    .line 212
    .end local v0           #end:I
    :cond_43
    iget-object v2, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    invoke-virtual {v2, p1, p2}, Ljcifs/netbios/Name;->readWireFormat([BI)I

    move-result v2

    add-int/2addr p2, v2

    goto :goto_f

    .line 226
    .restart local v0       #end:I
    :cond_4b
    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NameServicePacket;->readRDataWireFormat([BI)I

    move-result v2

    add-int/2addr p2, v2

    .line 225
    iget v2, p0, Ljcifs/netbios/NameServicePacket;->addrIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljcifs/netbios/NameServicePacket;->addrIndex:I

    goto :goto_3e
.end method

.method readWireFormat([BI)I
    .registers 5
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 127
    move v0, p2

    .line 128
    .local v0, start:I
    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NameServicePacket;->readHeaderWireFormat([BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 129
    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NameServicePacket;->readBodyWireFormat([BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 130
    sub-int v1, p2, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x4

    .line 245
    iget v4, p0, Ljcifs/netbios/NameServicePacket;->opCode:I

    sparse-switch v4, :sswitch_data_1ce

    .line 253
    iget v4, p0, Ljcifs/netbios/NameServicePacket;->opCode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, opCodeString:Ljava/lang/String;
    :goto_d
    iget v4, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    packed-switch v4, :pswitch_data_1d8

    .line 276
    :pswitch_12
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    invoke-static {v5, v9}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, resultCodeString:Ljava/lang/String;
    :goto_27
    iget v4, p0, Ljcifs/netbios/NameServicePacket;->questionType:I

    packed-switch v4, :pswitch_data_1ea

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Ljcifs/netbios/NameServicePacket;->questionType:I

    invoke-static {v5, v8}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, questionTypeString:Ljava/lang/String;
    :goto_41
    iget v4, p0, Ljcifs/netbios/NameServicePacket;->recordType:I

    sparse-switch v4, :sswitch_data_1f2

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Ljcifs/netbios/NameServicePacket;->recordType:I

    invoke-static {v5, v8}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, recordTypeString:Ljava/lang/String;
    :goto_5b
    new-instance v5, Ljava/lang/String;

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "nameTrnId="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Ljcifs/netbios/NameServicePacket;->nameTrnId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 313
    const-string v6, ",isResponse="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Ljcifs/netbios/NameServicePacket;->isResponse:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 314
    const-string v6, ",opCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 315
    const-string v6, ",isAuthAnswer="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Ljcifs/netbios/NameServicePacket;->isAuthAnswer:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 316
    const-string v6, ",isTruncated="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Ljcifs/netbios/NameServicePacket;->isTruncated:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 317
    const-string v6, ",isRecurAvailable="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Ljcifs/netbios/NameServicePacket;->isRecurAvailable:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 318
    const-string v6, ",isRecurDesired="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Ljcifs/netbios/NameServicePacket;->isRecurDesired:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 319
    const-string v6, ",isBroadcast="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 320
    const-string v6, ",resultCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 321
    const-string v6, ",questionCount="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Ljcifs/netbios/NameServicePacket;->questionCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 322
    const-string v6, ",answerCount="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Ljcifs/netbios/NameServicePacket;->answerCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 323
    const-string v6, ",authorityCount="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Ljcifs/netbios/NameServicePacket;->authorityCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 324
    const-string v6, ",additionalCount="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Ljcifs/netbios/NameServicePacket;->additionalCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 325
    const-string v6, ",questionName="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 326
    const-string v6, ",questionType="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 327
    const-string v6, ",questionClass="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v4, p0, Ljcifs/netbios/NameServicePacket;->questionClass:I

    if-ne v4, v9, :cond_1a0

    const-string v4, "IN"

    .line 328
    :goto_11a
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 329
    const-string v6, ",recordName="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 330
    const-string v6, ",recordType="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 331
    const-string v6, ",recordClass="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v4, p0, Ljcifs/netbios/NameServicePacket;->recordClass:I

    if-ne v4, v9, :cond_1b7

    const-string v4, "IN"

    .line 332
    :goto_140
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 333
    const-string v6, ",ttl="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Ljcifs/netbios/NameServicePacket;->ttl:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 334
    const-string v6, ",rDataLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 312
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 311
    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v5

    .line 247
    .end local v0           #opCodeString:Ljava/lang/String;
    .end local v1           #questionTypeString:Ljava/lang/String;
    .end local v2           #recordTypeString:Ljava/lang/String;
    .end local v3           #resultCodeString:Ljava/lang/String;
    :sswitch_164
    const-string v0, "QUERY"

    .line 248
    .restart local v0       #opCodeString:Ljava/lang/String;
    goto/16 :goto_d

    .line 250
    .end local v0           #opCodeString:Ljava/lang/String;
    :sswitch_168
    const-string v0, "WACK"

    .line 251
    .restart local v0       #opCodeString:Ljava/lang/String;
    goto/16 :goto_d

    .line 258
    :pswitch_16c
    const-string v3, "FMT_ERR"

    .line 259
    .restart local v3       #resultCodeString:Ljava/lang/String;
    goto/16 :goto_27

    .line 261
    .end local v3           #resultCodeString:Ljava/lang/String;
    :pswitch_170
    const-string v3, "SRV_ERR"

    .line 262
    .restart local v3       #resultCodeString:Ljava/lang/String;
    goto/16 :goto_27

    .line 264
    .end local v3           #resultCodeString:Ljava/lang/String;
    :pswitch_174
    const-string v3, "IMP_ERR"

    .line 265
    .restart local v3       #resultCodeString:Ljava/lang/String;
    goto/16 :goto_27

    .line 267
    .end local v3           #resultCodeString:Ljava/lang/String;
    :pswitch_178
    const-string v3, "RFS_ERR"

    .line 268
    .restart local v3       #resultCodeString:Ljava/lang/String;
    goto/16 :goto_27

    .line 270
    .end local v3           #resultCodeString:Ljava/lang/String;
    :pswitch_17c
    const-string v3, "ACT_ERR"

    .line 271
    .restart local v3       #resultCodeString:Ljava/lang/String;
    goto/16 :goto_27

    .line 273
    .end local v3           #resultCodeString:Ljava/lang/String;
    :pswitch_180
    const-string v3, "CFT_ERR"

    .line 274
    .restart local v3       #resultCodeString:Ljava/lang/String;
    goto/16 :goto_27

    .line 281
    :pswitch_184
    const-string v1, "NB"

    .line 282
    .restart local v1       #questionTypeString:Ljava/lang/String;
    goto/16 :goto_41

    .line 284
    .end local v1           #questionTypeString:Ljava/lang/String;
    :pswitch_188
    const-string v1, "NBSTAT"

    .line 285
    .restart local v1       #questionTypeString:Ljava/lang/String;
    goto/16 :goto_41

    .line 292
    :sswitch_18c
    const-string v2, "A"

    .line 293
    .restart local v2       #recordTypeString:Ljava/lang/String;
    goto/16 :goto_5b

    .line 295
    .end local v2           #recordTypeString:Ljava/lang/String;
    :sswitch_190
    const-string v2, "NS"

    .line 296
    .restart local v2       #recordTypeString:Ljava/lang/String;
    goto/16 :goto_5b

    .line 298
    .end local v2           #recordTypeString:Ljava/lang/String;
    :sswitch_194
    const-string v2, "NULL"

    .line 299
    .restart local v2       #recordTypeString:Ljava/lang/String;
    goto/16 :goto_5b

    .line 301
    .end local v2           #recordTypeString:Ljava/lang/String;
    :sswitch_198
    const-string v2, "NB"

    .line 302
    .restart local v2       #recordTypeString:Ljava/lang/String;
    goto/16 :goto_5b

    .line 304
    .end local v2           #recordTypeString:Ljava/lang/String;
    :sswitch_19c
    const-string v2, "NBSTAT"

    .line 305
    .restart local v2       #recordTypeString:Ljava/lang/String;
    goto/16 :goto_5b

    .line 328
    :cond_1a0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "0x"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Ljcifs/netbios/NameServicePacket;->questionClass:I

    invoke-static {v7, v8}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_11a

    .line 332
    :cond_1b7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "0x"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Ljcifs/netbios/NameServicePacket;->recordClass:I

    invoke-static {v7, v8}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_140

    .line 245
    :sswitch_data_1ce
    .sparse-switch
        0x0 -> :sswitch_164
        0x7 -> :sswitch_168
    .end sparse-switch

    .line 256
    :pswitch_data_1d8
    .packed-switch 0x1
        :pswitch_16c
        :pswitch_170
        :pswitch_12
        :pswitch_174
        :pswitch_178
        :pswitch_17c
        :pswitch_180
    .end packed-switch

    .line 279
    :pswitch_data_1ea
    .packed-switch 0x20
        :pswitch_184
        :pswitch_188
    .end packed-switch

    .line 290
    :sswitch_data_1f2
    .sparse-switch
        0x1 -> :sswitch_18c
        0x2 -> :sswitch_190
        0xa -> :sswitch_194
        0x20 -> :sswitch_198
        0x21 -> :sswitch_19c
    .end sparse-switch
.end method

.method abstract writeBodyWireFormat([BI)I
.end method

.method writeHeaderWireFormat([BI)I
    .registers 9
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/16 v2, 0x80

    const/4 v3, 0x0

    .line 134
    move v0, p2

    .line 135
    .local v0, start:I
    iget v1, p0, Ljcifs/netbios/NameServicePacket;->nameTrnId:I

    invoke-static {v1, p1, p2}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 136
    add-int/lit8 v4, p2, 0x2

    iget-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isResponse:Z

    if-eqz v1, :cond_62

    move v1, v2

    .line 137
    :goto_10
    iget v5, p0, Ljcifs/netbios/NameServicePacket;->opCode:I

    shl-int/lit8 v5, v5, 0x3

    and-int/lit8 v5, v5, 0x78

    add-int/2addr v5, v1

    .line 138
    iget-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isAuthAnswer:Z

    if-eqz v1, :cond_64

    const/4 v1, 0x4

    :goto_1c
    add-int/2addr v5, v1

    .line 139
    iget-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isTruncated:Z

    if-eqz v1, :cond_66

    const/4 v1, 0x2

    :goto_22
    add-int/2addr v5, v1

    .line 140
    iget-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isRecurDesired:Z

    if-eqz v1, :cond_68

    const/4 v1, 0x1

    :goto_28
    add-int/2addr v1, v5

    int-to-byte v1, v1

    .line 136
    aput-byte v1, p1, v4

    .line 141
    add-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x1

    iget-boolean v4, p0, Ljcifs/netbios/NameServicePacket;->isRecurAvailable:Z

    if-eqz v4, :cond_6a

    .line 142
    :goto_34
    iget-boolean v4, p0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    if-eqz v4, :cond_3a

    const/16 v3, 0x10

    :cond_3a
    add-int/2addr v2, v3

    .line 143
    iget v3, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    and-int/lit8 v3, v3, 0xf

    add-int/2addr v2, v3

    int-to-byte v2, v2

    .line 141
    aput-byte v2, p1, v1

    .line 144
    iget v1, p0, Ljcifs/netbios/NameServicePacket;->questionCount:I

    add-int/lit8 v2, v0, 0x4

    invoke-static {v1, p1, v2}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 145
    iget v1, p0, Ljcifs/netbios/NameServicePacket;->answerCount:I

    add-int/lit8 v2, v0, 0x6

    invoke-static {v1, p1, v2}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 146
    iget v1, p0, Ljcifs/netbios/NameServicePacket;->authorityCount:I

    add-int/lit8 v2, v0, 0x8

    invoke-static {v1, p1, v2}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 147
    iget v1, p0, Ljcifs/netbios/NameServicePacket;->additionalCount:I

    add-int/lit8 v2, v0, 0xa

    invoke-static {v1, p1, v2}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 148
    const/16 v1, 0xc

    return v1

    :cond_62
    move v1, v3

    .line 136
    goto :goto_10

    :cond_64
    move v1, v3

    .line 138
    goto :goto_1c

    :cond_66
    move v1, v3

    .line 139
    goto :goto_22

    :cond_68
    move v1, v3

    .line 140
    goto :goto_28

    :cond_6a
    move v2, v3

    .line 141
    goto :goto_34
.end method

.method writeQuestionSectionWireFormat([BI)I
    .registers 5
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 168
    move v0, p2

    .line 169
    .local v0, start:I
    iget-object v1, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    invoke-virtual {v1, p1, p2}, Ljcifs/netbios/Name;->writeWireFormat([BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 170
    iget v1, p0, Ljcifs/netbios/NameServicePacket;->questionType:I

    invoke-static {v1, p1, p2}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 171
    add-int/lit8 p2, p2, 0x2

    .line 172
    iget v1, p0, Ljcifs/netbios/NameServicePacket;->questionClass:I

    invoke-static {v1, p1, p2}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 173
    add-int/lit8 p2, p2, 0x2

    .line 174
    sub-int v1, p2, v0

    return v1
.end method

.method abstract writeRDataWireFormat([BI)I
.end method

.method writeResourceRecordWireFormat([BI)I
    .registers 7
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 186
    move v1, p2

    .line 187
    .local v1, start:I
    iget-object v2, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    iget-object v3, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    if-ne v2, v3, :cond_3d

    .line 188
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    const/16 v2, -0x40

    aput-byte v2, p1, p2

    .line 189
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    const/16 v2, 0xc

    aput-byte v2, p1, v0

    .line 193
    :goto_13
    iget v2, p0, Ljcifs/netbios/NameServicePacket;->recordType:I

    invoke-static {v2, p1, p2}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 194
    add-int/lit8 p2, p2, 0x2

    .line 195
    iget v2, p0, Ljcifs/netbios/NameServicePacket;->recordClass:I

    invoke-static {v2, p1, p2}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 196
    add-int/lit8 p2, p2, 0x2

    .line 197
    iget v2, p0, Ljcifs/netbios/NameServicePacket;->ttl:I

    invoke-static {v2, p1, p2}, Ljcifs/netbios/NameServicePacket;->writeInt4(I[BI)V

    .line 198
    add-int/lit8 p2, p2, 0x4

    .line 199
    add-int/lit8 v2, p2, 0x2

    invoke-virtual {p0, p1, v2}, Ljcifs/netbios/NameServicePacket;->writeRDataWireFormat([BI)I

    move-result v2

    iput v2, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    .line 200
    iget v2, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    invoke-static {v2, p1, p2}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 201
    iget v2, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    add-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    .line 202
    sub-int v2, p2, v1

    return v2

    .line 191
    :cond_3d
    iget-object v2, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    invoke-virtual {v2, p1, p2}, Ljcifs/netbios/Name;->writeWireFormat([BI)I

    move-result v2

    add-int/2addr p2, v2

    goto :goto_13
.end method

.method writeWireFormat([BI)I
    .registers 5
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 121
    move v0, p2

    .line 122
    .local v0, start:I
    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NameServicePacket;->writeHeaderWireFormat([BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 123
    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NameServicePacket;->writeBodyWireFormat([BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 124
    sub-int v1, p2, v0

    return v1
.end method
