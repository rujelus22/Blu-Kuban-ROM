.class public Lorg/cups4j/operations/ipp/IppGetPrinterAttributesOperation;
.super Lorg/cups4j/operations/IppOperation;
.source "IppGetPrinterAttributesOperation.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/cups4j/operations/IppOperation;-><init>()V

    .line 38
    const/16 v0, 0xb

    iput-short v0, p0, Lorg/cups4j/operations/IppOperation;->operationID:S

    .line 39
    const/16 v0, 0x2000

    iput-short v0, p0, Lorg/cups4j/operations/IppOperation;->bufferSize:S

    .line 40
    return-void
.end method


# virtual methods
.method public getIppHeader(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/cups4j/operations/ipp/IppGetPrinterAttributesOperation;->getIppHeader(Ljava/lang/String;Ljava/util/Map;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getIppHeader(Ljava/lang/String;Ljava/util/Map;)Ljava/nio/ByteBuffer;
    .registers 10
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 63
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-short v5, p0, Lorg/cups4j/operations/IppOperation;->bufferSize:S

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 65
    .local v1, ippBuf:Ljava/nio/ByteBuffer;
    iget-short v5, p0, Lorg/cups4j/operations/IppOperation;->operationID:S

    invoke-static {v1, v5}, Lch/ethz/vppserver/ippclient/IppTag;->getOperation(Ljava/nio/ByteBuffer;S)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 66
    const-string v5, "printer-uri"

    invoke-static {v1, v5, p1}, Lch/ethz/vppserver/ippclient/IppTag;->getUri(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 68
    if-nez p2, :cond_25

    .line 69
    const-string v5, "requested-attributes"

    const-string v6, "all"

    invoke-static {v1, v5, v6}, Lch/ethz/vppserver/ippclient/IppTag;->getKeyword(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 70
    invoke-static {v1}, Lch/ethz/vppserver/ippclient/IppTag;->getEnd(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-object v2, v1

    .line 91
    .end local v1           #ippBuf:Ljava/nio/ByteBuffer;
    .local v2, ippBuf:Ljava/nio/ByteBuffer;
    :goto_24
    return-object v2

    .line 75
    .end local v2           #ippBuf:Ljava/nio/ByteBuffer;
    .restart local v1       #ippBuf:Ljava/nio/ByteBuffer;
    :cond_25
    const-string v6, "requesting-user-name"

    const-string v5, "requesting-user-name"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v1, v6, v5}, Lch/ethz/vppserver/ippclient/IppTag;->getNameWithoutLanguage(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 76
    const-string v5, "requested-attributes"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_58

    .line 77
    const-string v5, "requested-attributes"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, sta:[Ljava/lang/String;
    if-eqz v4, :cond_58

    .line 79
    const-string v5, "requested-attributes"

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v1, v5, v6}, Lch/ethz/vppserver/ippclient/IppTag;->getKeyword(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 80
    array-length v3, v4

    .line 81
    .local v3, l:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_56
    if-lt v0, v3, :cond_6f

    .line 87
    .end local v0           #i:I
    .end local v3           #l:I
    .end local v4           #sta:[Ljava/lang/String;
    :cond_58
    const-string v6, "document-format"

    const-string v5, "document-format"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v1, v6, v5}, Lch/ethz/vppserver/ippclient/IppTag;->getNameWithoutLanguage(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 89
    invoke-static {v1}, Lch/ethz/vppserver/ippclient/IppTag;->getEnd(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-object v2, v1

    .line 91
    .end local v1           #ippBuf:Ljava/nio/ByteBuffer;
    .restart local v2       #ippBuf:Ljava/nio/ByteBuffer;
    goto :goto_24

    .line 82
    .end local v2           #ippBuf:Ljava/nio/ByteBuffer;
    .restart local v0       #i:I
    .restart local v1       #ippBuf:Ljava/nio/ByteBuffer;
    .restart local v3       #l:I
    .restart local v4       #sta:[Ljava/lang/String;
    :cond_6f
    const/4 v5, 0x0

    aget-object v6, v4, v0

    invoke-static {v1, v5, v6}, Lch/ethz/vppserver/ippclient/IppTag;->getKeyword(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_56
.end method

.method public getPrinter(Ljava/lang/String;I)Lorg/cups4j/CupsPrinter;
    .registers 22
    .parameter "hostname"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "requested-attributes"

    .line 99
    const-string v15, "copies-supported page-ranges-supported printer-name printer-info printer-location printer-make-and-model printer-uri-supported"

    .line 97
    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v14, Ljava/net/URL;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "http://"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lorg/cups4j/operations/ipp/IppGetPrinterAttributesOperation;->request(Ljava/net/URL;Ljava/util/Map;)Lch/ethz/vppserver/ippclient/IppResult;

    move-result-object v12

    .line 103
    .local v12, result:Lch/ethz/vppserver/ippclient/IppResult;
    const/4 v10, 0x0

    .line 104
    .local v10, printerURI:Ljava/lang/String;
    const/4 v9, 0x0

    .line 105
    .local v9, printerName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 106
    .local v5, modelName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 107
    .local v8, printerLocation:Ljava/lang/String;
    const/4 v7, 0x0

    .line 108
    .local v7, printerDescription:Ljava/lang/String;
    const/4 v11, 0x0

    .line 110
    .local v11, printerUrl:Ljava/net/URL;
    invoke-virtual {v12}, Lch/ethz/vppserver/ippclient/IppResult;->getAttributeGroupList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_36
    :goto_36
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_4d

    .line 141
    const/4 v6, 0x0

    .line 142
    .local v6, printer:Lorg/cups4j/CupsPrinter;
    new-instance v6, Lorg/cups4j/CupsPrinter;

    .end local v6           #printer:Lorg/cups4j/CupsPrinter;
    const/4 v14, 0x0

    invoke-direct {v6, v11, v9, v14}, Lorg/cups4j/CupsPrinter;-><init>(Ljava/net/URL;Ljava/lang/String;Z)V

    .line 143
    .restart local v6       #printer:Lorg/cups4j/CupsPrinter;
    invoke-virtual {v6, v8}, Lorg/cups4j/CupsPrinter;->setLocation(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v6, v7}, Lorg/cups4j/CupsPrinter;->setDescription(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v6, v5}, Lorg/cups4j/CupsPrinter;->setModelName(Ljava/lang/String;)V

    .line 146
    return-object v6

    .line 110
    .end local v6           #printer:Lorg/cups4j/CupsPrinter;
    :cond_4d
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

    .line 111
    .local v3, group:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;
    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getTagName()Ljava/lang/String;

    move-result-object v14

    const-string v16, "printer-attributes-tag"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_36

    .line 112
    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getAttribute()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_69
    :goto_69
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_75

    .line 131
    :try_start_6f
    new-instance v11, Ljava/net/URL;

    .end local v11           #printerUrl:Ljava/net/URL;
    invoke-direct {v11, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_74} :catch_15f

    .restart local v11       #printerUrl:Ljava/net/URL;
    goto :goto_36

    .line 112
    :cond_75
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/ethz/vppserver/schema/ippclient/Attribute;

    .line 113
    .local v2, attr:Lch/ethz/vppserver/schema/ippclient/Attribute;
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v17, "printer-uri-supported"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a8

    .line 114
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v14

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-virtual {v14}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getValue()Ljava/lang/String;

    move-result-object v14

    const-string v17, "ipp://"

    const-string v18, "http://"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    goto :goto_69

    .line 115
    :cond_a8
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v17, "printer-name"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c9

    .line 116
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v14

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-virtual {v14}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getValue()Ljava/lang/String;

    move-result-object v9

    goto :goto_69

    .line 117
    :cond_c9
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v17, "printer-location"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_fb

    .line 118
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_69

    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_69

    .line 119
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v14

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-virtual {v14}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getValue()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_69

    .line 120
    :cond_fb
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v17, "printer-info"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12d

    .line 121
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_69

    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_69

    .line 122
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v14

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-virtual {v14}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getValue()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_69

    .line 124
    :cond_12d
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v17, "printer-make-and-model"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_69

    .line 125
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_69

    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_69

    .line 126
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v14

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-virtual {v14}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getValue()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_69

    .line 132
    .end local v2           #attr:Lch/ethz/vppserver/schema/ippclient/Attribute;
    .end local v11           #printerUrl:Ljava/net/URL;
    :catch_15f
    move-exception v13

    .line 133
    .local v13, t:Ljava/lang/Throwable;
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    const-string v14, "cups4j"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Error encountered building URL from printer uri of printer "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 135
    const-string v16, ", uri returned was ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "].  Attribute group tag/description: ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getTagName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 136
    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 134
    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v14, Ljava/lang/Exception;

    invoke-direct {v14, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v14
.end method
