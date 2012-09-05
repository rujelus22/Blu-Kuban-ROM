.class public Lcom/vlingo/client/core/vlservice/response/VLResponseParser;
.super Ljava/lang/Object;
.source "VLResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/vlservice/response/VLResponseParser$XmlHandlerImpl;
    }
.end annotation


# instance fields
.field private attributeIndex:B

.field currentParser:Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;

.field currentResponse:Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;

.field private elementIndex:B

.field sectionParsers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;",
            ">;"
        }
    .end annotation
.end field

.field private final xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;

.field private final xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x32

    iput-byte v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->elementIndex:B

    .line 34
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->attributeIndex:B

    .line 38
    iput-object v1, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->currentParser:Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;

    .line 39
    iput-object v1, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->currentResponse:Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;

    .line 42
    invoke-static {}, Lcom/vlingo/client/core/util/ToIntHashtableFactory;->createNewHashtable()Lcom/vlingo/client/core/util/ToIntHashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;

    .line 43
    invoke-static {}, Lcom/vlingo/client/core/util/ToIntHashtableFactory;->createNewHashtable()Lcom/vlingo/client/core/util/ToIntHashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->sectionParsers:Ljava/util/Vector;

    .line 45
    invoke-virtual {p0}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->initParsers()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/core/vlservice/response/VLResponseParser;I)Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->getParserForElement(I)Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;

    move-result-object v0

    return-object v0
.end method

.method private getParserForElement(I)Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;
    .registers 5
    .parameter "elementType"

    .prologue
    .line 115
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->sectionParsers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 116
    iget-object v2, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->sectionParsers:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;

    .line 117
    .local v1, p:Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;
    invoke-virtual {v1, p1}, Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;->handlesElement(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 121
    .end local v1           #p:Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;
    :goto_17
    return-object v1

    .line 115
    .restart local v1       #p:Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 121
    .end local v1           #p:Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;
    :cond_1b
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private onParseBegin([C)V
    .registers 5
    .parameter "xml"

    .prologue
    .line 108
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->sectionParsers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 109
    iget-object v2, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->sectionParsers:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;

    .line 110
    .local v1, p:Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;
    invoke-virtual {v1, p1}, Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;->onParseBegin([C)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    .end local v1           #p:Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;
    :cond_17
    return-void
.end method


# virtual methods
.method public addParser(Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;)V
    .registers 3
    .parameter "parser"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->sectionParsers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public getResponse()Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->currentResponse:Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;

    return-object v0
.end method

.method public initParsers()V
    .registers 2

    .prologue
    .line 53
    new-instance v0, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;

    invoke-direct {v0, p0}, Lcom/vlingo/client/core/vlservice/response/ServerMessageParser;-><init>(Lcom/vlingo/client/core/vlservice/response/VLResponseParser;)V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->addParser(Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;)V

    .line 54
    new-instance v0, Lcom/vlingo/client/core/vlservice/response/ActionParser;

    invoke-direct {v0, p0}, Lcom/vlingo/client/core/vlservice/response/ActionParser;-><init>(Lcom/vlingo/client/core/vlservice/response/VLResponseParser;)V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->addParser(Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;)V

    .line 55
    return-void
.end method

.method public onSectionComplete()V
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->currentParser:Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;

    .line 105
    return-void
.end method

.method public parseResponseXml(Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;
    .registers 3
    .parameter "responseXml"

    .prologue
    .line 58
    new-instance v0, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    invoke-direct {v0}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->parseResponseXml(Ljava/lang/String;Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;)Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;

    move-result-object v0

    return-object v0
.end method

.method public parseResponseXml(Ljava/lang/String;Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;)Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;
    .registers 12
    .parameter "responseXml"
    .parameter "initialResponse"

    .prologue
    .line 64
    iput-object p2, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->currentResponse:Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;

    .line 65
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->currentParser:Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;

    .line 67
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 68
    .local v1, chars:[C
    invoke-direct {p0, v1}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->onParseBegin([C)V

    .line 69
    new-instance v0, Lcom/vlingo/client/core/xml/XmlParser;

    const/4 v2, 0x0

    array-length v3, v1

    new-instance v4, Lcom/vlingo/client/core/vlservice/response/VLResponseParser$XmlHandlerImpl;

    invoke-direct {v4, p0}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser$XmlHandlerImpl;-><init>(Lcom/vlingo/client/core/vlservice/response/VLResponseParser;)V

    iget-object v5, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;

    iget-object v6, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/vlingo/client/core/xml/XmlParser;-><init>([CIILcom/vlingo/client/core/xml/XmlHandler;Lcom/vlingo/client/core/util/ToIntHashtable;Lcom/vlingo/client/core/util/ToIntHashtable;ZZ)V

    .line 70
    .local v0, parser:Lcom/vlingo/client/core/xml/XmlParser;
    invoke-virtual {v0}, Lcom/vlingo/client/core/xml/XmlParser;->parseXml()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_24

    .line 78
    .end local v0           #parser:Lcom/vlingo/client/core/xml/XmlParser;
    .end local v1           #chars:[C
    :goto_21
    iget-object v2, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->currentResponse:Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;

    return-object v2

    .line 72
    :catch_24
    move-exception v2

    goto :goto_21
.end method

.method public registerAttribute(Ljava/lang/String;)I
    .registers 4
    .parameter "attrName"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/util/ToIntHashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 96
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/util/ToIntHashtable;->get(Ljava/lang/Object;)I

    move-result v0

    .line 100
    :goto_e
    return v0

    .line 98
    :cond_f
    iget-byte v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->attributeIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->attributeIndex:B

    .line 99
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;

    iget-byte v1, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->attributeIndex:B

    invoke-interface {v0, p1, v1}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 100
    iget-byte v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->attributeIndex:B

    goto :goto_e
.end method

.method public registerElement(Ljava/lang/String;)I
    .registers 4
    .parameter "tagName"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/util/ToIntHashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 87
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/util/ToIntHashtable;->get(Ljava/lang/Object;)I

    move-result v0

    .line 91
    :goto_e
    return v0

    .line 89
    :cond_f
    iget-byte v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->elementIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->elementIndex:B

    .line 90
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;

    iget-byte v1, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->elementIndex:B

    invoke-interface {v0, p1, v1}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 91
    iget-byte v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->elementIndex:B

    goto :goto_e
.end method
