.class public final Lorg/apache/xml/serializer/utils/SystemIDResolver;
.super Ljava/lang/Object;
.source "SystemIDResolver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAbsolutePathFromRelativePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "relativePath"

    .prologue
    .line 105
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "systemId"

    .prologue
    const/4 v6, 0x5

    .line 225
    move-object v0, p0

    .line 226
    .local v0, absoluteURI:Ljava/lang/String;
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->isAbsoluteURI(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 229
    const-string v5, "file:"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 231
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, str:Ljava/lang/String;
    if-eqz v4, :cond_65

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 237
    const-string v5, "///"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2e

    const-string v5, "//"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5e

    .line 241
    :cond_2e
    const/16 v5, 0x3a

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 242
    .local v3, secondColonIndex:I
    if-lez v3, :cond_5e

    .line 244
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, localPath:Ljava/lang/String;
    :try_start_3c
    invoke-static {v1}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5e

    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsolutePathFromRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5d
    .catch Ljava/lang/SecurityException; {:try_start_3c .. :try_end_5d} :catch_63

    move-result-object v0

    .line 261
    .end local v1           #localPath:Ljava/lang/String;
    .end local v3           #secondColonIndex:I
    :cond_5e
    invoke-static {v0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->replaceChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 267
    .end local v4           #str:Ljava/lang/String;
    .end local p0
    :cond_62
    :goto_62
    return-object p0

    .line 250
    .restart local v1       #localPath:Ljava/lang/String;
    .restart local v3       #secondColonIndex:I
    .restart local v4       #str:Ljava/lang/String;
    .restart local p0
    :catch_63
    move-exception v2

    .line 251
    .local v2, se:Ljava/lang/SecurityException;
    goto :goto_62

    .line 258
    .end local v1           #localPath:Ljava/lang/String;
    .end local v2           #se:Ljava/lang/SecurityException;
    .end local v3           #secondColonIndex:I
    :cond_65
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsoluteURIFromRelative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_62

    .line 267
    .end local v4           #str:Ljava/lang/String;
    :cond_6e
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsoluteURIFromRelative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_62
.end method

.method public static getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "urlString"
    .parameter "base"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 284
    if-nez p1, :cond_7

    .line 285
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 299
    :goto_6
    return-object v4

    .line 287
    :cond_7
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, absoluteBase:Ljava/lang/String;
    const/4 v3, 0x0

    .line 291
    .local v3, uri:Lorg/apache/xml/serializer/utils/URI;
    :try_start_c
    new-instance v1, Lorg/apache/xml/serializer/utils/URI;

    invoke-direct {v1, v0}, Lorg/apache/xml/serializer/utils/URI;-><init>(Ljava/lang/String;)V

    .line 292
    .local v1, baseURI:Lorg/apache/xml/serializer/utils/URI;
    new-instance v3, Lorg/apache/xml/serializer/utils/URI;

    .end local v3           #uri:Lorg/apache/xml/serializer/utils/URI;
    invoke-direct {v3, v1, p0}, Lorg/apache/xml/serializer/utils/URI;-><init>(Lorg/apache/xml/serializer/utils/URI;Ljava/lang/String;)V
    :try_end_16
    .catch Lorg/apache/xml/serializer/utils/URI$MalformedURIException; {:try_start_c .. :try_end_16} :catch_1f

    .line 299
    .restart local v3       #uri:Lorg/apache/xml/serializer/utils/URI;
    invoke-virtual {v3}, Lorg/apache/xml/serializer/utils/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->replaceChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 294
    .end local v1           #baseURI:Lorg/apache/xml/serializer/utils/URI;
    .end local v3           #uri:Lorg/apache/xml/serializer/utils/URI;
    :catch_1f
    move-exception v2

    .line 296
    .local v2, mue:Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
    new-instance v4, Ljavax/xml/transform/TransformerException;

    invoke-direct {v4, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static getAbsoluteURIFromRelative(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "localPath"

    .prologue
    .line 64
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b

    .line 65
    :cond_8
    const-string v3, ""

    .line 94
    :goto_a
    return-object v3

    .line 69
    :cond_b
    move-object v0, p0

    .line 70
    .local v0, absolutePath:Ljava/lang/String;
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 74
    :try_start_12
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsolutePathFromRelativePath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_15} :catch_38

    move-result-object v0

    .line 84
    :cond_16
    if-eqz v0, :cond_61

    .line 86
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, urlString:Ljava/lang/String;
    :goto_33
    invoke-static {v2}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->replaceChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    .line 77
    .end local v2           #urlString:Ljava/lang/String;
    :catch_38
    move-exception v1

    .line 79
    .local v1, se:Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    .line 89
    .end local v1           #se:Ljava/lang/SecurityException;
    :cond_4d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:///"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #urlString:Ljava/lang/String;
    goto :goto_33

    .line 92
    .end local v2           #urlString:Ljava/lang/String;
    :cond_61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #urlString:Ljava/lang/String;
    goto :goto_33
.end method

.method public static isAbsolutePath(Ljava/lang/String;)Z
    .registers 3
    .parameter "systemId"

    .prologue
    .line 157
    if-nez p0, :cond_4

    .line 158
    const/4 v1, 0x0

    .line 160
    :goto_3
    return v1

    .line 159
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    goto :goto_3
.end method

.method public static isAbsoluteURI(Ljava/lang/String;)Z
    .registers 8
    .parameter "systemId"

    .prologue
    const/4 v5, 0x0

    .line 127
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->isWindowsAbsolutePath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 145
    :cond_7
    :goto_7
    return v5

    .line 131
    :cond_8
    const/16 v6, 0x23

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 132
    .local v1, fragmentIndex:I
    const/16 v6, 0x3f

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 133
    .local v3, queryIndex:I
    const/16 v6, 0x2f

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 134
    .local v4, slashIndex:I
    const/16 v6, 0x3a

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 137
    .local v0, colonIndex:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 138
    .local v2, index:I
    if-lez v1, :cond_29

    .line 139
    move v2, v1

    .line 140
    :cond_29
    if-lez v3, :cond_2e

    if-ge v3, v2, :cond_2e

    .line 141
    move v2, v3

    .line 142
    :cond_2e
    if-lez v4, :cond_33

    if-ge v4, v2, :cond_33

    .line 143
    move v2, v4

    .line 145
    :cond_33
    if-lez v0, :cond_7

    if-ge v0, v2, :cond_7

    const/4 v5, 0x1

    goto :goto_7
.end method

.method private static isWindowsAbsolutePath(Ljava/lang/String;)Z
    .registers 6
    .parameter "systemId"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 172
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 181
    :cond_9
    :goto_9
    return v0

    .line 175
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_9

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_9

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_32

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_9

    :cond_32
    move v0, v1

    .line 179
    goto :goto_9
.end method

.method private static replaceChars(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "str"

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 195
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v3, :cond_31

    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 199
    .local v1, currentChar:C
    const/16 v4, 0x20

    if-ne v1, v4, :cond_27

    .line 201
    const/16 v4, 0x25

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 202
    add-int/lit8 v4, v2, 0x1

    const-string v5, "20"

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    add-int/lit8 v3, v3, 0x2

    .line 204
    add-int/lit8 v2, v2, 0x2

    .line 195
    :cond_24
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 207
    :cond_27
    const/16 v4, 0x5c

    if-ne v1, v4, :cond_24

    .line 209
    const/16 v4, 0x2f

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_24

    .line 213
    .end local v1           #currentChar:C
    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
