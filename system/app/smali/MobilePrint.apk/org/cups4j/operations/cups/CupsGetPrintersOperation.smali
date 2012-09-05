.class public Lorg/cups4j/operations/cups/CupsGetPrintersOperation;
.super Lorg/cups4j/operations/IppOperation;
.source "CupsGetPrintersOperation.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/cups4j/operations/IppOperation;-><init>()V

    .line 33
    const/16 v0, 0x4002

    iput-short v0, p0, Lorg/cups4j/operations/IppOperation;->operationID:S

    .line 34
    const/16 v0, 0x2000

    iput-short v0, p0, Lorg/cups4j/operations/IppOperation;->bufferSize:S

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "port"

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/cups4j/operations/cups/CupsGetPrintersOperation;-><init>()V

    .line 39
    iput p1, p0, Lorg/cups4j/operations/IppOperation;->ippPort:I

    .line 40
    return-void
.end method


# virtual methods
.method public getPrinters(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 25
    .parameter "hostname"
    .parameter "port"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cups4j/CupsPrinter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v14, printers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/cups4j/CupsPrinter;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "requested-attributes"

    .line 49
    const-string v18, "copies-supported page-ranges-supported printer-name printer-info printer-location printer-make-and-model printer-uri-supported"

    .line 47
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v4, Lorg/cups4j/operations/cups/CupsGetPrintersOperation;

    move/from16 v0, p2

    invoke-direct {v4, v0}, Lorg/cups4j/operations/cups/CupsGetPrintersOperation;-><init>(I)V

    .line 53
    .local v4, command:Lorg/cups4j/operations/cups/CupsGetPrintersOperation;
    new-instance v17, Ljava/net/URL;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "http://"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/printers"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v6}, Lorg/cups4j/operations/cups/CupsGetPrintersOperation;->request(Ljava/net/URL;Ljava/util/Map;)Lch/ethz/vppserver/ippclient/IppResult;

    move-result-object v15

    .line 57
    .local v15, result:Lch/ethz/vppserver/ippclient/IppResult;
    invoke-virtual {v15}, Lch/ethz/vppserver/ippclient/IppResult;->getAttributeGroupList()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_48
    :goto_48
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_4f

    .line 101
    return-object v14

    .line 57
    :cond_4f
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

    .line 58
    .local v5, group:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;
    const/4 v8, 0x0

    .line 59
    .local v8, printer:Lorg/cups4j/CupsPrinter;
    invoke-virtual {v5}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getTagName()Ljava/lang/String;

    move-result-object v17

    const-string v19, "printer-attributes-tag"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_48

    .line 60
    const/4 v12, 0x0

    .line 61
    .local v12, printerURI:Ljava/lang/String;
    const/4 v11, 0x0

    .line 62
    .local v11, printerName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 63
    .local v7, modelName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 64
    .local v10, printerLocation:Ljava/lang/String;
    const/4 v9, 0x0

    .line 65
    .local v9, printerDescription:Ljava/lang/String;
    invoke-virtual {v5}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getAttribute()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_73
    :goto_73
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_95

    .line 83
    const/4 v13, 0x0

    .line 85
    .local v13, printerUrl:Ljava/net/URL;
    :try_start_7a
    new-instance v13, Ljava/net/URL;

    .end local v13           #printerUrl:Ljava/net/URL;
    invoke-direct {v13, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7f} :catch_195

    .line 93
    .restart local v13       #printerUrl:Ljava/net/URL;
    new-instance v8, Lorg/cups4j/CupsPrinter;

    .end local v8           #printer:Lorg/cups4j/CupsPrinter;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v8, v13, v11, v0}, Lorg/cups4j/CupsPrinter;-><init>(Ljava/net/URL;Ljava/lang/String;Z)V

    .line 94
    .restart local v8       #printer:Lorg/cups4j/CupsPrinter;
    invoke-virtual {v8, v10}, Lorg/cups4j/CupsPrinter;->setLocation(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v8, v9}, Lorg/cups4j/CupsPrinter;->setDescription(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v8, v7}, Lorg/cups4j/CupsPrinter;->setModelName(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 65
    .end local v13           #printerUrl:Ljava/net/URL;
    :cond_95
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/ethz/vppserver/schema/ippclient/Attribute;

    .line 66
    .local v3, attr:Lch/ethz/vppserver/schema/ippclient/Attribute;
    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v20, "printer-uri-supported"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_ce

    .line 67
    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v17

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-virtual/range {v17 .. v17}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getValue()Ljava/lang/String;

    move-result-object v17

    const-string v20, "ipp://"

    const-string v21, "http://"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    goto :goto_73

    .line 68
    :cond_ce
    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v20, "printer-name"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f3

    .line 69
    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v17

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-virtual/range {v17 .. v17}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getValue()Ljava/lang/String;

    move-result-object v11

    goto :goto_73

    .line 70
    :cond_f3
    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v20, "printer-location"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_129

    .line 71
    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_73

    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_73

    .line 72
    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v17

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-virtual/range {v17 .. v17}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getValue()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_73

    .line 73
    :cond_129
    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v20, "printer-info"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15f

    .line 74
    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_73

    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_73

    .line 75
    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v17

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-virtual/range {v17 .. v17}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getValue()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_73

    .line 77
    :cond_15f
    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v20, "printer-make-and-model"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_73

    .line 78
    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_73

    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_73

    .line 79
    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v17

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-virtual/range {v17 .. v17}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getValue()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_73

    .line 86
    .end local v3           #attr:Lch/ethz/vppserver/schema/ippclient/Attribute;
    :catch_195
    move-exception v16

    .line 87
    .local v16, t:Ljava/lang/Throwable;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    const-string v17, "cups4j"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Error encountered building URL from printer uri of printer "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 89
    const-string v19, ", uri returned was ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "].  Attribute group tag/description: ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getTagName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 90
    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 88
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v17, Ljava/lang/Exception;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v17
.end method
