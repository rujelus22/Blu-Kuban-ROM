.class public Lorg/cups4j/operations/cups/CupsGetDefaultOperation;
.super Lorg/cups4j/operations/IppOperation;
.source "CupsGetDefaultOperation.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/cups4j/operations/IppOperation;-><init>()V

    .line 29
    const/16 v0, 0x4001

    iput-short v0, p0, Lorg/cups4j/operations/IppOperation;->operationID:S

    .line 30
    const/16 v0, 0x2000

    iput-short v0, p0, Lorg/cups4j/operations/IppOperation;->bufferSize:S

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "port"

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/cups4j/operations/cups/CupsGetDefaultOperation;-><init>()V

    .line 35
    iput p1, p0, Lorg/cups4j/operations/IppOperation;->ippPort:I

    .line 36
    return-void
.end method


# virtual methods
.method public getDefaultPrinter(Ljava/lang/String;I)Lorg/cups4j/CupsPrinter;
    .registers 16
    .parameter "hostname"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    const/4 v2, 0x0

    .line 40
    .local v2, defaultPrinter:Lorg/cups4j/CupsPrinter;
    new-instance v1, Lorg/cups4j/operations/cups/CupsGetDefaultOperation;

    invoke-direct {v1, p2}, Lorg/cups4j/operations/cups/CupsGetDefaultOperation;-><init>(I)V

    .line 42
    .local v1, command:Lorg/cups4j/operations/cups/CupsGetDefaultOperation;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "requested-attributes"

    const-string v9, "printer-name printer-uri-supported"

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v8, Ljava/net/URL;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/printers"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v4}, Lorg/cups4j/operations/cups/CupsGetDefaultOperation;->request(Ljava/net/URL;Ljava/util/Map;)Lch/ethz/vppserver/ippclient/IppResult;

    move-result-object v7

    .line 46
    .local v7, result:Lch/ethz/vppserver/ippclient/IppResult;
    invoke-virtual {v7}, Lch/ethz/vppserver/ippclient/IppResult;->getAttributeGroupList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_38
    :goto_38
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3f

    .line 61
    return-object v2

    .line 46
    :cond_3f
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

    .line 47
    .local v3, group:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;
    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getTagName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "printer-attributes-tag"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 48
    const/4 v6, 0x0

    .line 49
    .local v6, printerURL:Ljava/lang/String;
    const/4 v5, 0x0

    .line 50
    .local v5, printerName:Ljava/lang/String;
    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getAttribute()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5b
    :goto_5b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6d

    .line 57
    new-instance v2, Lorg/cups4j/CupsPrinter;

    .end local v2           #defaultPrinter:Lorg/cups4j/CupsPrinter;
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-direct {v2, v8, v5, v10}, Lorg/cups4j/CupsPrinter;-><init>(Ljava/net/URL;Ljava/lang/String;Z)V

    .restart local v2       #defaultPrinter:Lorg/cups4j/CupsPrinter;
    goto :goto_38

    .line 50
    :cond_6d
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/ethz/vppserver/schema/ippclient/Attribute;

    .line 51
    .local v0, attr:Lch/ethz/vppserver/schema/ippclient/Attribute;
    invoke-virtual {v0}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v11, "printer-uri-supported"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_97

    .line 52
    invoke-virtual {v0}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v8

    const/4 v11, 0x0

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-virtual {v8}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string v11, "ipp://"

    const-string v12, "http://"

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5b

    .line 53
    :cond_97
    invoke-virtual {v0}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v11, "printer-name"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 54
    invoke-virtual {v0}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v8

    const/4 v11, 0x0

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-virtual {v8}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_5b
.end method
