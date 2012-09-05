.class public Lorg/cups4j/operations/ipp/IppGetJobAttributesOperation;
.super Lorg/cups4j/operations/IppOperation;
.source "IppGetJobAttributesOperation.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/cups4j/operations/IppOperation;-><init>()V

    .line 35
    const/16 v0, 0x9

    iput-short v0, p0, Lorg/cups4j/operations/IppOperation;->operationID:S

    .line 36
    const/16 v0, 0x2000

    iput-short v0, p0, Lorg/cups4j/operations/IppOperation;->bufferSize:S

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "port"

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/cups4j/operations/ipp/IppGetJobAttributesOperation;-><init>()V

    .line 41
    iput p1, p0, Lorg/cups4j/operations/IppOperation;->ippPort:I

    .line 42
    return-void
.end method


# virtual methods
.method public getIppHeader(Ljava/net/URL;Ljava/util/Map;)Ljava/nio/ByteBuffer;
    .registers 12
    .parameter "uri"
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
    .line 54
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-short v7, p0, Lorg/cups4j/operations/IppOperation;->bufferSize:S

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 55
    .local v1, ippBuf:Ljava/nio/ByteBuffer;
    iget-short v7, p0, Lorg/cups4j/operations/IppOperation;->operationID:S

    invoke-static {v1, v7}, Lch/ethz/vppserver/ippclient/IppTag;->getOperation(Ljava/nio/ByteBuffer;S)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 57
    if-nez p2, :cond_21

    .line 58
    const-string v7, "job-uri"

    invoke-virtual {p0, p1}, Lorg/cups4j/operations/ipp/IppGetJobAttributesOperation;->stripPortNumber(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v7, v8}, Lch/ethz/vppserver/ippclient/IppTag;->getUri(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 59
    invoke-static {v1}, Lch/ethz/vppserver/ippclient/IppTag;->getEnd(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-object v2, v1

    .line 98
    .end local v1           #ippBuf:Ljava/nio/ByteBuffer;
    .local v2, ippBuf:Ljava/nio/ByteBuffer;
    :goto_20
    return-object v2

    .line 64
    .end local v2           #ippBuf:Ljava/nio/ByteBuffer;
    .restart local v1       #ippBuf:Ljava/nio/ByteBuffer;
    :cond_21
    const-string v7, "job-id"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_a6

    .line 65
    const-string v7, "job-uri"

    invoke-virtual {p0, p1}, Lorg/cups4j/operations/ipp/IppGetJobAttributesOperation;->stripPortNumber(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v7, v8}, Lch/ethz/vppserver/ippclient/IppTag;->getUri(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 72
    :goto_33
    const-string v8, "requesting-user-name"

    const-string v7, "requesting-user-name"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v1, v8, v7}, Lch/ethz/vppserver/ippclient/IppTag;->getNameWithoutLanguage(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 74
    const-string v7, "requested-attributes"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_66

    .line 75
    const-string v7, "requested-attributes"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, sta:[Ljava/lang/String;
    if-eqz v5, :cond_66

    .line 77
    const-string v7, "requested-attributes"

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-static {v1, v7, v8}, Lch/ethz/vppserver/ippclient/IppTag;->getKeyword(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 78
    array-length v4, v5

    .line 79
    .local v4, l:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_64
    if-lt v0, v4, :cond_c4

    .line 85
    .end local v0           #i:I
    .end local v4           #l:I
    .end local v5           #sta:[Ljava/lang/String;
    :cond_66
    const-string v7, "which-jobs"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_7c

    .line 86
    const-string v8, "which-jobs"

    const-string v7, "which-jobs"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v1, v8, v7}, Lch/ethz/vppserver/ippclient/IppTag;->getKeyword(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 89
    :cond_7c
    const-string v7, "my-jobs"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_9c

    .line 90
    const/4 v6, 0x0

    .line 91
    .local v6, value:Z
    const-string v7, "my-jobs"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_96

    .line 92
    const/4 v6, 0x1

    .line 94
    :cond_96
    const-string v7, "my-jobs"

    invoke-static {v1, v7, v6}, Lch/ethz/vppserver/ippclient/IppTag;->getBoolean(Ljava/nio/ByteBuffer;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 96
    .end local v6           #value:Z
    :cond_9c
    invoke-static {v1}, Lch/ethz/vppserver/ippclient/IppTag;->getEnd(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-object v2, v1

    .line 98
    .end local v1           #ippBuf:Ljava/nio/ByteBuffer;
    .restart local v2       #ippBuf:Ljava/nio/ByteBuffer;
    goto/16 :goto_20

    .line 67
    .end local v2           #ippBuf:Ljava/nio/ByteBuffer;
    .restart local v1       #ippBuf:Ljava/nio/ByteBuffer;
    :cond_a6
    const-string v7, "printer-uri"

    invoke-virtual {p0, p1}, Lorg/cups4j/operations/ipp/IppGetJobAttributesOperation;->stripPortNumber(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v7, v8}, Lch/ethz/vppserver/ippclient/IppTag;->getUri(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 68
    const-string v7, "job-id"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 69
    .local v3, jobId:I
    const-string v7, "job-id"

    invoke-static {v1, v7, v3}, Lch/ethz/vppserver/ippclient/IppTag;->getInteger(Ljava/nio/ByteBuffer;Ljava/lang/String;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto/16 :goto_33

    .line 80
    .end local v3           #jobId:I
    .restart local v0       #i:I
    .restart local v4       #l:I
    .restart local v5       #sta:[Ljava/lang/String;
    :cond_c4
    const/4 v7, 0x0

    aget-object v8, v5, v0

    invoke-static {v1, v7, v8}, Lch/ethz/vppserver/ippclient/IppTag;->getKeyword(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_64
.end method

.method public getPrintJobAttributes(Ljava/lang/String;Ljava/lang/String;II)Lorg/cups4j/PrintJobAttributes;
    .registers 16
    .parameter "hostname"
    .parameter "userName"
    .parameter "port"
    .parameter "jobID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v3, 0x0

    .line 105
    .local v3, job:Lorg/cups4j/PrintJobAttributes;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 106
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "requested-attributes"

    .line 107
    const-string v7, "page-ranges print-quality sides job-uri job-id job-state job-printer-uri job-name job-originating-user-name"

    .line 106
    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v6, "requesting-user-name"

    invoke-interface {v4, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v6, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http://"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/jobs/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v4}, Lorg/cups4j/operations/ipp/IppGetJobAttributesOperation;->request(Ljava/net/URL;Ljava/util/Map;)Lch/ethz/vppserver/ippclient/IppResult;

    move-result-object v5

    .line 112
    .local v5, result:Lch/ethz/vppserver/ippclient/IppResult;
    invoke-virtual {v5}, Lch/ethz/vppserver/ippclient/IppResult;->getAttributeGroupList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_43

    .line 136
    return-object v3

    .line 112
    :cond_43
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

    .line 113
    .local v2, group:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;
    const-string v7, "job-attributes-tag"

    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getTagName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 114
    new-instance v3, Lorg/cups4j/PrintJobAttributes;

    .end local v3           #job:Lorg/cups4j/PrintJobAttributes;
    invoke-direct {v3}, Lorg/cups4j/PrintJobAttributes;-><init>()V

    .line 115
    .restart local v3       #job:Lorg/cups4j/PrintJobAttributes;
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getAttribute()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_62
    :goto_62
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/ethz/vppserver/schema/ippclient/Attribute;

    .line 116
    .local v1, attr:Lch/ethz/vppserver/schema/ippclient/Attribute;
    invoke-virtual {v1}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_62

    invoke-virtual {v1}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_62

    .line 117
    invoke-virtual {p0, v1}, Lorg/cups4j/operations/ipp/IppGetJobAttributesOperation;->getAttributeValue(Lch/ethz/vppserver/schema/ippclient/Attribute;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, attValue:Ljava/lang/String;
    const-string v8, "job-uri"

    invoke-virtual {v1}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9f

    .line 120
    new-instance v8, Ljava/net/URL;

    const-string v9, "ipp://"

    const-string v10, "http://"

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lorg/cups4j/PrintJobAttributes;->setJobURL(Ljava/net/URL;)V

    goto :goto_62

    .line 121
    :cond_9f
    const-string v8, "job-id"

    invoke-virtual {v1}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b3

    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v8}, Lorg/cups4j/PrintJobAttributes;->setJobID(I)V

    goto :goto_62

    .line 123
    :cond_b3
    const-string v8, "job-state"

    invoke-virtual {v1}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c7

    .line 124
    invoke-static {v0}, Lorg/cups4j/JobStateEnum;->fromString(Ljava/lang/String;)Lorg/cups4j/JobStateEnum;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/cups4j/PrintJobAttributes;->setJobState(Lorg/cups4j/JobStateEnum;)V

    goto :goto_62

    .line 125
    :cond_c7
    const-string v8, "job-printer-uri"

    invoke-virtual {v1}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e5

    .line 126
    new-instance v8, Ljava/net/URL;

    const-string v9, "ipp://"

    const-string v10, "http://"

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lorg/cups4j/PrintJobAttributes;->setPrinterURL(Ljava/net/URL;)V

    goto/16 :goto_62

    .line 127
    :cond_e5
    const-string v8, "job-name"

    invoke-virtual {v1}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f6

    .line 128
    invoke-virtual {v3, v0}, Lorg/cups4j/PrintJobAttributes;->setJobName(Ljava/lang/String;)V

    goto/16 :goto_62

    .line 129
    :cond_f6
    const-string v8, "job-originating-user-name"

    invoke-virtual {v1}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_62

    .line 130
    invoke-virtual {v3, v0}, Lorg/cups4j/PrintJobAttributes;->setUserName(Ljava/lang/String;)V

    goto/16 :goto_62
.end method
