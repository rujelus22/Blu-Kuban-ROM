.class public Lorg/apache/commons/io/FilenameUtils;
.super Ljava/lang/Object;
.source "FilenameUtils.java"


# static fields
.field public static final EXTENSION_SEPARATOR_STR:Ljava/lang/String;

.field private static final OTHER_SEPARATOR:C

.field private static final SYSTEM_SEPARATOR:C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FilenameUtils;->EXTENSION_SEPARATOR_STR:Ljava/lang/String;

    .line 120
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    .line 127
    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 128
    const/16 v0, 0x2f

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    .line 132
    :goto_1b
    return-void

    .line 130
    :cond_1c
    const/16 v0, 0x5c

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    goto :goto_1b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "filename"

    .prologue
    .line 861
    if-nez p0, :cond_4

    .line 862
    const/4 v1, 0x0

    .line 868
    :goto_3
    return-object v1

    .line 864
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    .line 865
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 866
    const-string v1, ""

    goto :goto_3

    .line 868
    :cond_e
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static indexOfExtension(Ljava/lang/String;)I
    .registers 5
    .parameter "filename"

    .prologue
    const/4 v2, -0x1

    .line 581
    if-nez p0, :cond_4

    .line 586
    :goto_3
    return v2

    .line 584
    :cond_4
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 585
    .local v0, extensionPos:I
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v1

    .line 586
    .local v1, lastSeparator:I
    if-le v1, v0, :cond_11

    move v0, v2

    .end local v0           #extensionPos:I
    :cond_11
    move v2, v0

    goto :goto_3
.end method

.method public static indexOfLastSeparator(Ljava/lang/String;)I
    .registers 4
    .parameter "filename"

    .prologue
    .line 559
    if-nez p0, :cond_4

    .line 560
    const/4 v2, -0x1

    .line 564
    :goto_3
    return v2

    .line 562
    :cond_4
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 563
    .local v0, lastUnixPos:I
    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 564
    .local v1, lastWindowsPos:I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_3
.end method

.method static isSystemWindows()Z
    .registers 2

    .prologue
    .line 148
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .parameter "text"

    .prologue
    const/16 v7, 0x3f

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1230
    const-string v4, "?"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_1a

    const-string v4, "*"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_1a

    .line 1231
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p0, v4, v6

    .line 1257
    :goto_19
    return-object v4

    .line 1234
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1235
    .local v0, array:[C
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1236
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1237
    .local v1, buffer:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_29
    array-length v4, v0

    if-ge v2, v4, :cond_7a

    .line 1238
    aget-char v4, v0, v2

    if-eq v4, v7, :cond_36

    aget-char v4, v0, v2

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_74

    .line 1239
    :cond_36
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v4, :cond_46

    .line 1240
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1241
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1243
    :cond_46
    aget-char v4, v0, v2

    if-ne v4, v7, :cond_52

    .line 1244
    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    :cond_4f
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 1245
    :cond_52
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_6e

    if-lez v2, :cond_4f

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 1247
    :cond_6e
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 1250
    :cond_74
    aget-char v4, v0, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4f

    .line 1253
    :cond_7a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v4, :cond_87

    .line 1254
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1257
    :cond_87
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_19
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z
    .registers 14
    .parameter "filename"
    .parameter "wildcardMatcher"
    .parameter "caseSensitivity"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1140
    if-nez p0, :cond_7

    if-nez p1, :cond_7

    .line 1217
    :cond_6
    :goto_6
    return v7

    .line 1143
    :cond_7
    if-eqz p0, :cond_b

    if-nez p1, :cond_d

    :cond_b
    move v7, v8

    .line 1144
    goto :goto_6

    .line 1146
    :cond_d
    if-nez p2, :cond_11

    .line 1147
    sget-object p2, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 1149
    :cond_11
    invoke-virtual {p2, p0}, Lorg/apache/commons/io/IOCase;->convertCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1150
    invoke-virtual {p2, p1}, Lorg/apache/commons/io/IOCase;->convertCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1151
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1152
    .local v5, wcs:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1153
    .local v0, anyChars:Z
    const/4 v4, 0x0

    .line 1154
    .local v4, textIdx:I
    const/4 v6, 0x0

    .line 1155
    .local v6, wcsIdx:I
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 1159
    .local v2, backtrack:Ljava/util/Stack;,"Ljava/util/Stack<[I>;"
    :cond_25
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v9

    if-lez v9, :cond_36

    .line 1160
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1161
    .local v1, array:[I
    aget v6, v1, v8

    .line 1162
    aget v4, v1, v7

    .line 1163
    const/4 v0, 0x1

    .line 1167
    .end local v1           #array:[I
    :cond_36
    :goto_36
    array-length v9, v5

    if-ge v6, v9, :cond_69

    .line 1169
    aget-object v9, v5, v6

    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_49

    .line 1171
    add-int/lit8 v4, v4, 0x1

    .line 1172
    const/4 v0, 0x0

    .line 1207
    :cond_46
    :goto_46
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    .line 1174
    :cond_49
    aget-object v9, v5, v6

    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5e

    .line 1176
    const/4 v0, 0x1

    .line 1177
    array-length v9, v5

    add-int/lit8 v9, v9, -0x1

    if-ne v6, v9, :cond_46

    .line 1178
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_46

    .line 1183
    :cond_5e
    if-eqz v0, :cond_97

    .line 1185
    aget-object v9, v5, v6

    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 1186
    const/4 v9, -0x1

    if-ne v4, v9, :cond_7a

    .line 1211
    :cond_69
    :goto_69
    array-length v9, v5

    if-ne v6, v9, :cond_72

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v4, v9, :cond_6

    .line 1215
    :cond_72
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v9

    if-gtz v9, :cond_25

    move v7, v8

    .line 1217
    goto :goto_6

    .line 1190
    :cond_7a
    aget-object v9, v5, v6

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 1191
    .local v3, repeat:I
    if-ltz v3, :cond_8e

    .line 1192
    const/4 v9, 0x2

    new-array v9, v9, [I

    aput v6, v9, v8

    aput v3, v9, v7

    invoke-virtual {v2, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    .end local v3           #repeat:I
    :cond_8e
    aget-object v9, v5, v6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v4, v9

    .line 1204
    const/4 v0, 0x0

    goto :goto_46

    .line 1196
    :cond_97
    aget-object v9, v5, v6

    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_8e

    goto :goto_69
.end method
