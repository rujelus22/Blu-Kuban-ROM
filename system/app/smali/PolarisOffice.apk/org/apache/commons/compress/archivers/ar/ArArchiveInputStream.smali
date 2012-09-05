.class public Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "ArArchiveInputStream.java"


# instance fields
.field private closed:Z

.field private currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

.field private entryOffset:J

.field private final input:Ljava/io/InputStream;

.field private namebuffer:[B

.field private offset:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 5
    .parameter "pInput"

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    .line 44
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 47
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    .line 62
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->closed:Z

    .line 64
    return-void
.end method

.method private asInt([B)I
    .registers 3
    .parameter "input"

    .prologue
    .line 196
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BI)I

    move-result v0

    return v0
.end method

.method private asInt([BI)I
    .registers 4
    .parameter "input"
    .parameter "base"

    .prologue
    .line 200
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private asLong([B)J
    .registers 4
    .parameter "input"

    .prologue
    .line 192
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getExtendedName(I)Ljava/lang/String;
    .registers 6
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    if-nez v1, :cond_c

    .line 179
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cannot process GNU long filename as no // record was found"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_c
    move v0, p1

    .local v0, i:I
    :goto_d
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_32

    .line 182
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    aget-byte v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2f

    .line 183
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_26

    .line 184
    add-int/lit8 v0, v0, -0x1

    .line 186
    :cond_26
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    sub-int v2, v0, p1

    invoke-static {v1, p1, v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 181
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 189
    :cond_32
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Failed to read entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static matches([BI)Z
    .registers 6
    .parameter "signature"
    .parameter "length"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 260
    const/16 v2, 0x8

    if-ge p1, v2, :cond_7

    .line 288
    :cond_6
    :goto_6
    return v0

    .line 263
    :cond_7
    aget-byte v2, p0, v0

    const/16 v3, 0x21

    if-ne v2, v3, :cond_6

    .line 266
    aget-byte v2, p0, v1

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_6

    .line 269
    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x61

    if-ne v2, v3, :cond_6

    .line 272
    const/4 v2, 0x3

    aget-byte v2, p0, v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_6

    .line 275
    const/4 v2, 0x4

    aget-byte v2, p0, v2

    const/16 v3, 0x63

    if-ne v2, v3, :cond_6

    .line 278
    const/4 v2, 0x5

    aget-byte v2, p0, v2

    const/16 v3, 0x68

    if-ne v2, v3, :cond_6

    .line 281
    const/4 v2, 0x6

    aget-byte v2, p0, v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_6

    .line 284
    const/4 v2, 0x7

    aget-byte v2, p0, v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_6

    move v0, v1

    .line 288
    goto :goto_6
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->closed:Z

    if-nez v0, :cond_c

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->closed:Z

    .line 221
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 223
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 224
    return-void
.end method

.method public getNextArEntry()Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    if-eqz v2, :cond_2c

    .line 75
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLength()J

    move-result-wide v6

    add-long v12, v4, v6

    .line 76
    .local v12, entryEnd:J
    :cond_14
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    cmp-long v2, v4, v12

    if-gez v2, :cond_27

    .line 77
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->read()I

    move-result v25

    .line 78
    .local v25, x:I
    const/4 v2, -0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_14

    .line 81
    const/4 v2, 0x0

    .line 167
    .end local v12           #entryEnd:J
    .end local v25           #x:I
    :goto_26
    return-object v2

    .line 84
    .restart local v12       #entryEnd:J
    :cond_27
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 87
    .end local v12           #entryEnd:J
    :cond_2c
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_98

    .line 88
    const-string v2, "!<arch>\n"

    invoke-static {v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    move-result-object v14

    .line 89
    .local v14, expected:[B
    array-length v2, v14

    new-array v0, v2, [B

    move-object/from16 v23, v0

    .line 90
    .local v23, realized:[B
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->read([B)I

    move-result v22

    .line 91
    .local v22, read:I
    array-length v2, v14

    move/from16 v0, v22

    if-eq v0, v2, :cond_6b

    .line 92
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "failed to read header. Occured at byte: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getBytesRead()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_6b
    const/16 v17, 0x0

    .local v17, i:I
    :goto_6d
    array-length v2, v14

    move/from16 v0, v17

    if-ge v0, v2, :cond_98

    .line 95
    aget-byte v2, v14, v17

    aget-byte v4, v23, v17

    if-eq v2, v4, :cond_95

    .line 96
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "invalid header "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static/range {v23 .. v23}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_95
    add-int/lit8 v17, v17, 0x1

    goto :goto_6d

    .line 101
    .end local v14           #expected:[B
    .end local v17           #i:I
    .end local v22           #read:I
    .end local v23           #realized:[B
    :cond_98
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    const-wide/16 v6, 0x2

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_ae

    .line 102
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->read()I

    move-result v2

    if-gez v2, :cond_ae

    .line 104
    const/4 v2, 0x0

    goto/16 :goto_26

    .line 108
    :cond_ae
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-nez v2, :cond_bb

    .line 109
    const/4 v2, 0x0

    goto/16 :goto_26

    .line 112
    :cond_bb
    const/16 v2, 0x10

    new-array v0, v2, [B

    move-object/from16 v20, v0

    .line 113
    .local v20, name:[B
    const/16 v2, 0xc

    new-array v0, v2, [B

    move-object/from16 v18, v0

    .line 114
    .local v18, lastmodified:[B
    const/4 v2, 0x6

    new-array v0, v2, [B

    move-object/from16 v24, v0

    .line 115
    .local v24, userid:[B
    const/4 v2, 0x6

    new-array v0, v2, [B

    move-object/from16 v16, v0

    .line 116
    .local v16, groupid:[B
    const/16 v2, 0x8

    new-array v15, v2, [B

    .line 117
    .local v15, filemode:[B
    const/16 v2, 0xa

    new-array v0, v2, [B

    move-object/from16 v19, v0

    .line 119
    .local v19, length:[B
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->read([B)I

    .line 120
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->read([B)I

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->read([B)I

    .line 122
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->read([B)I

    .line 123
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->read([B)I

    .line 124
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->read([B)I

    .line 127
    const-string v2, "`\n"

    invoke-static {v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    move-result-object v14

    .line 128
    .restart local v14       #expected:[B
    array-length v2, v14

    new-array v0, v2, [B

    move-object/from16 v23, v0

    .line 129
    .restart local v23       #realized:[B
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->read([B)I

    move-result v22

    .line 130
    .restart local v22       #read:I
    array-length v2, v14

    move/from16 v0, v22

    if-eq v0, v2, :cond_138

    .line 131
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "failed to read entry trailer. Occured at byte: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getBytesRead()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    :cond_138
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_13a
    array-length v2, v14

    move/from16 v0, v17

    if-ge v0, v2, :cond_165

    .line 134
    aget-byte v2, v14, v17

    aget-byte v4, v23, v17

    if-eq v2, v4, :cond_162

    .line 135
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "invalid entry trailer. not read the content? Occured at byte: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getBytesRead()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    :cond_162
    add-int/lit8 v17, v17, 0x1

    goto :goto_13a

    .line 140
    :cond_165
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    .line 147
    invoke-static/range {v20 .. v20}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, temp:Ljava/lang/String;
    const-string v2, "//"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1cf

    .line 150
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([B)I

    move-result v11

    .line 151
    .local v11, bufflen:I
    new-array v2, v11, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v11}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->read([BII)I

    move-result v22

    .line 153
    move/from16 v0, v22

    if-eq v0, v11, :cond_1bf

    .line 154
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Failed to read complete // record: expected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " read="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :cond_1bf
    new-instance v2, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    int-to-long v4, v11

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;-><init>(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 157
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getNextArEntry()Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    move-result-object v2

    goto/16 :goto_26

    .line 158
    .end local v11           #bufflen:I
    :cond_1cf
    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_219

    .line 159
    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 164
    :cond_1e2
    :goto_1e2
    new-instance v2, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asLong([B)J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([B)I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([B)I

    move-result v7

    const/16 v8, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BI)I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asLong([B)J

    move-result-wide v9

    invoke-direct/range {v2 .. v10}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;-><init>(Ljava/lang/String;JIIIJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    goto/16 :goto_26

    .line 160
    :cond_219
    const-string v2, "^/\\d+"

    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e2

    .line 161
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 162
    .local v21, offset:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getExtendedName(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1e2
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getNextArEntry()Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .registers 13
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    move v3, p3

    .line 233
    .local v3, toRead:I
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    if-eqz v4, :cond_21

    .line 234
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLength()J

    move-result-wide v6

    add-long v0, v4, v6

    .line 235
    .local v0, entryEnd:J
    if-lez p3, :cond_35

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_35

    .line 236
    int-to-long v4, p3

    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    sub-long v6, v0, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v3, v4

    .line 241
    .end local v0           #entryEnd:J
    :cond_21
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v4, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 242
    .local v2, ret:I
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->count(I)V

    .line 243
    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    if-lez v2, :cond_37

    move v4, v2

    :goto_2f
    int-to-long v7, v4

    add-long v4, v5, v7

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    .line 244
    .end local v2           #ret:I
    :goto_34
    return v2

    .line 238
    .restart local v0       #entryEnd:J
    :cond_35
    const/4 v2, -0x1

    goto :goto_34

    .line 243
    .end local v0           #entryEnd:J
    .restart local v2       #ret:I
    :cond_37
    const/4 v4, 0x0

    goto :goto_2f
.end method
