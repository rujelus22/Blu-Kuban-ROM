.class public Lcom/android/task/vcal/pim/VDataBuilder;
.super Ljava/lang/Object;
.source "VDataBuilder.java"

# interfaces
.implements Lcom/android/task/vcal/pim/VBuilder;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCharset:Ljava/lang/String;

.field private mCurrentParamType:Ljava/lang/String;

.field private mCurrentPropNode:Lcom/android/task/vcal/pim/PropertyNode;

.field private mCurrentVNode:Lcom/android/task/vcal/pim/VNode;

.field private mNodeListPos:I

.field private mStrictLineBreakParsing:Z

.field public vNodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/task/vcal/pim/VNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-string v0, "VDATABuilder"

    sput-object v0, Lcom/android/task/vcal/pim/VDataBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/task/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    .line 43
    iput v2, p0, Lcom/android/task/vcal/pim/VDataBuilder;->mNodeListPos:I

    .line 57
    sget-object v0, Lcom/android/task/vcal/pim/VDataBuilder;->TAG:Ljava/lang/String;

    const-string v1, "VDataBuilder()"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/android/task/vcal/pim/VDataBuilder;->mCharset:Ljava/lang/String;

    .line 60
    iput-boolean v2, p0, Lcom/android/task/vcal/pim/VDataBuilder;->mStrictLineBreakParsing:Z

    .line 61
    return-void
.end method

.method private encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "originalString"
    .parameter "targetEncoding"

    .prologue
    .line 128
    iget-object v4, p0, Lcom/android/task/vcal/pim/VDataBuilder;->mCharset:Ljava/lang/String;

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 129
    .local v2, charset:Ljava/nio/charset/Charset;
    invoke-virtual {v2, p1}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 132
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v1, v4, [B

    .line 133
    .local v1, bytes:[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 135
    :try_start_13
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_18
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_18} :catch_19

    .line 137
    :goto_18
    return-object v4

    .line 136
    :catch_19
    move-exception v3

    .line 137
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    const/4 v4, 0x0

    goto :goto_18
.end method

.method private listToString(Ljava/util/Collection;)Ljava/lang/String;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, list:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v3, typeListB:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 253
    .local v2, type:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 255
    .end local v2           #type:Ljava/lang/String;
    :cond_1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 256
    .local v1, len:I
    if-lez v1, :cond_37

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_37

    .line 257
    const/4 v4, 0x0

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 259
    :goto_36
    return-object v4

    :cond_37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_36
.end method


# virtual methods
.method public end()V
    .registers 1

    .prologue
    .line 73
    return-void
.end method

.method public endProperty()V
    .registers 1

    .prologue
    .line 101
    return-void
.end method

.method public endRecord()V
    .registers 4

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/task/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    iget v2, p0, Lcom/android/task/vcal/pim/VDataBuilder;->mNodeListPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/task/vcal/pim/VNode;

    .line 86
    .local v0, endNode:Lcom/android/task/vcal/pim/VNode;
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/task/vcal/pim/VNode;->parseStatus:I

    .line 87
    :cond_d
    iget v1, p0, Lcom/android/task/vcal/pim/VDataBuilder;->mNodeListPos:I

    if-lez v1, :cond_26

    .line 88
    iget v1, p0, Lcom/android/task/vcal/pim/VDataBuilder;->mNodeListPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/task/vcal/pim/VDataBuilder;->mNodeListPos:I

    .line 89
    iget-object v1, p0, Lcom/android/task/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    iget v2, p0, Lcom/android/task/vcal/pim/VDataBuilder;->mNodeListPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/task/vcal/pim/VNode;

    iget v1, v1, Lcom/android/task/vcal/pim/VNode;->parseStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 92
    :cond_26
    iget-object v1, p0, Lcom/android/task/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    iget v2, p0, Lcom/android/task/vcal/pim/VDataBuilder;->mNodeListPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/task/vcal/pim/VNode;

    iput-object v1, p0, Lcom/android/task/vcal/pim/VDataBuilder;->mCurrentVNode:Lcom/android/task/vcal/pim/VNode;

    .line 93
    return-void
.end method

.method public propertyName(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 104
    new-instance v0, Lcom/android/task/vcal/pim/PropertyNode;

    invoke-direct {v0}, Lcom/android/task/vcal/pim/PropertyNode;-><init>()V

    iput-object v0, p0, Lcom/android/task/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/task/vcal/pim/PropertyNode;

    .line 105
    iget-object v0, p0, Lcom/android/task/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/task/vcal/pim/PropertyNode;

    iput-object p1, v0, Lcom/android/task/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public propertyParamType(Ljava/lang/String;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/task/vcal/pim/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public propertyParamValue(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/task/vcal/pim/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/task/vcal/pim/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 119
    :cond_e
    iget-object v0, p0, Lcom/android/task/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/task/vcal/pim/PropertyNode;

    iget-object v0, v0, Lcom/android/task/vcal/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    :goto_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/task/vcal/pim/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    .line 125
    return-void

    .line 121
    :cond_19
    iget-object v0, p0, Lcom/android/task/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/task/vcal/pim/PropertyNode;

    iget-object v0, v0, Lcom/android/task/vcal/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/android/task/vcal/pim/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method public propertyValues(Ljava/util/List;)V
    .registers 32
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/task/vcal/pim/PropertyNode;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/task/vcal/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    .line 144
    .local v18, paramMap:Landroid/content/ContentValues;
    const-string v26, "CHARSET"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, charsetString:Ljava/lang/String;
    const/16 v21, 0x0

    .line 148
    .local v21, setupParamValues:Z
    const-string v26, "ENCODING"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_15d

    .line 149
    const-string v26, "ENCODING"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 150
    .local v9, encoding:Ljava/lang/String;
    const-string v26, "BASE64"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_42

    const-string v26, "B"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_8c

    .line 156
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/task/vcal/pim/PropertyNode;

    move-object/from16 v27, v0

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const-string v28, " "

    const-string v29, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v28, "\t"

    const-string v29, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v28, "\r\n"

    const-string v29, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/task/vcal/pim/PropertyNode;->propValue_bytes:[B

    .line 160
    :cond_8c
    const-string v26, "QUOTED-PRINTABLE"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_15d

    .line 163
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v24, tmpValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 165
    .local v5, byteVector:Ljava/util/Vector;,"Ljava/util/Vector<[B>;"
    const/16 v22, 0x0

    .line 167
    .local v22, size:I
    :try_start_a2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_a6
    :goto_a6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_197

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 168
    .local v25, value:Ljava/lang/String;
    const-string v26, "= "

    const-string v27, " "

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "=\t"

    const-string v28, "\t"

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 170
    .local v19, quotedPrintable:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/task/vcal/pim/VDataBuilder;->mStrictLineBreakParsing:Z

    move/from16 v26, v0

    if-eqz v26, :cond_107

    .line 171
    const-string v26, "\r\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 175
    .local v17, lines:[Ljava/lang/String;
    :goto_d4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v4, builder:Ljava/lang/StringBuilder;
    move-object/from16 v3, v17

    .local v3, arr$:[Ljava/lang/String;
    array-length v14, v3

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_dd
    if-ge v12, v14, :cond_124

    aget-object v16, v3, v12

    .line 177
    .local v16, line:Ljava/lang/String;
    const-string v26, "="

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_ff

    .line 178
    const/16 v26, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 180
    :cond_ff
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    add-int/lit8 v12, v12, 0x1

    goto :goto_dd

    .line 173
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #builder:Ljava/lang/StringBuilder;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .end local v16           #line:Ljava/lang/String;
    .end local v17           #lines:[Ljava/lang/String;
    :cond_107
    const-string v26, "\r\n"

    const-string v27, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "\r"

    const-string v28, "\n"

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .restart local v17       #lines:[Ljava/lang/String;
    goto :goto_d4

    .line 182
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    .restart local v12       #i$:I
    .restart local v14       #len$:I
    :cond_124
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_12f} :catch_15c

    move-result-object v6

    .line 183
    .local v6, bytes:[B
    if-eqz v6, :cond_a6

    .line 184
    if-eqz v7, :cond_188

    .line 186
    :try_start_134
    new-instance v26, Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v0, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_142
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_134 .. :try_end_142} :catch_14c
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_142} :catch_15c

    .line 198
    :goto_142
    :try_start_142
    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 199
    array-length v0, v6

    move/from16 v26, v0

    add-int v22, v22, v26

    goto/16 :goto_a6

    .line 187
    :catch_14c
    move-exception v8

    .line 193
    .local v8, e:Ljava/io/UnsupportedEncodingException;
    new-instance v26, Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_15b} :catch_15c

    goto :goto_142

    .line 218
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #builder:Ljava/lang/StringBuilder;
    .end local v6           #bytes:[B
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .end local v17           #lines:[Ljava/lang/String;
    .end local v19           #quotedPrintable:Ljava/lang/String;
    .end local v25           #value:Ljava/lang/String;
    :catch_15c
    move-exception v26

    .line 225
    .end local v5           #byteVector:Ljava/util/Vector;,"Ljava/util/Vector<[B>;"
    .end local v9           #encoding:Ljava/lang/String;
    .end local v22           #size:I
    .end local v24           #tmpValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_15d
    :goto_15d
    if-nez v21, :cond_21a

    .line 227
    if-eqz v7, :cond_1fe

    .line 228
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .restart local v24       #tmpValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_16a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_1fc

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 230
    .restart local v25       #value:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v7}, Lcom/android/task/vcal/pim/VDataBuilder;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 231
    .local v20, result:Ljava/lang/String;
    if-eqz v20, :cond_1f7

    .line 232
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16a

    .line 196
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v20           #result:Ljava/lang/String;
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    .restart local v5       #byteVector:Ljava/util/Vector;,"Ljava/util/Vector<[B>;"
    .restart local v6       #bytes:[B
    .restart local v9       #encoding:Ljava/lang/String;
    .restart local v12       #i$:I
    .restart local v14       #len$:I
    .restart local v17       #lines:[Ljava/lang/String;
    .restart local v19       #quotedPrintable:Ljava/lang/String;
    .restart local v22       #size:I
    :cond_188
    :try_start_188
    new-instance v26, Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_142

    .line 202
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #builder:Ljava/lang/StringBuilder;
    .end local v6           #bytes:[B
    .end local v12           #i$:I
    .end local v14           #len$:I
    .end local v17           #lines:[Ljava/lang/String;
    .end local v19           #quotedPrintable:Ljava/lang/String;
    .end local v25           #value:Ljava/lang/String;
    :cond_197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/task/vcal/pim/PropertyNode;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/task/vcal/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/task/vcal/pim/PropertyNode;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/task/vcal/pim/VDataBuilder;->listToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/task/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/task/vcal/pim/PropertyNode;

    move-object/from16 v26, v0

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/task/vcal/pim/PropertyNode;->propValue_bytes:[B

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/task/vcal/pim/PropertyNode;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/task/vcal/pim/PropertyNode;->propValue_bytes:[B

    move-object/from16 v23, v0

    .line 209
    .local v23, tmpBytes:[B
    const/4 v13, 0x0

    .line 210
    .local v13, index:I
    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_1da
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_1f3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 211
    .restart local v6       #bytes:[B
    array-length v15, v6

    .line 212
    .local v15, length:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1e8
    if-ge v10, v15, :cond_1da

    .line 213
    aget-byte v26, v6, v10

    aput-byte v26, v23, v13
    :try_end_1ee
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_1ee} :catch_15c

    .line 212
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_1e8

    .line 217
    .end local v6           #bytes:[B
    .end local v10           #i:I
    .end local v15           #length:I
    :cond_1f3
    const/16 v21, 0x1

    goto/16 :goto_15d

    .line 238
    .end local v5           #byteVector:Ljava/util/Vector;,"Ljava/util/Vector<[B>;"
    .end local v9           #encoding:Ljava/lang/String;
    .end local v13           #index:I
    .end local v22           #size:I
    .end local v23           #tmpBytes:[B
    .restart local v20       #result:Ljava/lang/String;
    .restart local v25       #value:Ljava/lang/String;
    :cond_1f7
    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16a

    .line 241
    .end local v20           #result:Ljava/lang/String;
    .end local v25           #value:Ljava/lang/String;
    :cond_1fc
    move-object/from16 p1, v24

    .line 244
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v24           #tmpValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/task/vcal/pim/PropertyNode;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/task/vcal/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/task/vcal/pim/PropertyNode;

    move-object/from16 v26, v0

    invoke-direct/range {p0 .. p1}, Lcom/android/task/vcal/pim/VDataBuilder;->listToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/task/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    .line 247
    :cond_21a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/vcal/pim/VDataBuilder;->mCurrentVNode:Lcom/android/task/vcal/pim/VNode;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/task/vcal/pim/VNode;->propList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/task/vcal/pim/PropertyNode;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method

.method public start()V
    .registers 1

    .prologue
    .line 70
    return-void
.end method

.method public startProperty()V
    .registers 1

    .prologue
    .line 97
    return-void
.end method

.method public startRecord(Ljava/lang/String;)V
    .registers 5
    .parameter "type"

    .prologue
    .line 76
    new-instance v0, Lcom/android/task/vcal/pim/VNode;

    invoke-direct {v0}, Lcom/android/task/vcal/pim/VNode;-><init>()V

    .line 77
    .local v0, vnode:Lcom/android/task/vcal/pim/VNode;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/task/vcal/pim/VNode;->parseStatus:I

    .line 78
    iput-object p1, v0, Lcom/android/task/vcal/pim/VNode;->VName:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/android/task/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, p0, Lcom/android/task/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/task/vcal/pim/VDataBuilder;->mNodeListPos:I

    .line 81
    iget-object v1, p0, Lcom/android/task/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    iget v2, p0, Lcom/android/task/vcal/pim/VDataBuilder;->mNodeListPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/task/vcal/pim/VNode;

    iput-object v1, p0, Lcom/android/task/vcal/pim/VDataBuilder;->mCurrentVNode:Lcom/android/task/vcal/pim/VNode;

    .line 82
    return-void
.end method
