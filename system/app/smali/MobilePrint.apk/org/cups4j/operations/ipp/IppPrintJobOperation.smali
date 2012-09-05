.class public Lorg/cups4j/operations/ipp/IppPrintJobOperation;
.super Lorg/cups4j/operations/IppOperation;
.source "IppPrintJobOperation.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/cups4j/operations/IppOperation;-><init>()V

    .line 31
    const/4 v0, 0x2

    iput-short v0, p0, Lorg/cups4j/operations/IppOperation;->operationID:S

    .line 32
    const/16 v0, 0x2000

    iput-short v0, p0, Lorg/cups4j/operations/IppOperation;->bufferSize:S

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "port"

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/cups4j/operations/ipp/IppPrintJobOperation;-><init>()V

    .line 37
    iput p1, p0, Lorg/cups4j/operations/IppOperation;->ippPort:I

    .line 38
    return-void
.end method

.method private static getJobAttributes(Ljava/nio/ByteBuffer;[Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 23
    .parameter "ippBuf"
    .parameter "attributeBlocks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 133
    if-nez p0, :cond_c

    .line 134
    const-string v17, "cups4j"

    const-string v18, "IppPrintJobOperation.getJobAttributes(): ippBuf is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/16 p0, 0x0

    .line 198
    .end local p0
    :cond_b
    return-object p0

    .line 137
    .restart local p0
    :cond_c
    if-eqz p1, :cond_b

    .line 141
    invoke-static/range {p0 .. p0}, Lch/ethz/vppserver/ippclient/IppTag;->getJobAttributesTag(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 143
    move-object/from16 v0, p1

    array-length v5, v0

    .line 144
    .local v5, l:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_16
    if-ge v4, v5, :cond_b

    .line 145
    aget-object v17, p1, v4

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, attr:[Ljava/lang/String;
    if-eqz v2, :cond_b

    array-length v0, v2

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 149
    const/16 v17, 0x0

    aget-object v7, v2, v17

    .line 150
    .local v7, name:Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v11, v2, v17

    .line 151
    .local v11, tagName:Ljava/lang/String;
    const/16 v17, 0x2

    aget-object v12, v2, v17

    .line 153
    .local v12, value:Ljava/lang/String;
    const-string v17, "boolean"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_65

    .line 154
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5a

    .line 155
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v7, v1}, Lch/ethz/vppserver/ippclient/IppTag;->getBoolean(Ljava/nio/ByteBuffer;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 144
    :cond_57
    :goto_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 157
    :cond_5a
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v7, v1}, Lch/ethz/vppserver/ippclient/IppTag;->getBoolean(Ljava/nio/ByteBuffer;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_57

    .line 159
    :cond_65
    const-string v17, "integer"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7c

    .line 160
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v7, v1}, Lch/ethz/vppserver/ippclient/IppTag;->getInteger(Ljava/nio/ByteBuffer;Ljava/lang/String;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_57

    .line 161
    :cond_7c
    const-string v17, "rangeOfInteger"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a5

    .line 162
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 163
    .local v8, range:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v17, v8, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 164
    .local v6, low:I
    const/16 v17, 0x1

    aget-object v17, v8, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 165
    .local v3, high:I
    move-object/from16 v0, p0

    invoke-static {v0, v7, v6, v3}, Lch/ethz/vppserver/ippclient/IppTag;->getRangeOfInteger(Ljava/nio/ByteBuffer;Ljava/lang/String;II)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_57

    .line 166
    .end local v3           #high:I
    .end local v6           #low:I
    .end local v8           #range:[Ljava/lang/String;
    :cond_a5
    const-string v17, "setOfRangeOfInteger"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f8

    .line 167
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 169
    .local v9, ranges:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_bc
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_57

    aget-object v8, v9, v17

    .line 170
    .local v8, range:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 171
    const-string v19, "-"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 173
    .local v16, values:[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v16, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 174
    .local v13, value1:I
    move v14, v13

    .line 176
    .local v14, value2:I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_ee

    .line 177
    const/16 v19, 0x1

    aget-object v19, v16, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 181
    :cond_ee
    move-object/from16 v0, p0

    invoke-static {v0, v7, v13, v14}, Lch/ethz/vppserver/ippclient/IppTag;->getRangeOfInteger(Ljava/nio/ByteBuffer;Ljava/lang/String;II)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 182
    const/4 v7, 0x0

    .line 169
    add-int/lit8 v17, v17, 0x1

    goto :goto_bc

    .line 184
    .end local v8           #range:Ljava/lang/String;
    .end local v9           #ranges:[Ljava/lang/String;
    .end local v13           #value1:I
    .end local v14           #value2:I
    .end local v16           #values:[Ljava/lang/String;
    :cond_f8
    const-string v17, "keyword"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10a

    .line 185
    move-object/from16 v0, p0

    invoke-static {v0, v7, v12}, Lch/ethz/vppserver/ippclient/IppTag;->getKeyword(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto/16 :goto_57

    .line 186
    :cond_10a
    const-string v17, "name"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11c

    .line 187
    move-object/from16 v0, p0

    invoke-static {v0, v7, v12}, Lch/ethz/vppserver/ippclient/IppTag;->getNameWithoutLanguage(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto/16 :goto_57

    .line 188
    :cond_11c
    const-string v17, "enum"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_134

    .line 189
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v7, v1}, Lch/ethz/vppserver/ippclient/IppTag;->getEnum(Ljava/nio/ByteBuffer;Ljava/lang/String;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto/16 :goto_57

    .line 190
    :cond_134
    const-string v17, "resolution"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_57

    .line 191
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 192
    .local v10, resolution:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v17, v10, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 193
    .restart local v13       #value1:I
    const/16 v17, 0x1

    aget-object v17, v10, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 194
    .restart local v14       #value2:I
    const/16 v17, 0x2

    aget-object v17, v10, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Byte;->byteValue()B

    move-result v15

    .line 195
    .local v15, value3:B
    move-object/from16 v0, p0

    invoke-static {v0, v7, v13, v14, v15}, Lch/ethz/vppserver/ippclient/IppTag;->getResolution(Ljava/nio/ByteBuffer;Ljava/lang/String;IIB)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto/16 :goto_57
.end method


# virtual methods
.method public getIppHeader(Ljava/net/URL;Ljava/util/Map;)Ljava/nio/ByteBuffer;
    .registers 8
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 53
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_b

    .line 54
    const-string v3, "cups4j"

    const-string v4, "IppPrintJobOperation.getIppHeader(): uri is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v1, 0x0

    .line 120
    :goto_a
    return-object v1

    .line 58
    :cond_b
    iget-short v3, p0, Lorg/cups4j/operations/IppOperation;->bufferSize:S

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 59
    .local v1, ippBuf:Ljava/nio/ByteBuffer;
    iget-short v3, p0, Lorg/cups4j/operations/IppOperation;->operationID:S

    invoke-static {v1, v3}, Lch/ethz/vppserver/ippclient/IppTag;->getOperation(Ljava/nio/ByteBuffer;S)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 60
    const-string v3, "printer-uri"

    invoke-virtual {p0, p1}, Lorg/cups4j/operations/ipp/IppPrintJobOperation;->stripPortNumber(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lch/ethz/vppserver/ippclient/IppTag;->getUri(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 62
    if-nez p2, :cond_2b

    .line 63
    invoke-static {v1}, Lch/ethz/vppserver/ippclient/IppTag;->getEnd(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_a

    .line 68
    :cond_2b
    const-string v4, "requesting-user-name"

    const-string v3, "requesting-user-name"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v4, v3}, Lch/ethz/vppserver/ippclient/IppTag;->getNameWithoutLanguage(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 70
    const-string v3, "job-name"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4f

    .line 71
    const-string v4, "job-name"

    const-string v3, "job-name"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v4, v3}, Lch/ethz/vppserver/ippclient/IppTag;->getNameWithoutLanguage(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 74
    :cond_4f
    const-string v3, "ipp-attribute-fidelity"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6f

    .line 75
    const/4 v2, 0x0

    .line 76
    .local v2, value:Z
    const-string v3, "ipp-attribute-fidelity"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 77
    const/4 v2, 0x1

    .line 79
    :cond_69
    const-string v3, "ipp-attribute-fidelity"

    invoke-static {v1, v3, v2}, Lch/ethz/vppserver/ippclient/IppTag;->getBoolean(Ljava/nio/ByteBuffer;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 82
    .end local v2           #value:Z
    :cond_6f
    const-string v3, "document-name"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_85

    .line 83
    const-string v4, "document-name"

    const-string v3, "document-name"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v4, v3}, Lch/ethz/vppserver/ippclient/IppTag;->getNameWithoutLanguage(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 86
    :cond_85
    const-string v3, "compression"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9b

    .line 87
    const-string v4, "compression"

    const-string v3, "compression"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v4, v3}, Lch/ethz/vppserver/ippclient/IppTag;->getKeyword(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 90
    :cond_9b
    const-string v3, "document-format"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_b1

    .line 91
    const-string v4, "document-format"

    const-string v3, "document-format"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v4, v3}, Lch/ethz/vppserver/ippclient/IppTag;->getMimeMediaType(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 94
    :cond_b1
    const-string v3, "document-natural-language"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c7

    .line 95
    const-string v4, "document-natural-language"

    const-string v3, "document-natural-language"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v4, v3}, Lch/ethz/vppserver/ippclient/IppTag;->getNaturalLanguage(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 98
    :cond_c7
    const-string v3, "job-k-octets"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_e1

    .line 99
    const-string v3, "job-k-octets"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 100
    .local v2, value:I
    const-string v3, "job-k-octets"

    invoke-static {v1, v3, v2}, Lch/ethz/vppserver/ippclient/IppTag;->getInteger(Ljava/nio/ByteBuffer;Ljava/lang/String;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 103
    .end local v2           #value:I
    :cond_e1
    const-string v3, "job-impressions"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_fb

    .line 104
    const-string v3, "job-impressions"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 105
    .restart local v2       #value:I
    const-string v3, "job-impressions"

    invoke-static {v1, v3, v2}, Lch/ethz/vppserver/ippclient/IppTag;->getInteger(Ljava/nio/ByteBuffer;Ljava/lang/String;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 108
    .end local v2           #value:I
    :cond_fb
    const-string v3, "job-media-sheets"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_115

    .line 109
    const-string v3, "job-media-sheets"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 110
    .restart local v2       #value:I
    const-string v3, "job-media-sheets"

    invoke-static {v1, v3, v2}, Lch/ethz/vppserver/ippclient/IppTag;->getInteger(Ljava/nio/ByteBuffer;Ljava/lang/String;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 113
    .end local v2           #value:I
    :cond_115
    const-string v3, "job-attributes"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_12f

    .line 114
    const-string v3, "job-attributes"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, attributeBlocks:[Ljava/lang/String;
    invoke-static {v1, v0}, Lorg/cups4j/operations/ipp/IppPrintJobOperation;->getJobAttributes(Ljava/nio/ByteBuffer;[Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 118
    .end local v0           #attributeBlocks:[Ljava/lang/String;
    :cond_12f
    invoke-static {v1}, Lch/ethz/vppserver/ippclient/IppTag;->getEnd(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto/16 :goto_a
.end method
