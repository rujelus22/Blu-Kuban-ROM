.class public Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;
.super Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;
.source "ServerMessageParser.java"


# instance fields
.field private final XML_ELEMENT_CODE:I

.field private final XML_ELEMENT_DETAILS:I

.field private final XML_ELEMENT_ERROR:I

.field private final XML_ELEMENT_MESSAGE:I

.field private final XML_ELEMENT_STATUS:I

.field private final XML_ELEMENT_WARNING:I

.field private inDetails:Z

.field private msg:Lcom/vlingo/client/core/vlservice/response/ServerMessage;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/core/vlservice/response/VLResponseParser;)V
    .registers 3
    .parameter "parser"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;-><init>(Lcom/vlingo/client/core/vlservice/response/VLResponseParser;)V

    .line 28
    const-string v0, "Status"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->registerElement(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->XML_ELEMENT_STATUS:I

    .line 29
    const-string v0, "Warning"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->registerElement(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->XML_ELEMENT_WARNING:I

    .line 30
    const-string v0, "Error"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->registerElement(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->XML_ELEMENT_ERROR:I

    .line 31
    const-string v0, "Message"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->registerElement(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->XML_ELEMENT_MESSAGE:I

    .line 32
    const-string v0, "Code"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->registerElement(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->XML_ELEMENT_CODE:I

    .line 33
    const-string v0, "Details"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->registerElement(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->XML_ELEMENT_DETAILS:I

    .line 34
    return-void
.end method


# virtual methods
.method public beginElement(ILcom/vlingo/client/core/xml/XmlAttributes;[CI)V
    .registers 8
    .parameter "elementType"
    .parameter "attributes"
    .parameter "cData"
    .parameter "elementEndPosition"

    .prologue
    const/4 v2, 0x1

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, cDataString:Ljava/lang/String;
    if-eqz p3, :cond_8

    .line 39
    invoke-static {p3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    .line 42
    :cond_8
    iget v1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->XML_ELEMENT_STATUS:I

    if-ne v1, p1, :cond_19

    .line 43
    new-instance v1, Lcom/vlingo/client/core/vlservice/response/ServerMessage;

    invoke-direct {v1}, Lcom/vlingo/client/core/vlservice/response/ServerMessage;-><init>()V

    iput-object v1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->msg:Lcom/vlingo/client/core/vlservice/response/ServerMessage;

    .line 44
    iget-object v1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->msg:Lcom/vlingo/client/core/vlservice/response/ServerMessage;

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->setType(I)V

    .line 71
    :cond_18
    :goto_18
    return-void

    .line 46
    :cond_19
    iget v1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->XML_ELEMENT_WARNING:I

    if-ne v1, p1, :cond_2b

    .line 47
    new-instance v1, Lcom/vlingo/client/core/vlservice/response/ServerMessage;

    invoke-direct {v1}, Lcom/vlingo/client/core/vlservice/response/ServerMessage;-><init>()V

    iput-object v1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->msg:Lcom/vlingo/client/core/vlservice/response/ServerMessage;

    .line 48
    iget-object v1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->msg:Lcom/vlingo/client/core/vlservice/response/ServerMessage;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->setType(I)V

    goto :goto_18

    .line 50
    :cond_2b
    iget v1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->XML_ELEMENT_ERROR:I

    if-ne v1, p1, :cond_3d

    .line 51
    new-instance v1, Lcom/vlingo/client/core/vlservice/response/ServerMessage;

    invoke-direct {v1}, Lcom/vlingo/client/core/vlservice/response/ServerMessage;-><init>()V

    iput-object v1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->msg:Lcom/vlingo/client/core/vlservice/response/ServerMessage;

    .line 52
    iget-object v1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->msg:Lcom/vlingo/client/core/vlservice/response/ServerMessage;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->setType(I)V

    goto :goto_18

    .line 54
    :cond_3d
    iget v1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->XML_ELEMENT_MESSAGE:I

    if-ne v1, p1, :cond_51

    .line 55
    iget-boolean v1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->inDetails:Z

    if-eqz v1, :cond_4b

    .line 56
    iget-object v1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->msg:Lcom/vlingo/client/core/vlservice/response/ServerMessage;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->setDetailMessage(Ljava/lang/String;)V

    goto :goto_18

    .line 58
    :cond_4b
    iget-object v1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->msg:Lcom/vlingo/client/core/vlservice/response/ServerMessage;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->setMessage(Ljava/lang/String;)V

    goto :goto_18

    .line 61
    :cond_51
    iget v1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->XML_ELEMENT_CODE:I

    if-ne v1, p1, :cond_65

    .line 62
    iget-boolean v1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->inDetails:Z

    if-eqz v1, :cond_5f

    .line 63
    iget-object v1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->msg:Lcom/vlingo/client/core/vlservice/response/ServerMessage;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->setDetailCode(Ljava/lang/String;)V

    goto :goto_18

    .line 65
    :cond_5f
    iget-object v1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->msg:Lcom/vlingo/client/core/vlservice/response/ServerMessage;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->setCode(Ljava/lang/String;)V

    goto :goto_18

    .line 68
    :cond_65
    iget v1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->XML_ELEMENT_DETAILS:I

    if-ne v1, p1, :cond_18

    .line 69
    iput-boolean v2, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->inDetails:Z

    goto :goto_18
.end method

.method public endElement(II)V
    .registers 5
    .parameter "elementType"
    .parameter "elementStartPosition"

    .prologue
    .line 74
    iget v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->XML_ELEMENT_STATUS:I

    if-eq v0, p1, :cond_c

    iget v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->XML_ELEMENT_WARNING:I

    if-eq v0, p1, :cond_c

    iget v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->XML_ELEMENT_ERROR:I

    if-ne v0, p1, :cond_1d

    .line 78
    :cond_c
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->responseParser:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    invoke-virtual {v0}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->getResponse()Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->msg:Lcom/vlingo/client/core/vlservice/response/ServerMessage;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->addMessage(Lcom/vlingo/client/core/vlservice/response/ServerMessage;)V

    .line 79
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->responseParser:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    invoke-virtual {v0}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->onSectionComplete()V

    .line 84
    :cond_1c
    :goto_1c
    return-void

    .line 81
    :cond_1d
    iget-boolean v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->inDetails:Z

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->XML_ELEMENT_DETAILS:I

    if-ne v0, p1, :cond_1c

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->inDetails:Z

    goto :goto_1c
.end method

.method public handlesElement(I)Z
    .registers 3
    .parameter "elementType"

    .prologue
    .line 87
    iget v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->XML_ELEMENT_STATUS:I

    if-eq v0, p1, :cond_c

    iget v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->XML_ELEMENT_WARNING:I

    if-eq v0, p1, :cond_c

    iget v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;->XML_ELEMENT_ERROR:I

    if-ne v0, p1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
