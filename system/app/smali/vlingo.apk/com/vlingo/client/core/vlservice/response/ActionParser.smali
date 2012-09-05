.class public Lcom/vlingo/client/core/vlservice/response/ActionParser;
.super Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;
.source "ActionParser.java"


# instance fields
.field private final XML_ATTR_ELSE:I

.field private final XML_ATTR_IF:I

.field private final XML_ATTR_N:I

.field private final XML_ATTR_V:I

.field private final XML_ELEMENT_ACTION:I

.field private final XML_ELEMENT_ACTIONLIST:I

.field private final XML_ELEMENT_PARAM:I

.field actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

.field currentAction:Lcom/vlingo/client/core/vlservice/response/Action;

.field currentParameterName:Ljava/lang/String;

.field currentParameterValue:Ljava/lang/String;

.field currentParameterValueStartPos:I

.field origXML:[C

.field taggedResults:Lcom/vlingo/client/core/recognizer/results/TaggedResults;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/core/vlservice/response/VLResponseParser;)V
    .registers 3
    .parameter "parser"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;-><init>(Lcom/vlingo/client/core/vlservice/response/VLResponseParser;)V

    .line 33
    iput-object v0, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->origXML:[C

    .line 35
    iput-object v0, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    .line 36
    iput-object v0, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->currentAction:Lcom/vlingo/client/core/vlservice/response/Action;

    .line 42
    iput-object v0, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->taggedResults:Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    .line 48
    const-string v0, "ActionList"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->registerElement(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->XML_ELEMENT_ACTIONLIST:I

    .line 49
    const-string v0, "Action"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->registerElement(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->XML_ELEMENT_ACTION:I

    .line 50
    const-string v0, "Param"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->registerElement(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->XML_ELEMENT_PARAM:I

    .line 53
    const-string v0, "n"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->registerAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->XML_ATTR_N:I

    .line 54
    const-string v0, "v"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->registerAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->XML_ATTR_V:I

    .line 55
    const-string v0, "if"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->registerAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->XML_ATTR_IF:I

    .line 56
    const-string v0, "else"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->registerAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->XML_ATTR_ELSE:I

    .line 58
    return-void
.end method


# virtual methods
.method public beginElement(ILcom/vlingo/client/core/xml/XmlAttributes;[CI)V
    .registers 10
    .parameter "elementType"
    .parameter "attributes"
    .parameter "cData"
    .parameter "elementEndPosition"

    .prologue
    .line 69
    iget v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->XML_ELEMENT_ACTIONLIST:I

    if-ne v3, p1, :cond_22

    .line 70
    new-instance v3, Lcom/vlingo/client/core/vlservice/response/ActionList;

    invoke-direct {v3}, Lcom/vlingo/client/core/vlservice/response/ActionList;-><init>()V

    iput-object v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    .line 71
    iget-object v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->responseParser:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    invoke-virtual {v3}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->getResponse()Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;

    move-result-object v1

    .line 72
    .local v1, res:Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;
    instance-of v3, v1, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    if-eqz v3, :cond_1e

    .line 73
    check-cast v1, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    .end local v1           #res:Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;
    invoke-virtual {v1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getResults()Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    move-result-object v3

    iput-object v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->taggedResults:Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    .line 91
    :cond_1d
    :goto_1d
    return-void

    .line 76
    .restart local v1       #res:Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;
    :cond_1e
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->taggedResults:Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    goto :goto_1d

    .line 79
    .end local v1           #res:Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;
    :cond_22
    iget v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->XML_ELEMENT_ACTION:I

    if-ne v3, p1, :cond_48

    .line 80
    new-instance v3, Lcom/vlingo/client/core/vlservice/response/Action;

    iget v4, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->XML_ATTR_N:I

    invoke-virtual {p2, v4}, Lcom/vlingo/client/core/xml/XmlAttributes;->lookup(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vlingo/client/core/vlservice/response/Action;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->currentAction:Lcom/vlingo/client/core/vlservice/response/Action;

    .line 81
    iget-object v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->currentAction:Lcom/vlingo/client/core/vlservice/response/Action;

    iget v4, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->XML_ATTR_IF:I

    invoke-virtual {p2, v4}, Lcom/vlingo/client/core/xml/XmlAttributes;->lookup(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/vlingo/client/core/vlservice/response/Action;->ifCondition:Ljava/lang/String;

    .line 82
    iget-object v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->currentAction:Lcom/vlingo/client/core/vlservice/response/Action;

    iget v4, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->XML_ATTR_ELSE:I

    invoke-virtual {p2, v4}, Lcom/vlingo/client/core/xml/XmlAttributes;->lookup(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/vlingo/client/core/vlservice/response/Action;->elseStatement:Ljava/lang/String;

    goto :goto_1d

    .line 84
    :cond_48
    iget v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->XML_ELEMENT_PARAM:I

    if-ne v3, p1, :cond_1d

    .line 85
    iget v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->XML_ATTR_N:I

    invoke-virtual {p2, v3}, Lcom/vlingo/client/core/xml/XmlAttributes;->lookup(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, name:Ljava/lang/String;
    iget v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->XML_ATTR_V:I

    invoke-virtual {p2, v3}, Lcom/vlingo/client/core/xml/XmlAttributes;->lookup(I)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, value:Ljava/lang/String;
    iput-object v0, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->currentParameterName:Ljava/lang/String;

    .line 88
    iput-object v2, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->currentParameterValue:Ljava/lang/String;

    .line 89
    iput p4, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->currentParameterValueStartPos:I

    goto :goto_1d
.end method

.method public endElement(II)V
    .registers 12
    .parameter "elementType"
    .parameter "elementStartPosition"

    .prologue
    const/16 v8, 0x20

    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x9

    .line 94
    iget v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->XML_ELEMENT_PARAM:I

    if-ne v3, p1, :cond_63

    .line 95
    iget-object v2, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->currentParameterValue:Ljava/lang/String;

    .line 96
    .local v2, value:Ljava/lang/String;
    if-nez v2, :cond_59

    .line 97
    move v0, p2

    .line 98
    .local v0, l:I
    iget v1, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->currentParameterValueStartPos:I

    .line 99
    .local v1, s:I
    :goto_13
    iget-object v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->origXML:[C

    aget-char v3, v3, v1

    if-eq v3, v8, :cond_2b

    iget-object v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->origXML:[C

    aget-char v3, v3, v1

    if-eq v3, v5, :cond_2b

    iget-object v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->origXML:[C

    aget-char v3, v3, v1

    if-eq v3, v7, :cond_2b

    iget-object v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->origXML:[C

    aget-char v3, v3, v1

    if-ne v3, v6, :cond_2e

    .line 100
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 102
    :cond_2e
    :goto_2e
    iget-object v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->origXML:[C

    add-int/lit8 v4, v0, -0x1

    aget-char v3, v3, v4

    if-eq v3, v8, :cond_4e

    iget-object v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->origXML:[C

    add-int/lit8 v4, v0, -0x1

    aget-char v3, v3, v4

    if-eq v3, v5, :cond_4e

    iget-object v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->origXML:[C

    add-int/lit8 v4, v0, -0x1

    aget-char v3, v3, v4

    if-eq v3, v7, :cond_4e

    iget-object v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->origXML:[C

    add-int/lit8 v4, v0, -0x1

    aget-char v3, v3, v4

    if-ne v3, v6, :cond_51

    .line 103
    :cond_4e
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    .line 105
    :cond_51
    sub-int/2addr v0, v1

    .line 106
    iget-object v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->origXML:[C

    const/4 v4, 0x0

    invoke-static {v3, v1, v0, v4}, Lcom/vlingo/client/core/xml/XmlParser;->createString([CIIZ)Ljava/lang/String;

    move-result-object v2

    .line 108
    .end local v0           #l:I
    .end local v1           #s:I
    :cond_59
    iget-object v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->currentAction:Lcom/vlingo/client/core/vlservice/response/Action;

    iget-object v4, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->currentParameterName:Ljava/lang/String;

    iget-object v5, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->taggedResults:Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    invoke-virtual {v3, v4, v2, v5}, Lcom/vlingo/client/core/vlservice/response/Action;->addParameter(Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/core/recognizer/results/TaggedResults;)V

    .line 117
    .end local v2           #value:Ljava/lang/String;
    :cond_62
    :goto_62
    return-void

    .line 110
    :cond_63
    iget v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->XML_ELEMENT_ACTIONLIST:I

    if-ne v3, p1, :cond_78

    .line 111
    iget-object v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->responseParser:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    invoke-virtual {v3}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->getResponse()Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    invoke-virtual {v3, v4}, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->setActionList(Lcom/vlingo/client/core/vlservice/response/ActionList;)V

    .line 112
    iget-object v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->responseParser:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    invoke-virtual {v3}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->onSectionComplete()V

    goto :goto_62

    .line 114
    :cond_78
    iget v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->XML_ELEMENT_ACTION:I

    if-ne v3, p1, :cond_62

    .line 115
    iget-object v3, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    iget-object v4, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->currentAction:Lcom/vlingo/client/core/vlservice/response/Action;

    invoke-virtual {v3, v4}, Lcom/vlingo/client/core/vlservice/response/ActionList;->addElement(Lcom/vlingo/client/core/vlservice/response/Action;)V

    goto :goto_62
.end method

.method public handlesElement(I)Z
    .registers 3
    .parameter "elementType"

    .prologue
    .line 61
    iget v0, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->XML_ELEMENT_ACTIONLIST:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onParseBegin([C)V
    .registers 2
    .parameter "xml"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/vlingo/client/core/vlservice/response/ActionParser;->origXML:[C

    .line 66
    return-void
.end method
