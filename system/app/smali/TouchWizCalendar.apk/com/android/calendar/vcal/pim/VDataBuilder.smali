.class public Lcom/android/calendar/vcal/pim/VDataBuilder;
.super Ljava/lang/Object;
.source "VDataBuilder.java"

# interfaces
.implements Lcom/android/calendar/vcal/pim/VBuilder;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCharset:Ljava/lang/String;

.field private mCurrentParamType:Ljava/lang/String;

.field private mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

.field private mCurrentVNode:Lcom/android/calendar/vcal/pim/VNode;

.field private mNodeListPos:I

.field private mStrictLineBreakParsing:Z

.field public vNodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/vcal/pim/VNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string v0, "VDATABuilder"

    sput-object v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    .line 43
    iput v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mNodeListPos:I

    .line 60
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCharset:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mStrictLineBreakParsing:Z

    .line 62
    return-void
.end method

.method private encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "originalString"
    .parameter "targetEncoding"

    .prologue
    .line 128
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCharset:Ljava/lang/String;

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
    .line 246
    .local p1, list:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
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

    .line 248
    .local v2, type:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 250
    .end local v2           #type:Ljava/lang/String;
    :cond_1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 251
    .local v1, len:I
    if-lez v1, :cond_37

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_37

    .line 252
    const/4 v4, 0x0

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 254
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
    iget-object v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    iget v2, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mNodeListPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/vcal/pim/VNode;

    .line 86
    .local v0, endNode:Lcom/android/calendar/vcal/pim/VNode;
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/calendar/vcal/pim/VNode;->parseStatus:I

    .line 87
    :cond_d
    iget v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mNodeListPos:I

    if-lez v1, :cond_26

    .line 88
    iget v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mNodeListPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mNodeListPos:I

    .line 89
    iget-object v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    iget v2, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mNodeListPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/vcal/pim/VNode;

    iget v1, v1, Lcom/android/calendar/vcal/pim/VNode;->parseStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 92
    :cond_26
    iget-object v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    iget v2, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mNodeListPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/vcal/pim/VNode;

    iput-object v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentVNode:Lcom/android/calendar/vcal/pim/VNode;

    .line 93
    return-void
.end method

.method public propertyName(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 104
    new-instance v0, Lcom/android/calendar/vcal/pim/PropertyNode;

    invoke-direct {v0}, Lcom/android/calendar/vcal/pim/PropertyNode;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    .line 105
    iget-object v0, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    iput-object p1, v0, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public propertyParamType(Ljava/lang/String;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public propertyParamValue(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 119
    :cond_e
    iget-object v0, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    :goto_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    .line 125
    return-void

    .line 121
    :cond_19
    iget-object v0, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method public propertyValues(Ljava/util/List;)V
    .registers 30
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

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    .line 144
    .local v16, paramMap:Landroid/content/ContentValues;
    const-string v24, "CHARSET"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, charsetString:Ljava/lang/String;
    const/16 v19, 0x0

    .line 148
    .local v19, setupParamValues:Z
    const-string v24, "ENCODING"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_161

    .line 149
    const-string v24, "ENCODING"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 150
    .local v9, encoding:Ljava/lang/String;
    const-string v24, "BASE64"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_42

    const-string v24, "B"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_8c

    .line 151
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    move-object/from16 v25, v0

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const-string v26, " "

    const-string v27, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v26, "\t"

    const-string v27, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v26, "\r\n"

    const-string v27, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue_bytes:[B

    .line 156
    :cond_8c
    const-string v24, "QUOTED-PRINTABLE"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_161

    .line 159
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v22, tmpValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 161
    .local v5, byteVector:Ljava/util/Vector;,"Ljava/util/Vector<[B>;"
    const/16 v20, 0x0

    .line 163
    .local v20, size:I
    :try_start_a2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_a6
    :goto_a6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_19b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 164
    .local v23, value:Ljava/lang/String;
    const-string v24, "= ="

    const-string v25, "="

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "= "

    const-string v26, " "

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "=\t"

    const-string v26, "\t"

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 167
    .local v17, quotedPrintable:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mStrictLineBreakParsing:Z

    move/from16 v24, v0

    if-eqz v24, :cond_108

    .line 168
    const-string v24, "\r\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 173
    .local v15, lines:[Ljava/lang/String;
    :goto_dc
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v4, builder:Ljava/lang/StringBuilder;
    move-object v3, v15

    .local v3, arr$:[Ljava/lang/String;
    array-length v13, v3

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_e4
    if-ge v11, v13, :cond_125

    aget-object v14, v3, v11

    .line 175
    .local v14, line:Ljava/lang/String;
    const-string v24, "="

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_102

    .line 176
    const/16 v24, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 178
    :cond_102
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    add-int/lit8 v11, v11, 0x1

    goto :goto_e4

    .line 170
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #builder:Ljava/lang/StringBuilder;
    .end local v11           #i$:I
    .end local v13           #len$:I
    .end local v14           #line:Ljava/lang/String;
    .end local v15           #lines:[Ljava/lang/String;
    :cond_108
    const-string v24, "\r\n"

    const-string v25, "\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "\r"

    const-string v26, "\n"

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .restart local v15       #lines:[Ljava/lang/String;
    goto :goto_dc

    .line 180
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    .restart local v11       #i$:I
    .restart local v13       #len$:I
    :cond_125
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_130} :catch_15d

    move-result-object v6

    .line 182
    .local v6, bytes:[B
    if-eqz v6, :cond_a6

    .line 183
    if-eqz v7, :cond_18c

    .line 185
    :try_start_135
    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_143
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_135 .. :try_end_143} :catch_14d
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_143} :catch_15d

    .line 192
    :goto_143
    :try_start_143
    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 193
    array-length v0, v6

    move/from16 v24, v0

    add-int v20, v20, v24

    goto/16 :goto_a6

    .line 186
    :catch_14d
    move-exception v8

    .line 187
    .local v8, e:Ljava/io/UnsupportedEncodingException;
    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_15c} :catch_15d

    goto :goto_143

    .line 218
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #builder:Ljava/lang/StringBuilder;
    .end local v6           #bytes:[B
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    .end local v11           #i$:I
    .end local v13           #len$:I
    .end local v15           #lines:[Ljava/lang/String;
    .end local v17           #quotedPrintable:Ljava/lang/String;
    .end local v23           #value:Ljava/lang/String;
    :catch_15d
    move-exception v8

    .line 219
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 224
    .end local v5           #byteVector:Ljava/util/Vector;,"Ljava/util/Vector<[B>;"
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #encoding:Ljava/lang/String;
    .end local v20           #size:I
    .end local v22           #tmpValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_161
    :goto_161
    if-nez v19, :cond_225

    .line 226
    if-eqz v7, :cond_209

    .line 227
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .restart local v22       #tmpValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_16e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_207

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 229
    .restart local v23       #value:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v7}, Lcom/android/calendar/vcal/pim/VDataBuilder;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 230
    .local v18, result:Ljava/lang/String;
    if-eqz v18, :cond_202

    .line 231
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16e

    .line 190
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v18           #result:Ljava/lang/String;
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    .restart local v5       #byteVector:Ljava/util/Vector;,"Ljava/util/Vector<[B>;"
    .restart local v6       #bytes:[B
    .restart local v9       #encoding:Ljava/lang/String;
    .restart local v11       #i$:I
    .restart local v13       #len$:I
    .restart local v15       #lines:[Ljava/lang/String;
    .restart local v17       #quotedPrintable:Ljava/lang/String;
    .restart local v20       #size:I
    :cond_18c
    :try_start_18c
    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_143

    .line 196
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #builder:Ljava/lang/StringBuilder;
    .end local v6           #bytes:[B
    .end local v11           #i$:I
    .end local v13           #len$:I
    .end local v15           #lines:[Ljava/lang/String;
    .end local v17           #quotedPrintable:Ljava/lang/String;
    .end local v23           #value:Ljava/lang/String;
    :cond_19b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/calendar/vcal/pim/VDataBuilder;->listToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    move-object/from16 v24, v0

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue_bytes:[B

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue_bytes:[B

    move-object/from16 v21, v0

    .line 203
    .local v21, tmpBytes:[B
    const/4 v12, 0x0

    .line 204
    .local v12, index:I
    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_1de
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1fe

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 213
    .restart local v6       #bytes:[B
    const/16 v24, 0x0

    array-length v0, v6

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v6, v0, v1, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    array-length v0, v6

    move/from16 v24, v0
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_1fb} :catch_15d

    add-int v12, v12, v24

    goto :goto_1de

    .line 217
    .end local v6           #bytes:[B
    :cond_1fe
    const/16 v19, 0x1

    goto/16 :goto_161

    .line 233
    .end local v5           #byteVector:Ljava/util/Vector;,"Ljava/util/Vector<[B>;"
    .end local v9           #encoding:Ljava/lang/String;
    .end local v12           #index:I
    .end local v20           #size:I
    .end local v21           #tmpBytes:[B
    .restart local v18       #result:Ljava/lang/String;
    .restart local v23       #value:Ljava/lang/String;
    :cond_202
    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16e

    .line 236
    .end local v18           #result:Ljava/lang/String;
    .end local v23           #value:Ljava/lang/String;
    :cond_207
    move-object/from16 p1, v22

    .line 239
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v22           #tmpValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    move-object/from16 v24, v0

    invoke-direct/range {p0 .. p1}, Lcom/android/calendar/vcal/pim/VDataBuilder;->listToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    .line 242
    :cond_225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentVNode:Lcom/android/calendar/vcal/pim/VNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/VNode;->propList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
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
    new-instance v0, Lcom/android/calendar/vcal/pim/VNode;

    invoke-direct {v0}, Lcom/android/calendar/vcal/pim/VNode;-><init>()V

    .line 77
    .local v0, vnode:Lcom/android/calendar/vcal/pim/VNode;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/calendar/vcal/pim/VNode;->parseStatus:I

    .line 78
    iput-object p1, v0, Lcom/android/calendar/vcal/pim/VNode;->VName:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mNodeListPos:I

    .line 81
    iget-object v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    iget v2, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mNodeListPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/vcal/pim/VNode;

    iput-object v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentVNode:Lcom/android/calendar/vcal/pim/VNode;

    .line 82
    return-void
.end method
