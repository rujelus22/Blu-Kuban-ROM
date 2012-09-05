.class public Lcom/vlingo/client/core/recognizer/results/SRResponseParser;
.super Ljava/lang/Object;
.source "SRResponseParser.java"


# instance fields
.field parser:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    invoke-direct {v0}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->parser:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    .line 24
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->parser:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    new-instance v1, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;

    invoke-direct {v1, p0}, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;-><init>(Lcom/vlingo/client/core/recognizer/results/SRResponseParser;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->addParser(Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getResponse()Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->parser:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    invoke-virtual {v0}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->getResponse()Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    return-object v0
.end method

.method public parseResponseXml(Ljava/lang/String;)Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;
    .registers 11
    .parameter "responseXml"

    .prologue
    .line 29
    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->parser:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    new-instance v7, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    invoke-direct {v7}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;-><init>()V

    invoke-virtual {v6, p1, v7}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->parseResponseXml(Ljava/lang/String;Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;)Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;

    move-result-object v4

    check-cast v4, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    .line 30
    .local v4, res:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;
    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->hasResults()Z

    move-result v6

    if-nez v6, :cond_50

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->hasActions()Z

    move-result v6

    if-nez v6, :cond_50

    .line 31
    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->hasMessages()Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 33
    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getFirstMessage()Lcom/vlingo/client/core/vlservice/response/ServerMessage;

    move-result-object v3

    .line 34
    .local v3, msg:Lcom/vlingo/client/core/vlservice/response/ServerMessage;
    new-instance v5, Lcom/vlingo/client/core/vlservice/response/Action;

    const-string v6, "ShowMessage"

    invoke-direct {v5, v6}, Lcom/vlingo/client/core/vlservice/response/Action;-><init>(Ljava/lang/String;)V

    .line 35
    .local v5, showMessageAction:Lcom/vlingo/client/core/vlservice/response/Action;
    const-string v6, "Message"

    invoke-virtual {v3}, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/vlingo/client/core/vlservice/response/Action;->setParameterValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    const-string v6, "Details"

    invoke-virtual {v3}, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->getDetailMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/vlingo/client/core/vlservice/response/Action;->setParameterValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    const-string v6, "Code"

    invoke-virtual {v3}, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/vlingo/client/core/vlservice/response/Action;->setParameterValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    const-string v6, "Type"

    const-string v7, "error"

    invoke-virtual {v5, v6, v7}, Lcom/vlingo/client/core/vlservice/response/Action;->setParameterValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    invoke-virtual {v4, v5}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->addAction(Lcom/vlingo/client/core/vlservice/response/Action;)V

    .line 55
    .end local v3           #msg:Lcom/vlingo/client/core/vlservice/response/ServerMessage;
    .end local v5           #showMessageAction:Lcom/vlingo/client/core/vlservice/response/Action;
    :cond_4f
    return-object v4

    .line 42
    :cond_50
    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->hasActions()Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 43
    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getActionList()Lcom/vlingo/client/core/vlservice/response/ActionList;

    move-result-object v1

    .line 45
    .local v1, actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5b
    invoke-virtual {v1}, Lcom/vlingo/client/core/vlservice/response/ActionList;->size()I

    move-result v6

    if-ge v2, v6, :cond_4f

    .line 46
    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/vlservice/response/ActionList;->elementAt(I)Lcom/vlingo/client/core/vlservice/response/Action;

    move-result-object v0

    .line 47
    .local v0, action:Lcom/vlingo/client/core/vlservice/response/Action;
    if-eqz v0, :cond_83

    .line 48
    iget-object v6, v0, Lcom/vlingo/client/core/vlservice/response/Action;->name:Ljava/lang/String;

    const-string v7, "LaunchApp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 49
    const-string v6, "tagResults"

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getResults()Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getTagResults()Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vlingo/client/core/recognizer/results/RecResults;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Lcom/vlingo/client/core/vlservice/response/Action;->addParameter(Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/core/recognizer/results/TaggedResults;)V

    .line 45
    :cond_83
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b
.end method

.method public registerAttribute(Ljava/lang/String;)I
    .registers 3
    .parameter "attrName"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->parser:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->registerAttribute(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public registerElement(Ljava/lang/String;)I
    .registers 3
    .parameter "tagName"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->parser:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->registerElement(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
