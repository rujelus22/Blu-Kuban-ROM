.class public Lorg/apache/commons/compress/utils/ArchiveUtils;
.super Ljava/lang/Object;
.source "ArchiveUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static isEqual([BII[BII)Z
    .registers 13
    .parameter "buffer1"
    .parameter "offset1"
    .parameter "length1"
    .parameter "buffer2"
    .parameter "offset2"
    .parameter "length2"

    .prologue
    .line 191
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result v0

    return v0
.end method

.method public static isEqual([BII[BIIZ)Z
    .registers 13
    .parameter "buffer1"
    .parameter "offset1"
    .parameter "length1"
    .parameter "buffer2"
    .parameter "offset2"
    .parameter "length2"
    .parameter "ignoreTrailingNulls"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 149
    if-ge p2, p5, :cond_13

    move v1, p2

    .line 150
    .local v1, minLen:I
    :goto_5
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-ge v0, v1, :cond_18

    .line 151
    add-int v4, p1, v0

    aget-byte v4, p0, v4

    add-int v5, p4, v0

    aget-byte v5, p3, v5

    if-eq v4, v5, :cond_15

    .line 174
    :cond_12
    :goto_12
    return v2

    .end local v0           #i:I
    .end local v1           #minLen:I
    :cond_13
    move v1, p5

    .line 149
    goto :goto_5

    .line 150
    .restart local v0       #i:I
    .restart local v1       #minLen:I
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 155
    :cond_18
    if-ne p2, p5, :cond_1c

    move v2, v3

    .line 156
    goto :goto_12

    .line 158
    :cond_1c
    if-eqz p6, :cond_12

    .line 159
    if-le p2, p5, :cond_2c

    .line 160
    move v0, p5

    :goto_21
    if-ge v0, p2, :cond_38

    .line 161
    add-int v4, p1, v0

    aget-byte v4, p0, v4

    if-nez v4, :cond_12

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 166
    :cond_2c
    move v0, p2

    :goto_2d
    if-ge v0, p5, :cond_38

    .line 167
    add-int v4, p4, v0

    aget-byte v4, p3, v4

    if-nez v4, :cond_12

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_38
    move v2, v3

    .line 172
    goto :goto_12
.end method

.method public static isEqual([B[B)Z
    .registers 9
    .parameter "buffer1"
    .parameter "buffer2"

    .prologue
    const/4 v1, 0x0

    .line 202
    array-length v2, p0

    array-length v5, p1

    move-object v0, p0

    move-object v3, p1

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result v0

    return v0
.end method

.method public static isEqual([B[BZ)Z
    .registers 10
    .parameter "buffer1"
    .parameter "buffer2"
    .parameter "ignoreTrailingNulls"

    .prologue
    const/4 v1, 0x0

    .line 214
    array-length v2, p0

    array-length v5, p1

    move-object v0, p0

    move-object v3, p1

    move v4, v1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result v0

    return v0
.end method

.method public static isEqualWithNull([BII[BII)Z
    .registers 13
    .parameter "buffer1"
    .parameter "offset1"
    .parameter "length1"
    .parameter "buffer2"
    .parameter "offset2"
    .parameter "length2"

    .prologue
    .line 231
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result v0

    return v0
.end method

.method public static matchAsciiBuffer(Ljava/lang/String;[B)Z
    .registers 4
    .parameter "expected"
    .parameter "buffer"

    .prologue
    .line 85
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v0

    return v0
.end method

.method public static matchAsciiBuffer(Ljava/lang/String;[BII)Z
    .registers 12
    .parameter "expected"
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v1, 0x0

    .line 70
    :try_start_1
    const-string v2, "ASCII"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_6} :catch_11

    move-result-object v0

    .line 74
    .local v0, buffer1:[B
    array-length v2, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, v1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result v1

    return v1

    .line 71
    .end local v0           #buffer1:[B
    :catch_11
    move-exception v7

    .line 72
    .local v7, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toAsciiBytes(Ljava/lang/String;)[B
    .registers 3
    .parameter "inputString"

    .prologue
    .line 97
    :try_start_0
    const-string v1, "ASCII"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 98
    :catch_7
    move-exception v0

    .line 99
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toAsciiString([B)Ljava/lang/String;
    .registers 4
    .parameter "inputBytes"

    .prologue
    .line 111
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "ASCII"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v1

    .line 112
    :catch_8
    move-exception v0

    .line 113
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toAsciiString([BII)Ljava/lang/String;
    .registers 6
    .parameter "inputBytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 127
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "ASCII"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v1

    .line 128
    :catch_8
    move-exception v0

    .line 129
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toString(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Ljava/lang/String;
    .registers 7
    .parameter "entry"

    .prologue
    const/16 v5, 0x20

    .line 44
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-interface {p0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2a

    const/16 v3, 0x64

    :goto_f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 46
    invoke-interface {p0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, size:Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 49
    const/4 v0, 0x7

    .local v0, i:I
    :goto_1e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v0, v3, :cond_2d

    .line 50
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 49
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    .line 45
    .end local v0           #i:I
    .end local v2           #size:Ljava/lang/String;
    :cond_2a
    const/16 v3, 0x2d

    goto :goto_f

    .line 52
    .restart local v0       #i:I
    .restart local v2       #size:Ljava/lang/String;
    :cond_2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {p0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
