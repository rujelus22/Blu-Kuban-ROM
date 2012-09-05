.class public Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "TarArchiveInputStream.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final SMALL_BUFFER_SIZE:I = 0x100


# instance fields
.field protected final buffer:Lorg/apache/commons/compress/archivers/tar/TarBuffer;

.field private currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

.field private entryOffset:J

.field private entrySize:J

.field private hasHitEOF:Z

.field private readBuf:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .parameter "is"

    .prologue
    .line 62
    const/16 v0, 0x2800

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .parameter "is"
    .parameter "blockSize"

    .prologue
    .line 71
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .registers 5
    .parameter "is"
    .parameter "blockSize"
    .parameter "recordSize"

    .prologue
    .line 80
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    .line 81
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;-><init>(Ljava/io/InputStream;II)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->buffer:Lorg/apache/commons/compress/archivers/tar/TarBuffer;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readBuf:[B

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->hasHitEOF:Z

    .line 84
    return-void
.end method

.method public static matches([BI)Z
    .registers 8
    .parameter "signature"
    .parameter "length"

    .prologue
    const/16 v5, 0x101

    const/4 v4, 0x6

    const/4 v0, 0x1

    const/16 v3, 0x107

    const/4 v2, 0x2

    .line 414
    const/16 v1, 0x109

    if-ge p1, v1, :cond_d

    .line 415
    const/4 v0, 0x0

    .line 448
    :cond_c
    :goto_c
    return v0

    .line 418
    :cond_d
    const-string v1, "ustar\u0000"

    invoke-static {v1, p0, v5, v4}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "00"

    invoke-static {v1, p0, v3, v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v1

    if-nez v1, :cond_c

    .line 426
    :cond_1d
    const-string v1, "ustar "

    invoke-static {v1, p0, v5, v4}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, " \u0000"

    invoke-static {v1, p0, v3, v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "0\u0000"

    invoke-static {v1, p0, v3, v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v1

    if-nez v1, :cond_c

    .line 440
    :cond_35
    const-string v1, "ustar\u0000"

    invoke-static {v1, p0, v5, v4}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v1, "\u0000\u0000"

    invoke-static {v1, p0, v3, v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v1

    if-nez v1, :cond_c

    .line 448
    :cond_45
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private paxHeaders()V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 235
    .local v3, br:Ljava/io/BufferedReader;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 239
    .local v9, headers:Ljava/util/Map;
    :cond_19
    const/4 v12, 0x0

    .line 240
    .local v12, len:I
    const/4 v13, 0x0

    .line 241
    .local v13, read:I
    :goto_1b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v5

    .local v5, ch:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_95

    .line 242
    add-int/lit8 v13, v13, 0x1

    .line 243
    const/16 v17, 0x20

    move/from16 v0, v17

    if-ne v5, v0, :cond_de

    .line 245
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 246
    .local v14, sb:Ljava/lang/StringBuffer;
    :goto_32
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v5

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_95

    .line 247
    add-int/lit8 v13, v13, 0x1

    .line 248
    const/16 v17, 0x3d

    move/from16 v0, v17

    if-ne v5, v0, :cond_d4

    .line 249
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 251
    .local v11, keyword:Ljava/lang/String;
    sub-int v17, v12, v13

    move/from16 v0, v17

    new-array v4, v0, [C

    .line 252
    .local v4, cbuf:[C
    invoke-virtual {v3, v4}, Ljava/io/BufferedReader;->read([C)I

    move-result v7

    .line 253
    .local v7, got:I
    sub-int v17, v12, v13

    move/from16 v0, v17

    if-eq v7, v0, :cond_7f

    .line 254
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v19, "Failed to read Paxheader. Expected "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    sub-int v19, v12, v13

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, " chars, read "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 256
    :cond_7f
    new-instance v16, Ljava/lang/String;

    const/16 v17, 0x0

    sub-int v18, v12, v13

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 257
    .local v16, value:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v9, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .end local v4           #cbuf:[C
    .end local v7           #got:I
    .end local v11           #keyword:Ljava/lang/String;
    .end local v14           #sb:Ljava/lang/StringBuffer;
    .end local v16           #value:Ljava/lang/String;
    :cond_95
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_19

    .line 271
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 281
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 282
    .local v8, hdrs:Ljava/util/Iterator;
    :cond_a6
    :goto_a6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_174

    .line 283
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 284
    .local v6, ent:Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 285
    .local v10, key:Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 286
    .local v15, val:Ljava/lang/String;
    const-string v17, "path"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e6

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setName(Ljava/lang/String;)V

    goto :goto_a6

    .line 260
    .end local v6           #ent:Ljava/util/Map$Entry;
    .end local v8           #hdrs:Ljava/util/Iterator;
    .end local v10           #key:Ljava/lang/String;
    .end local v15           #val:Ljava/lang/String;
    .restart local v14       #sb:Ljava/lang/StringBuffer;
    :cond_d4
    int-to-char v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_32

    .line 264
    .end local v14           #sb:Ljava/lang/StringBuffer;
    :cond_de
    mul-int/lit8 v12, v12, 0xa

    .line 265
    add-int/lit8 v17, v5, -0x30

    add-int v12, v12, v17

    goto/16 :goto_1b

    .line 288
    .restart local v6       #ent:Ljava/util/Map$Entry;
    .restart local v8       #hdrs:Ljava/util/Iterator;
    .restart local v10       #key:Ljava/lang/String;
    .restart local v15       #val:Ljava/lang/String;
    :cond_e6
    const-string v17, "linkpath"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_fc

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setLinkName(Ljava/lang/String;)V

    goto :goto_a6

    .line 290
    :cond_fc
    const-string v17, "gid"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_114

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-object/from16 v17, v0

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setGroupId(I)V

    goto :goto_a6

    .line 292
    :cond_114
    const-string v17, "gname"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12b

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setGroupName(Ljava/lang/String;)V

    goto/16 :goto_a6

    .line 294
    :cond_12b
    const-string v17, "uid"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_144

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-object/from16 v17, v0

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setUserId(I)V

    goto/16 :goto_a6

    .line 296
    :cond_144
    const-string v17, "uname"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15b

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setUserName(Ljava/lang/String;)V

    goto/16 :goto_a6

    .line 298
    :cond_15b
    const-string v17, "size"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a6

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-object/from16 v17, v0

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setSize(J)V

    goto/16 :goto_a6

    .line 302
    .end local v6           #ent:Ljava/util/Map$Entry;
    .end local v10           #key:Ljava/lang/String;
    .end local v15           #val:Ljava/lang/String;
    :cond_174
    return-void
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    .line 117
    const v0, 0x7fffffff

    .line 119
    :goto_f
    return v0

    :cond_10
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_f
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->buffer:Lorg/apache/commons/compress/archivers/tar/TarBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->close()V

    .line 92
    return-void
.end method

.method protected final getCurrentEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    return-object v0
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextTarEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public getNextTarEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    iget-boolean v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->hasHitEOF:Z

    if-eqz v8, :cond_6

    .line 171
    const/4 v8, 0x0

    .line 230
    :goto_5
    return-object v8

    .line 174
    :cond_6
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v8, :cond_2d

    .line 175
    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    iget-wide v10, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    sub-long v4, v8, v10

    .line 177
    .local v4, numToSkip:J
    :goto_10
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_2a

    .line 178
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->skip(J)J

    move-result-wide v6

    .line 179
    .local v6, skipped:J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_28

    .line 180
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "failed to skip current tar entry"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 182
    :cond_28
    sub-long/2addr v4, v6

    .line 183
    goto :goto_10

    .line 185
    .end local v6           #skipped:J
    :cond_2a
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readBuf:[B

    .line 188
    .end local v4           #numToSkip:J
    :cond_2d
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->buffer:Lorg/apache/commons/compress/archivers/tar/TarBuffer;

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->readRecord()[B

    move-result-object v1

    .line 190
    .local v1, headerBuf:[B
    if-nez v1, :cond_65

    .line 191
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->hasHitEOF:Z

    .line 196
    :cond_38
    :goto_38
    iget-boolean v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->hasHitEOF:Z

    if-eqz v8, :cond_71

    .line 197
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 204
    :goto_3f
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v8, :cond_b3

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGNULongNameEntry()Z

    move-result v8

    if-eqz v8, :cond_b3

    .line 206
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 207
    .local v3, longName:Ljava/lang/StringBuffer;
    const/16 v8, 0x100

    new-array v0, v8, [B

    .line 208
    .local v0, buf:[B
    const/4 v2, 0x0

    .line 209
    .local v2, length:I
    :goto_55
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_85

    .line 210
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_55

    .line 192
    .end local v0           #buf:[B
    .end local v2           #length:I
    .end local v3           #longName:Ljava/lang/StringBuffer;
    :cond_65
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->buffer:Lorg/apache/commons/compress/archivers/tar/TarBuffer;

    invoke-virtual {v8, v1}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->isEOFRecord([B)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 193
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->hasHitEOF:Z

    goto :goto_38

    .line 199
    :cond_71
    new-instance v8, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-direct {v8, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>([B)V

    iput-object v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 200
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    .line 201
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    goto :goto_3f

    .line 212
    .restart local v0       #buf:[B
    .restart local v2       #length:I
    .restart local v3       #longName:Ljava/lang/StringBuffer;
    :cond_85
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 213
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-nez v8, :cond_8f

    .line 216
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 219
    :cond_8f
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_aa

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    if-nez v8, :cond_aa

    .line 221
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 223
    :cond_aa
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setName(Ljava/lang/String;)V

    .line 226
    .end local v0           #buf:[B
    .end local v2           #length:I
    .end local v3           #longName:Ljava/lang/StringBuffer;
    :cond_b3
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v8, :cond_c2

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isPaxHeader()Z

    move-result v8

    if-eqz v8, :cond_c2

    .line 227
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->paxHeaders()V

    .line 230
    :cond_c2
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    goto/16 :goto_5
.end method

.method public getRecordSize()I
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->buffer:Lorg/apache/commons/compress/archivers/tar/TarBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->getRecordSize()I

    move-result v0

    return v0
.end method

.method protected final isAtEOF()Z
    .registers 2

    .prologue
    .line 397
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->hasHitEOF:Z

    return v0
.end method

.method public read([BII)I
    .registers 15
    .parameter "buf"
    .parameter "offset"
    .parameter "numToRead"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 322
    const/4 v5, 0x0

    .line 324
    .local v5, totalRead:I
    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_c

    .line 325
    const/4 v6, -0x1

    .line 385
    :goto_b
    return v6

    .line 328
    :cond_c
    int-to-long v6, p3

    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    add-long/2addr v6, v8

    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_1c

    .line 329
    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    sub-long/2addr v6, v8

    long-to-int p3, v6

    .line 332
    :cond_1c
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readBuf:[B

    if-eqz v6, :cond_38

    .line 333
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readBuf:[B

    array-length v6, v6

    if-le p3, v6, :cond_69

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readBuf:[B

    array-length v4, v6

    .line 336
    .local v4, sz:I
    :goto_28
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readBuf:[B

    invoke-static {v6, v10, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readBuf:[B

    array-length v6, v6

    if-lt v4, v6, :cond_6b

    .line 339
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readBuf:[B

    .line 349
    :goto_35
    add-int/2addr v5, v4

    .line 350
    sub-int/2addr p3, v4

    .line 351
    add-int/2addr p2, v4

    .line 354
    .end local v4           #sz:I
    :cond_38
    :goto_38
    if-lez p3, :cond_9b

    .line 355
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->buffer:Lorg/apache/commons/compress/archivers/tar/TarBuffer;

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->readRecord()[B

    move-result-object v2

    .line 357
    .local v2, rec:[B
    if-nez v2, :cond_7a

    .line 359
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "unexpected EOF with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " bytes unread. Occured at byte: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getBytesRead()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v2           #rec:[B
    :cond_69
    move v4, p3

    .line 333
    goto :goto_28

    .line 341
    .restart local v4       #sz:I
    :cond_6b
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readBuf:[B

    array-length v6, v6

    sub-int v1, v6, v4

    .line 342
    .local v1, newLen:I
    new-array v0, v1, [B

    .line 344
    .local v0, newBuf:[B
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readBuf:[B

    invoke-static {v6, v4, v0, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readBuf:[B

    goto :goto_35

    .line 362
    .end local v0           #newBuf:[B
    .end local v1           #newLen:I
    .end local v4           #sz:I
    .restart local v2       #rec:[B
    :cond_7a
    array-length v6, v2

    invoke-virtual {p0, v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->count(I)V

    .line 363
    move v4, p3

    .line 364
    .restart local v4       #sz:I
    array-length v3, v2

    .line 366
    .local v3, recLen:I
    if-le v3, v4, :cond_96

    .line 367
    invoke-static {v2, v10, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    sub-int v6, v3, v4

    new-array v6, v6, [B

    iput-object v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readBuf:[B

    .line 371
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readBuf:[B

    sub-int v7, v3, v4

    invoke-static {v2, v4, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    :goto_92
    add-int/2addr v5, v4

    .line 379
    sub-int/2addr p3, v4

    .line 380
    add-int/2addr p2, v4

    .line 381
    goto :goto_38

    .line 373
    :cond_96
    move v4, v3

    .line 375
    invoke-static {v2, v10, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_92

    .line 383
    .end local v2           #rec:[B
    .end local v3           #recLen:I
    .end local v4           #sz:I
    :cond_9b
    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    move v6, v5

    .line 385
    goto/16 :goto_b
.end method

.method public declared-synchronized reset()V
    .registers 1

    .prologue
    .line 154
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method protected final setAtEOF(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 401
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->hasHitEOF:Z

    .line 402
    return-void
.end method

.method protected final setCurrentEntry(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 393
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 394
    return-void
.end method

.method public skip(J)J
    .registers 10
    .parameter "numToSkip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    const/16 v5, 0x2000

    new-array v4, v5, [B

    .line 138
    .local v4, skipBuf:[B
    move-wide v2, p1

    .line 139
    .local v2, skip:J
    :goto_5
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_1c

    .line 140
    array-length v5, v4

    int-to-long v5, v5

    cmp-long v5, v2, v5

    if-lez v5, :cond_1f

    array-length v5, v4

    int-to-long v5, v5

    :goto_13
    long-to-int v1, v5

    .line 141
    .local v1, realSkip:I
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->read([BII)I

    move-result v0

    .line 142
    .local v0, numRead:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_21

    .line 147
    .end local v0           #numRead:I
    .end local v1           #realSkip:I
    :cond_1c
    sub-long v5, p1, v2

    return-wide v5

    :cond_1f
    move-wide v5, v2

    .line 140
    goto :goto_13

    .line 145
    .restart local v0       #numRead:I
    .restart local v1       #realSkip:I
    :cond_21
    int-to-long v5, v0

    sub-long/2addr v2, v5

    .line 146
    goto :goto_5
.end method
