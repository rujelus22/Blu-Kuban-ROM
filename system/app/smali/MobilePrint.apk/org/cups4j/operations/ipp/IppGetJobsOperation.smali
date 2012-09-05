.class public Lorg/cups4j/operations/ipp/IppGetJobsOperation;
.super Lorg/cups4j/operations/IppOperation;
.source "IppGetJobsOperation.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/cups4j/operations/IppOperation;-><init>()V

    .line 40
    const/16 v0, 0xa

    iput-short v0, p0, Lorg/cups4j/operations/IppOperation;->operationID:S

    .line 41
    const/16 v0, 0x2000

    iput-short v0, p0, Lorg/cups4j/operations/IppOperation;->bufferSize:S

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "port"

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/cups4j/operations/ipp/IppGetJobsOperation;-><init>()V

    .line 46
    iput p1, p0, Lorg/cups4j/operations/IppOperation;->ippPort:I

    .line 47
    return-void
.end method


# virtual methods
.method public getIppHeader(Ljava/net/URL;Ljava/util/Map;)Ljava/nio/ByteBuffer;
    .registers 10
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
    .line 59
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-short v5, p0, Lorg/cups4j/operations/IppOperation;->bufferSize:S

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 61
    .local v1, ippBuf:Ljava/nio/ByteBuffer;
    const-string v5, "requested-attributes"

    const-string v6, "job-name job-id job-state job-originating-user-name job-printer-uri copies"

    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-short v5, p0, Lorg/cups4j/operations/IppOperation;->operationID:S

    invoke-static {v1, v5}, Lch/ethz/vppserver/ippclient/IppTag;->getOperation(Ljava/nio/ByteBuffer;S)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 64
    const-string v5, "printer-uri"

    invoke-virtual {p0, p1}, Lorg/cups4j/operations/ipp/IppGetJobsOperation;->stripPortNumber(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lch/ethz/vppserver/ippclient/IppTag;->getUri(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 66
    const-string v6, "requesting-user-name"

    const-string v5, "requesting-user-name"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v1, v6, v5}, Lch/ethz/vppserver/ippclient/IppTag;->getNameWithoutLanguage(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 68
    const-string v5, "limit"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_45

    .line 69
    const-string v5, "limit"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 70
    .local v4, value:I
    const-string v5, "limit"

    invoke-static {v1, v5, v4}, Lch/ethz/vppserver/ippclient/IppTag;->getInteger(Ljava/nio/ByteBuffer;Ljava/lang/String;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 73
    .end local v4           #value:I
    :cond_45
    const-string v5, "requested-attributes"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6a

    .line 74
    const-string v5, "requested-attributes"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, sta:[Ljava/lang/String;
    if-eqz v3, :cond_6a

    .line 76
    const-string v5, "requested-attributes"

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v1, v5, v6}, Lch/ethz/vppserver/ippclient/IppTag;->getKeyword(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 77
    array-length v2, v3

    .line 78
    .local v2, l:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_68
    if-lt v0, v2, :cond_a8

    .line 84
    .end local v0           #i:I
    .end local v2           #l:I
    .end local v3           #sta:[Ljava/lang/String;
    :cond_6a
    const-string v5, "which-jobs"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_80

    .line 85
    const-string v6, "which-jobs"

    const-string v5, "which-jobs"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v1, v6, v5}, Lch/ethz/vppserver/ippclient/IppTag;->getKeyword(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 88
    :cond_80
    const-string v5, "my-jobs"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a0

    .line 89
    const/4 v4, 0x0

    .line 90
    .local v4, value:Z
    const-string v5, "my-jobs"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 91
    const/4 v4, 0x1

    .line 93
    :cond_9a
    const-string v5, "my-jobs"

    invoke-static {v1, v5, v4}, Lch/ethz/vppserver/ippclient/IppTag;->getBoolean(Ljava/nio/ByteBuffer;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 96
    .end local v4           #value:Z
    :cond_a0
    invoke-static {v1}, Lch/ethz/vppserver/ippclient/IppTag;->getEnd(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 98
    return-object v1

    .line 79
    .restart local v0       #i:I
    .restart local v2       #l:I
    .restart local v3       #sta:[Ljava/lang/String;
    :cond_a8
    const/4 v5, 0x0

    aget-object v6, v3, v0

    invoke-static {v1, v5, v6}, Lch/ethz/vppserver/ippclient/IppTag;->getKeyword(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_68
.end method

.method public getPrintJobs(Lorg/cups4j/CupsPrinter;Lorg/cups4j/WhichJobsEnum;Ljava/lang/String;Z)Ljava/util/List;
    .registers 17
    .parameter "printer"
    .parameter "whichJobs"
    .parameter "userName"
    .parameter "myJobs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/cups4j/CupsPrinter;",
            "Lorg/cups4j/WhichJobsEnum;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/cups4j/PrintJobAttributes;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v4, jobs:Ljava/util/List;,"Ljava/util/List<Lorg/cups4j/PrintJobAttributes;>;"
    const/4 v3, 0x0

    .line 105
    .local v3, jobAttributes:Lorg/cups4j/PrintJobAttributes;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 107
    .local v5, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p3, :cond_f

    .line 108
    const-string p3, "anonymous"

    .line 109
    :cond_f
    const-string v7, "requesting-user-name"

    invoke-interface {v5, v7, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v7, "which-jobs"

    invoke-virtual {p2}, Lorg/cups4j/WhichJobsEnum;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    if-eqz p4, :cond_26

    .line 113
    const-string v7, "my-jobs"

    const-string v8, "true"

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_26
    const-string v7, "requested-attributes"

    .line 116
    const-string v8, "page-ranges print-quality sides job-uri job-id job-state job-printer-uri job-name job-originating-user-name"

    .line 115
    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {p1}, Lorg/cups4j/CupsPrinter;->getPrinterURL()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {p0, v7, v5}, Lorg/cups4j/operations/ipp/IppGetJobsOperation;->request(Ljava/net/URL;Ljava/util/Map;)Lch/ethz/vppserver/ippclient/IppResult;

    move-result-object v6

    .line 122
    .local v6, result:Lch/ethz/vppserver/ippclient/IppResult;
    invoke-virtual {v6}, Lch/ethz/vppserver/ippclient/IppResult;->getAttributeGroupList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3d
    :goto_3d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_44

    .line 148
    return-object v4

    .line 122
    :cond_44
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

    .line 123
    .local v2, group:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;
    const-string v8, "job-attributes-tag"

    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getTagName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 124
    new-instance v3, Lorg/cups4j/PrintJobAttributes;

    .end local v3           #jobAttributes:Lorg/cups4j/PrintJobAttributes;
    invoke-direct {v3}, Lorg/cups4j/PrintJobAttributes;-><init>()V

    .line 125
    .restart local v3       #jobAttributes:Lorg/cups4j/PrintJobAttributes;
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getAttribute()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_63
    :goto_63
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_6d

    .line 144
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 125
    :cond_6d
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/ethz/vppserver/schema/ippclient/Attribute;

    .line 126
    .local v1, attr:Lch/ethz/vppserver/schema/ippclient/Attribute;
    invoke-virtual {v1}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_63

    invoke-virtual {v1}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_63

    .line 127
    invoke-virtual {p0, v1}, Lorg/cups4j/operations/ipp/IppGetJobsOperation;->getAttributeValue(Lch/ethz/vppserver/schema/ippclient/Attribute;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, attValue:Ljava/lang/String;
    const-string v9, "job-uri"

    invoke-virtual {v1}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a4

    .line 130
    new-instance v9, Ljava/net/URL;

    const-string v10, "ipp://"

    const-string v11, "http://"

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Lorg/cups4j/PrintJobAttributes;->setJobURL(Ljava/net/URL;)V

    goto :goto_63

    .line 131
    :cond_a4
    const-string v9, "job-id"

    invoke-virtual {v1}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b8

    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v9}, Lorg/cups4j/PrintJobAttributes;->setJobID(I)V

    goto :goto_63

    .line 133
    :cond_b8
    const-string v9, "job-state"

    invoke-virtual {v1}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_cc

    .line 134
    invoke-static {v0}, Lorg/cups4j/JobStateEnum;->fromString(Ljava/lang/String;)Lorg/cups4j/JobStateEnum;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/cups4j/PrintJobAttributes;->setJobState(Lorg/cups4j/JobStateEnum;)V

    goto :goto_63

    .line 135
    :cond_cc
    const-string v9, "job-printer-uri"

    invoke-virtual {v1}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ea

    .line 136
    new-instance v9, Ljava/net/URL;

    const-string v10, "ipp://"

    const-string v11, "http://"

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Lorg/cups4j/PrintJobAttributes;->setPrinterURL(Ljava/net/URL;)V

    goto/16 :goto_63

    .line 137
    :cond_ea
    const-string v9, "job-name"

    invoke-virtual {v1}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fb

    .line 138
    invoke-virtual {v3, v0}, Lorg/cups4j/PrintJobAttributes;->setJobName(Ljava/lang/String;)V

    goto/16 :goto_63

    .line 139
    :cond_fb
    const-string v9, "job-originating-user-name"

    invoke-virtual {v1}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_63

    .line 140
    invoke-virtual {v3, v0}, Lorg/cups4j/PrintJobAttributes;->setUserName(Ljava/lang/String;)V

    goto/16 :goto_63
.end method
