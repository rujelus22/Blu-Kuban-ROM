.class Ljcifs/smb/Trans2FindFirst2Response;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "Trans2FindFirst2Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;
    }
.end annotation


# static fields
.field static final SMB_FILE_BOTH_DIRECTORY_INFO:I = 0x104

.field static final SMB_FILE_NAMES_INFO:I = 0x103

.field static final SMB_FIND_FILE_DIRECTORY_INFO:I = 0x101

.field static final SMB_FIND_FILE_FULL_DIRECTORY_INFO:I = 0x102

.field static final SMB_INFO_QUERY_EAS_FROM_LIST:I = 0x3

.field static final SMB_INFO_QUERY_EA_SIZE:I = 0x2

.field static final SMB_INFO_STANDARD:I = 0x1


# instance fields
.field eaErrorOffset:I

.field isEndOfSearch:Z

.field lastName:Ljava/lang/String;

.field lastNameBufferIndex:I

.field lastNameOffset:I

.field resumeKey:I

.field sid:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 98
    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    .line 99
    const/16 v0, 0x32

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 100
    const/4 v0, 0x1

    iput-byte v0, p0, Ljcifs/smb/SmbComTransactionResponse;->subCommand:B

    .line 101
    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .registers 9
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 165
    move v2, p2

    .line 168
    .local v2, start:I
    iget v3, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameOffset:I

    add-int/2addr v3, p2

    iput v3, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameBufferIndex:I

    .line 170
    iget v3, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    new-array v3, v3, [Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;

    iput-object v3, p0, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    .line 171
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    iget v3, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    if-lt v1, v3, :cond_14

    .line 216
    iget v3, p0, Ljcifs/smb/SmbComTransactionResponse;->dataCount:I

    return v3

    .line 172
    :cond_14
    iget-object v3, p0, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    new-instance v0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;

    invoke-direct {v0, p0}, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;-><init>(Ljcifs/smb/Trans2FindFirst2Response;)V

    .local v0, e:Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;
    aput-object v0, v3, v1

    .line 174
    invoke-static {p1, p2}, Ljcifs/smb/Trans2FindFirst2Response;->readInt4([BI)I

    move-result v3

    iput v3, v0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->nextEntryOffset:I

    .line 175
    add-int/lit8 v3, p2, 0x4

    invoke-static {p1, v3}, Ljcifs/smb/Trans2FindFirst2Response;->readInt4([BI)I

    move-result v3

    iput v3, v0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->fileIndex:I

    .line 176
    add-int/lit8 v3, p2, 0x8

    invoke-static {p1, v3}, Ljcifs/smb/Trans2FindFirst2Response;->readTime([BI)J

    move-result-wide v3

    iput-wide v3, v0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->creationTime:J

    .line 178
    add-int/lit8 v3, p2, 0x18

    invoke-static {p1, v3}, Ljcifs/smb/Trans2FindFirst2Response;->readTime([BI)J

    move-result-wide v3

    iput-wide v3, v0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->lastWriteTime:J

    .line 180
    add-int/lit8 v3, p2, 0x28

    invoke-static {p1, v3}, Ljcifs/smb/Trans2FindFirst2Response;->readInt8([BI)J

    move-result-wide v3

    iput-wide v3, v0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->endOfFile:J

    .line 182
    add-int/lit8 v3, p2, 0x38

    invoke-static {p1, v3}, Ljcifs/smb/Trans2FindFirst2Response;->readInt4([BI)I

    move-result v3

    iput v3, v0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->extFileAttributes:I

    .line 183
    add-int/lit8 v3, p2, 0x3c

    invoke-static {p1, v3}, Ljcifs/smb/Trans2FindFirst2Response;->readInt4([BI)I

    move-result v3

    iput v3, v0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->fileNameLength:I

    .line 191
    add-int/lit8 v3, p2, 0x5e

    iget v4, v0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->fileNameLength:I

    invoke-virtual {p0, p1, v3, v4}, Ljcifs/smb/Trans2FindFirst2Response;->readString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->filename:Ljava/lang/String;

    .line 201
    iget v3, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameBufferIndex:I

    if-lt v3, p2, :cond_74

    iget v3, v0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->nextEntryOffset:I

    if-eqz v3, :cond_6c

    .line 202
    iget v3, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameBufferIndex:I

    iget v4, v0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->nextEntryOffset:I

    add-int/2addr v4, p2

    if-ge v3, v4, :cond_74

    .line 203
    :cond_6c
    iget-object v3, v0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->filename:Ljava/lang/String;

    iput-object v3, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastName:Ljava/lang/String;

    .line 204
    iget v3, v0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->fileIndex:I

    iput v3, p0, Ljcifs/smb/Trans2FindFirst2Response;->resumeKey:I

    .line 207
    :cond_74
    iget v3, v0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->nextEntryOffset:I

    add-int/2addr p2, v3

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method readParametersWireFormat([BII)I
    .registers 7
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    const/4 v1, 0x1

    .line 147
    move v0, p2

    .line 149
    .local v0, start:I
    iget-byte v2, p0, Ljcifs/smb/SmbComTransactionResponse;->subCommand:B

    if-ne v2, v1, :cond_e

    .line 150
    invoke-static {p1, p2}, Ljcifs/smb/Trans2FindFirst2Response;->readInt2([BI)I

    move-result v2

    iput v2, p0, Ljcifs/smb/Trans2FindFirst2Response;->sid:I

    .line 151
    add-int/lit8 p2, p2, 0x2

    .line 153
    :cond_e
    invoke-static {p1, p2}, Ljcifs/smb/Trans2FindFirst2Response;->readInt2([BI)I

    move-result v2

    iput v2, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    .line 154
    add-int/lit8 p2, p2, 0x2

    .line 155
    aget-byte v2, p1, p2

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_33

    :goto_1c
    iput-boolean v1, p0, Ljcifs/smb/Trans2FindFirst2Response;->isEndOfSearch:Z

    .line 156
    add-int/lit8 p2, p2, 0x2

    .line 157
    invoke-static {p1, p2}, Ljcifs/smb/Trans2FindFirst2Response;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/Trans2FindFirst2Response;->eaErrorOffset:I

    .line 158
    add-int/lit8 p2, p2, 0x2

    .line 159
    invoke-static {p1, p2}, Ljcifs/smb/Trans2FindFirst2Response;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameOffset:I

    .line 160
    add-int/lit8 p2, p2, 0x2

    .line 162
    sub-int v1, p2, v0

    return v1

    .line 155
    :cond_33
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method readSetupWireFormat([BII)I
    .registers 5
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method readString([BII)Ljava/lang/String;
    .registers 9
    .parameter "src"
    .parameter "srcIndex"
    .parameter "len"

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, str:Ljava/lang/String;
    :try_start_1
    iget-boolean v3, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    if-eqz v3, :cond_e

    .line 108
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-16LE"

    invoke-direct {v1, p1, p2, p3, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v0           #str:Ljava/lang/String;
    .local v1, str:Ljava/lang/String;
    move-object v0, v1

    .line 132
    .end local v1           #str:Ljava/lang/String;
    .restart local v0       #str:Ljava/lang/String;
    :cond_d
    :goto_d
    return-object v0

    .line 123
    :cond_e
    if-lez p3, :cond_1a

    add-int v3, p2, p3

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    if-nez v3, :cond_1a

    .line 124
    add-int/lit8 p3, p3, -0x1

    .line 126
    :cond_1a
    new-instance v1, Ljava/lang/String;

    sget-object v3, Ljcifs/smb/ServerMessageBlock;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_21
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_21} :catch_23

    .end local v0           #str:Ljava/lang/String;
    .restart local v1       #str:Ljava/lang/String;
    move-object v0, v1

    .end local v1           #str:Ljava/lang/String;
    .restart local v0       #str:Ljava/lang/String;
    goto :goto_d

    .line 128
    :catch_23
    move-exception v2

    .line 129
    .local v2, uee:Ljava/io/UnsupportedEncodingException;
    sget-object v3, Ljcifs/smb/Trans2FindFirst2Response;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_d

    .line 130
    sget-object v3, Ljcifs/smb/Trans2FindFirst2Response;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 220
    iget-byte v1, p0, Ljcifs/smb/SmbComTransactionResponse;->subCommand:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_70

    .line 221
    const-string v0, "Trans2FindFirst2Response["

    .line 225
    .local v0, c:Ljava/lang/String;
    :goto_7
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 226
    const-string v3, ",sid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljcifs/smb/Trans2FindFirst2Response;->sid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 227
    const-string v3, ",searchCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 228
    const-string v3, ",isEndOfSearch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Ljcifs/smb/Trans2FindFirst2Response;->isEndOfSearch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 229
    const-string v3, ",eaErrorOffset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljcifs/smb/Trans2FindFirst2Response;->eaErrorOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 230
    const-string v3, ",lastNameOffset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 231
    const-string v3, ",lastName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 223
    .end local v0           #c:Ljava/lang/String;
    :cond_70
    const-string v0, "Trans2FindNext2Response["

    .restart local v0       #c:Ljava/lang/String;
    goto :goto_7
.end method

.method writeDataWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method writeSetupWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method
