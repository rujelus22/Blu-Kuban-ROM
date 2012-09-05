.class public Lorg/cups4j/CupsPrinter;
.super Ljava/lang/Object;
.source "CupsPrinter.java"


# instance fields
.field private description:Ljava/lang/String;

.field private isDefault:Z

.field private location:Ljava/lang/String;

.field private modelName:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private printerURL:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Z)V
    .registers 5
    .parameter "printerURL"
    .parameter "printerName"
    .parameter "isDefault"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lorg/cups4j/CupsPrinter;->printerURL:Ljava/net/URL;

    .line 38
    iput-object v0, p0, Lorg/cups4j/CupsPrinter;->name:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lorg/cups4j/CupsPrinter;->description:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lorg/cups4j/CupsPrinter;->modelName:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lorg/cups4j/CupsPrinter;->location:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cups4j/CupsPrinter;->isDefault:Z

    .line 53
    iput-object p1, p0, Lorg/cups4j/CupsPrinter;->printerURL:Ljava/net/URL;

    .line 54
    iput-object p2, p0, Lorg/cups4j/CupsPrinter;->name:Ljava/lang/String;

    .line 55
    iput-boolean p3, p0, Lorg/cups4j/CupsPrinter;->isDefault:Z

    .line 56
    return-void
.end method

.method private addAttribute(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_10

    if-eqz p2, :cond_10

    .line 143
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    .local v0, attribute:Ljava/lang/String;
    if-nez v0, :cond_11

    .line 145
    move-object v0, p3

    .line 149
    :goto_d
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .end local v0           #attribute:Ljava/lang/String;
    :cond_10
    return-void

    .line 147
    .restart local v0       #attribute:Ljava/lang/String;
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lorg/cups4j/CupsPrinter;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getJobStatus(I)Lorg/cups4j/JobStateEnum;
    .registers 3
    .parameter "jobID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 186
    const-string v0, "anonymous"

    invoke-virtual {p0, v0, p1}, Lorg/cups4j/CupsPrinter;->getJobStatus(Ljava/lang/String;I)Lorg/cups4j/JobStateEnum;

    move-result-object v0

    return-object v0
.end method

.method public getJobStatus(Ljava/lang/String;I)Lorg/cups4j/JobStateEnum;
    .registers 7
    .parameter "userName"
    .parameter "jobID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Lorg/cups4j/operations/ipp/IppGetJobAttributesOperation;

    .line 200
    iget-object v2, p0, Lorg/cups4j/CupsPrinter;->printerURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v2

    .line 199
    invoke-direct {v0, v2}, Lorg/cups4j/operations/ipp/IppGetJobAttributesOperation;-><init>(I)V

    .line 202
    .local v0, command:Lorg/cups4j/operations/ipp/IppGetJobAttributesOperation;
    iget-object v2, p0, Lorg/cups4j/CupsPrinter;->printerURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/cups4j/CupsPrinter;->printerURL:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v3

    .line 201
    invoke-virtual {v0, v2, p1, v3, p2}, Lorg/cups4j/operations/ipp/IppGetJobAttributesOperation;->getPrintJobAttributes(Ljava/lang/String;Ljava/lang/String;II)Lorg/cups4j/PrintJobAttributes;

    move-result-object v1

    .line 204
    .local v1, job:Lorg/cups4j/PrintJobAttributes;
    invoke-virtual {v1}, Lorg/cups4j/PrintJobAttributes;->getJobState()Lorg/cups4j/JobStateEnum;

    move-result-object v2

    return-object v2
.end method

.method public getJobs(Lorg/cups4j/WhichJobsEnum;)Ljava/util/ArrayList;
    .registers 8
    .parameter "whichJobs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/cups4j/WhichJobsEnum;",
            ")",
            "Ljava/util/ArrayList",
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
    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v1, jobs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/cups4j/PrintJobAttributes;>;"
    new-instance v0, Lorg/cups4j/operations/ipp/IppGetJobsOperation;

    .line 166
    iget-object v4, p0, Lorg/cups4j/CupsPrinter;->printerURL:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v4

    .line 165
    invoke-direct {v0, v4}, Lorg/cups4j/operations/ipp/IppGetJobsOperation;-><init>(I)V

    .line 168
    .local v0, command:Lorg/cups4j/operations/ipp/IppGetJobsOperation;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 169
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "which-jobs"

    invoke-virtual {p1}, Lorg/cups4j/WhichJobsEnum;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v4, p0, Lorg/cups4j/CupsPrinter;->printerURL:Ljava/net/URL;

    invoke-virtual {v0, v4, v2}, Lorg/cups4j/operations/ipp/IppGetJobsOperation;->request(Ljava/net/URL;Ljava/util/Map;)Lch/ethz/vppserver/ippclient/IppResult;

    move-result-object v3

    .line 173
    .local v3, result:Lch/ethz/vppserver/ippclient/IppResult;
    invoke-static {v3}, Lorg/cups4j/util/IppResultPrinter;->print(Lch/ethz/vppserver/ippclient/IppResult;)V

    .line 175
    return-object v1
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lorg/cups4j/CupsPrinter;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lorg/cups4j/CupsPrinter;->modelName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lorg/cups4j/CupsPrinter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrinterURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lorg/cups4j/CupsPrinter;->printerURL:Ljava/net/URL;

    return-object v0
.end method

.method public isDefault()Z
    .registers 2

    .prologue
    .line 222
    iget-boolean v0, p0, Lorg/cups4j/CupsPrinter;->isDefault:Z

    return v0
.end method

.method public print(Lorg/cups4j/PrintJob;)Lorg/cups4j/PrintRequestResult;
    .registers 27
    .parameter "printJob"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v11, -0x1

    .line 67
    .local v11, ippJobID:I
    invoke-virtual/range {p1 .. p1}, Lorg/cups4j/PrintJob;->getDocument()Ljava/io/InputStream;

    move-result-object v9

    .line 68
    .local v9, document:Ljava/io/InputStream;
    invoke-virtual/range {p1 .. p1}, Lorg/cups4j/PrintJob;->getUserName()Ljava/lang/String;

    move-result-object v19

    .line 69
    .local v19, userName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/cups4j/PrintJob;->getJobName()Ljava/lang/String;

    move-result-object v13

    .line 70
    .local v13, jobName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/cups4j/PrintJob;->getCopies()I

    move-result v6

    .line 71
    .local v6, copies:I
    invoke-virtual/range {p1 .. p1}, Lorg/cups4j/PrintJob;->getPageRanges()Ljava/lang/String;

    move-result-object v14

    .line 73
    .local v14, pageRanges:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/cups4j/PrintJob;->getAttributes()Ljava/util/Map;

    move-result-object v4

    .line 75
    .local v4, attributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v19, :cond_1d

    .line 76
    const-string v19, "anonymous"

    .line 78
    :cond_1d
    if-nez v4, :cond_24

    .line 79
    new-instance v4, Ljava/util/HashMap;

    .end local v4           #attributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 82
    .restart local v4       #attributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_24
    const-string v21, "requesting-user-name"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v21, "job-name"

    move-object/from16 v0, v21

    invoke-interface {v4, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const/4 v7, 0x0

    .line 86
    .local v7, copiesString:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 87
    .local v17, rangesString:Ljava/lang/StringBuffer;
    if-lez v6, :cond_56

    .line 88
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "copies:integer:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 89
    const-string v21, "job-attributes"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v4, v1, v7}, Lorg/cups4j/CupsPrinter;->addAttribute(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_56
    if-eqz v14, :cond_91

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_91

    .line 92
    const-string v21, ","

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 94
    .local v16, ranges:[Ljava/lang/String;
    const-string v8, ""

    .line 96
    .local v8, delimeter:Ljava/lang/String;
    const-string v21, "page-ranges:setOfRangeOfInteger:"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_7c
    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_dc

    .line 108
    const-string v21, "job-attributes"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v4, v1, v2}, Lorg/cups4j/CupsPrinter;->addAttribute(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .end local v8           #delimeter:Ljava/lang/String;
    .end local v16           #ranges:[Ljava/lang/String;
    :cond_91
    invoke-virtual/range {p1 .. p1}, Lorg/cups4j/PrintJob;->isDuplex()Z

    move-result v21

    if-eqz v21, :cond_a4

    .line 113
    const-string v21, "job-attributes"

    const-string v22, "sides:keyword:two-sided-long-edge"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v4, v1, v2}, Lorg/cups4j/CupsPrinter;->addAttribute(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_a4
    new-instance v5, Lorg/cups4j/operations/ipp/IppPrintJobOperation;

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cups4j/CupsPrinter;->printerURL:Ljava/net/URL;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->getPort()I

    move-result v21

    .line 115
    move/from16 v0, v21

    invoke-direct {v5, v0}, Lorg/cups4j/operations/ipp/IppPrintJobOperation;-><init>(I)V

    .line 117
    .local v5, command:Lorg/cups4j/operations/ipp/IppPrintJobOperation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cups4j/CupsPrinter;->printerURL:Ljava/net/URL;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v5, v0, v4, v9}, Lorg/cups4j/operations/ipp/IppPrintJobOperation;->request(Ljava/net/URL;Ljava/util/Map;Ljava/io/InputStream;)Lch/ethz/vppserver/ippclient/IppResult;

    move-result-object v12

    .line 118
    .local v12, ippResult:Lch/ethz/vppserver/ippclient/IppResult;
    new-instance v18, Lorg/cups4j/PrintRequestResult;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Lorg/cups4j/PrintRequestResult;-><init>(Lch/ethz/vppserver/ippclient/IppResult;)V

    .line 121
    .local v18, result:Lorg/cups4j/PrintRequestResult;
    invoke-virtual {v12}, Lch/ethz/vppserver/ippclient/IppResult;->getAttributeGroupList()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_d0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_121

    .line 131
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lorg/cups4j/PrintRequestResult;->setJobId(I)V

    .line 132
    return-object v18

    .line 97
    .end local v5           #command:Lorg/cups4j/operations/ipp/IppPrintJobOperation;
    .end local v12           #ippResult:Lch/ethz/vppserver/ippclient/IppResult;
    .end local v18           #result:Lorg/cups4j/PrintRequestResult;
    .restart local v8       #delimeter:Ljava/lang/String;
    .restart local v16       #ranges:[Ljava/lang/String;
    :cond_dc
    aget-object v15, v16, v21

    .line 98
    .local v15, range:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 99
    const-string v23, "-"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 100
    .local v20, values:[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_110

    .line 101
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 104
    :cond_110
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    const-string v8, ","

    .line 97
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_7c

    .line 121
    .end local v8           #delimeter:Ljava/lang/String;
    .end local v15           #range:Ljava/lang/String;
    .end local v16           #ranges:[Ljava/lang/String;
    .end local v20           #values:[Ljava/lang/String;
    .restart local v5       #command:Lorg/cups4j/operations/ipp/IppPrintJobOperation;
    .restart local v12       #ippResult:Lch/ethz/vppserver/ippclient/IppResult;
    .restart local v18       #result:Lorg/cups4j/PrintRequestResult;
    :cond_121
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

    .line 122
    .local v10, group:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;
    invoke-virtual {v10}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getTagName()Ljava/lang/String;

    move-result-object v21

    const-string v23, "job-attributes-tag"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d0

    .line 123
    invoke-virtual {v10}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getAttribute()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_13f
    :goto_13f
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_d0

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/ethz/vppserver/schema/ippclient/Attribute;

    .line 124
    .local v3, attr:Lch/ethz/vppserver/schema/ippclient/Attribute;
    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v21

    const-string v24, "job-id"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13f

    .line 125
    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v21

    .line 126
    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-virtual/range {v21 .. v21}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getValue()Ljava/lang/String;

    move-result-object v21

    .line 125
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    goto :goto_13f
.end method

.method protected setDefault(Z)V
    .registers 2
    .parameter "isDefault"

    .prologue
    .line 226
    iput-boolean p1, p0, Lorg/cups4j/CupsPrinter;->isDefault:Z

    .line 227
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .parameter "description"

    .prologue
    .line 274
    iput-object p1, p0, Lorg/cups4j/CupsPrinter;->description:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .registers 2
    .parameter "location"

    .prologue
    .line 262
    iput-object p1, p0, Lorg/cups4j/CupsPrinter;->location:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setModelName(Ljava/lang/String;)V
    .registers 2
    .parameter "modelName"

    .prologue
    .line 282
    iput-object p1, p0, Lorg/cups4j/CupsPrinter;->modelName:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "printer uri="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/cups4j/CupsPrinter;->printerURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " default="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/cups4j/CupsPrinter;->isDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 237
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/cups4j/CupsPrinter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
