.class public Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;
.super Ljava/lang/Object;
.source "ExtraFieldUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;
    }
.end annotation


# static fields
.field private static final WORD:I = 0x4

.field static class$org$apache$commons$compress$archivers$zip$AsiExtraField:Ljava/lang/Class;

.field static class$org$apache$commons$compress$archivers$zip$JarMarker:Ljava/lang/Class;

.field static class$org$apache$commons$compress$archivers$zip$UnicodeCommentExtraField:Ljava/lang/Class;

.field static class$org$apache$commons$compress$archivers$zip$UnicodePathExtraField:Ljava/lang/Class;

.field private static final implementations:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->implementations:Ljava/util/Map;

    .line 42
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->class$org$apache$commons$compress$archivers$zip$AsiExtraField:Ljava/lang/Class;

    if-nez v0, :cond_44

    const-string v0, "org.apache.commons.compress.archivers.zip.AsiExtraField"

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->class$org$apache$commons$compress$archivers$zip$AsiExtraField:Ljava/lang/Class;

    :goto_13
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 43
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->class$org$apache$commons$compress$archivers$zip$JarMarker:Ljava/lang/Class;

    if-nez v0, :cond_47

    const-string v0, "org.apache.commons.compress.archivers.zip.JarMarker"

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->class$org$apache$commons$compress$archivers$zip$JarMarker:Ljava/lang/Class;

    :goto_22
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 44
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->class$org$apache$commons$compress$archivers$zip$UnicodePathExtraField:Ljava/lang/Class;

    if-nez v0, :cond_4a

    const-string v0, "org.apache.commons.compress.archivers.zip.UnicodePathExtraField"

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->class$org$apache$commons$compress$archivers$zip$UnicodePathExtraField:Ljava/lang/Class;

    :goto_31
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 45
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->class$org$apache$commons$compress$archivers$zip$UnicodeCommentExtraField:Ljava/lang/Class;

    if-nez v0, :cond_4d

    const-string v0, "org.apache.commons.compress.archivers.zip.UnicodeCommentExtraField"

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->class$org$apache$commons$compress$archivers$zip$UnicodeCommentExtraField:Ljava/lang/Class;

    :goto_40
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 46
    return-void

    .line 42
    :cond_44
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->class$org$apache$commons$compress$archivers$zip$AsiExtraField:Ljava/lang/Class;

    goto :goto_13

    .line 43
    :cond_47
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->class$org$apache$commons$compress$archivers$zip$JarMarker:Ljava/lang/Class;

    goto :goto_22

    .line 44
    :cond_4a
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->class$org$apache$commons$compress$archivers$zip$UnicodePathExtraField:Ljava/lang/Class;

    goto :goto_31

    .line 45
    :cond_4d
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->class$org$apache$commons$compress$archivers$zip$UnicodeCommentExtraField:Ljava/lang/Class;

    goto :goto_40
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 42
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static createExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .registers 4
    .parameter "headerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 78
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->implementations:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 79
    .local v0, c:Ljava/lang/Class;
    if-eqz v0, :cond_11

    .line 80
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 84
    :goto_10
    return-object v2

    .line 82
    :cond_11
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;-><init>()V

    .line 83
    .local v1, u:Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;
    invoke-virtual {v1, p0}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->setHeaderId(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    move-object v2, v1

    .line 84
    goto :goto_10
.end method

.method public static mergeCentralDirectoryData([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)[B
    .registers 12
    .parameter "data"

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    .line 227
    array-length v8, p0

    if-lez v8, :cond_28

    array-length v8, p0

    add-int/lit8 v8, v8, -0x1

    aget-object v8, p0, v8

    instance-of v8, v8, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v8, :cond_28

    const/4 v1, 0x1

    .line 229
    .local v1, lastIsUnparseableHolder:Z
    :goto_f
    if-eqz v1, :cond_2a

    array-length v8, p0

    add-int/lit8 v3, v8, -0x1

    .line 232
    .local v3, regularExtraFieldCount:I
    :goto_14
    mul-int/lit8 v6, v3, 0x4

    .line 233
    .local v6, sum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    array-length v8, p0

    if-ge v0, v8, :cond_2c

    .line 234
    aget-object v8, p0, v0

    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    move-result v8

    add-int/2addr v6, v8

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .end local v0           #i:I
    .end local v1           #lastIsUnparseableHolder:Z
    .end local v3           #regularExtraFieldCount:I
    .end local v6           #sum:I
    :cond_28
    move v1, v7

    .line 227
    goto :goto_f

    .line 229
    .restart local v1       #lastIsUnparseableHolder:Z
    :cond_2a
    array-length v3, p0

    goto :goto_14

    .line 236
    .restart local v0       #i:I
    .restart local v3       #regularExtraFieldCount:I
    .restart local v6       #sum:I
    :cond_2c
    new-array v4, v6, [B

    .line 237
    .local v4, result:[B
    const/4 v5, 0x0

    .line 238
    .local v5, start:I
    const/4 v0, 0x0

    :goto_30
    if-ge v0, v3, :cond_61

    .line 239
    aget-object v8, p0, v0

    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v7, v4, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    aget-object v8, p0, v0

    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes()[B

    move-result-object v8

    add-int/lit8 v9, v5, 0x2

    invoke-static {v8, v7, v4, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    aget-object v8, p0, v0

    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getCentralDirectoryData()[B

    move-result-object v2

    .line 244
    .local v2, local:[B
    add-int/lit8 v8, v5, 0x4

    array-length v9, v2

    invoke-static {v2, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    array-length v8, v2

    add-int/lit8 v8, v8, 0x4

    add-int/2addr v5, v8

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 247
    .end local v2           #local:[B
    :cond_61
    if-eqz v1, :cond_70

    .line 248
    array-length v8, p0

    add-int/lit8 v8, v8, -0x1

    aget-object v8, p0, v8

    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getCentralDirectoryData()[B

    move-result-object v2

    .line 249
    .restart local v2       #local:[B
    array-length v8, v2

    invoke-static {v2, v7, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    .end local v2           #local:[B
    :cond_70
    return-object v4
.end method

.method public static mergeLocalFileDataData([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)[B
    .registers 12
    .parameter "data"

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    .line 193
    array-length v8, p0

    if-lez v8, :cond_28

    array-length v8, p0

    add-int/lit8 v8, v8, -0x1

    aget-object v8, p0, v8

    instance-of v8, v8, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v8, :cond_28

    const/4 v1, 0x1

    .line 195
    .local v1, lastIsUnparseableHolder:Z
    :goto_f
    if-eqz v1, :cond_2a

    array-length v8, p0

    add-int/lit8 v3, v8, -0x1

    .line 198
    .local v3, regularExtraFieldCount:I
    :goto_14
    mul-int/lit8 v6, v3, 0x4

    .line 199
    .local v6, sum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    array-length v8, p0

    if-ge v0, v8, :cond_2c

    .line 200
    aget-object v8, p0, v0

    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    move-result v8

    add-int/2addr v6, v8

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .end local v0           #i:I
    .end local v1           #lastIsUnparseableHolder:Z
    .end local v3           #regularExtraFieldCount:I
    .end local v6           #sum:I
    :cond_28
    move v1, v7

    .line 193
    goto :goto_f

    .line 195
    .restart local v1       #lastIsUnparseableHolder:Z
    :cond_2a
    array-length v3, p0

    goto :goto_14

    .line 203
    .restart local v0       #i:I
    .restart local v3       #regularExtraFieldCount:I
    .restart local v6       #sum:I
    :cond_2c
    new-array v4, v6, [B

    .line 204
    .local v4, result:[B
    const/4 v5, 0x0

    .line 205
    .local v5, start:I
    const/4 v0, 0x0

    :goto_30
    if-ge v0, v3, :cond_61

    .line 206
    aget-object v8, p0, v0

    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v7, v4, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    aget-object v8, p0, v0

    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes()[B

    move-result-object v8

    add-int/lit8 v9, v5, 0x2

    invoke-static {v8, v7, v4, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    aget-object v8, p0, v0

    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getLocalFileDataData()[B

    move-result-object v2

    .line 211
    .local v2, local:[B
    add-int/lit8 v8, v5, 0x4

    array-length v9, v2

    invoke-static {v2, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    array-length v8, v2

    add-int/lit8 v8, v8, 0x4

    add-int/2addr v5, v8

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 214
    .end local v2           #local:[B
    :cond_61
    if-eqz v1, :cond_70

    .line 215
    array-length v8, p0

    add-int/lit8 v8, v8, -0x1

    aget-object v8, p0, v8

    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getLocalFileDataData()[B

    move-result-object v2

    .line 216
    .restart local v2       #local:[B
    array-length v8, v2

    invoke-static {v2, v7, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    .end local v2           #local:[B
    :cond_70
    return-object v4
.end method

.method public static parse([B)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .registers 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x1

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->THROW:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->parse([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    return-object v0
.end method

.method public static parse([BZ)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .registers 3
    .parameter "data"
    .parameter "local"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 110
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->THROW:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->parse([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    return-object v0
.end method

.method public static parse([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .registers 15
    .parameter "data"
    .parameter "local"
    .parameter "onUnparseableData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v7, v:Ljava/util/List;
    const/4 v6, 0x0

    .line 132
    .local v6, start:I
    :goto_6
    array-length v9, p0

    add-int/lit8 v9, v9, -0x4

    if-gt v6, v9, :cond_91

    .line 133
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-direct {v1, p0, v6}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>([BI)V

    .line 134
    .local v1, headerId:Lorg/apache/commons/compress/archivers/zip/ZipShort;
    new-instance v9, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    add-int/lit8 v10, v6, 0x2

    invoke-direct {v9, p0, v10}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>([BI)V

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    move-result v4

    .line 135
    .local v4, length:I
    add-int/lit8 v9, v6, 0x4

    add-int/2addr v9, v4

    array-length v10, p0

    if-le v9, v10, :cond_a6

    .line 136
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->getKey()I

    move-result v9

    packed-switch v9, :pswitch_data_d6

    .line 162
    new-instance v9, Ljava/util/zip/ZipException;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "unknown UnparseableExtraField key: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->getKey()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 138
    :pswitch_45
    new-instance v9, Ljava/util/zip/ZipException;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "bad extra field starting at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, ".  Block length of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, " bytes exceeds remaining"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, " data of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    array-length v11, p0

    sub-int/2addr v11, v6

    add-int/lit8 v11, v11, -0x4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, " bytes."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 145
    :pswitch_82
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;-><init>()V

    .line 147
    .local v0, field:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;
    if-eqz p1, :cond_a0

    .line 148
    array-length v9, p0

    sub-int/2addr v9, v6

    invoke-virtual {v0, p0, v6, v9}, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->parseFromLocalFileData([BII)V

    .line 154
    :goto_8e
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v0           #field:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;
    .end local v1           #headerId:Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .end local v4           #length:I
    :cond_91
    :pswitch_91
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    new-array v5, v9, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 184
    .local v5, result:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    invoke-interface {v7, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    check-cast v9, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    return-object v9

    .line 151
    .end local v5           #result:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .restart local v0       #field:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;
    .restart local v1       #headerId:Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .restart local v4       #length:I
    :cond_a0
    array-length v9, p0

    sub-int/2addr v9, v6

    invoke-virtual {v0, p0, v6, v9}, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->parseFromCentralDirectoryData([BII)V

    goto :goto_8e

    .line 167
    .end local v0           #field:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;
    :cond_a6
    :try_start_a6
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->createExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v8

    .line 168
    .local v8, ze:Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    if-eqz p1, :cond_b9

    .line 169
    add-int/lit8 v9, v6, 0x4

    invoke-interface {v8, p0, v9, v4}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->parseFromLocalFileData([BII)V

    .line 174
    :goto_b1
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v9, v4, 0x4

    add-int/2addr v6, v9

    .line 181
    goto/16 :goto_6

    .line 171
    :cond_b9
    add-int/lit8 v9, v6, 0x4

    invoke-interface {v8, p0, v9, v4}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->parseFromCentralDirectoryData([BII)V
    :try_end_be
    .catch Ljava/lang/InstantiationException; {:try_start_a6 .. :try_end_be} :catch_bf
    .catch Ljava/lang/IllegalAccessException; {:try_start_a6 .. :try_end_be} :catch_ca

    goto :goto_b1

    .line 175
    .end local v8           #ze:Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :catch_bf
    move-exception v3

    .line 176
    .local v3, ie:Ljava/lang/InstantiationException;
    new-instance v9, Ljava/util/zip/ZipException;

    invoke-virtual {v3}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 177
    .end local v3           #ie:Ljava/lang/InstantiationException;
    :catch_ca
    move-exception v2

    .line 178
    .local v2, iae:Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/util/zip/ZipException;

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 136
    nop

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_45
        :pswitch_91
        :pswitch_82
    .end packed-switch
.end method

.method public static register(Ljava/lang/Class;)V
    .registers 7
    .parameter "c"

    .prologue
    .line 57
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 58
    .local v2, ze:Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->implementations:Ljava/util/Map;

    invoke-interface {v2}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v4

    invoke-interface {v3, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_f} :catch_10
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_f} :catch_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_f} :catch_44

    .line 66
    return-void

    .line 59
    .end local v2           #ze:Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :catch_10
    move-exception v0

    .line 60
    .local v0, cc:Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " doesn\'t implement ZipExtraField"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 61
    .end local v0           #cc:Ljava/lang/ClassCastException;
    :catch_2a
    move-exception v1

    .line 62
    .local v1, ie:Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " is not a concrete class"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    .end local v1           #ie:Ljava/lang/InstantiationException;
    :catch_44
    move-exception v1

    .line 64
    .local v1, ie:Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\'s no-arg constructor is not public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
