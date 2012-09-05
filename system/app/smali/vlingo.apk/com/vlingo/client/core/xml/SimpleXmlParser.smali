.class public abstract Lcom/vlingo/client/core/xml/SimpleXmlParser;
.super Ljava/lang/Object;
.source "SimpleXmlParser.java"

# interfaces
.implements Lcom/vlingo/client/core/xml/XmlHandler;


# instance fields
.field private attributeIndex:B

.field private elementIndex:B

.field final xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;

.field final xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/16 v0, 0x32

    iput-byte v0, p0, Lcom/vlingo/client/core/xml/SimpleXmlParser;->elementIndex:B

    .line 21
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/vlingo/client/core/xml/SimpleXmlParser;->attributeIndex:B

    .line 24
    invoke-static {}, Lcom/vlingo/client/core/util/ToIntHashtableFactory;->createNewHashtable()Lcom/vlingo/client/core/util/ToIntHashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/xml/SimpleXmlParser;->xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;

    .line 25
    invoke-static {}, Lcom/vlingo/client/core/util/ToIntHashtableFactory;->createNewHashtable()Lcom/vlingo/client/core/util/ToIntHashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/xml/SimpleXmlParser;->xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;

    .line 26
    return-void
.end method


# virtual methods
.method public beginDocument()V
    .registers 1

    .prologue
    .line 55
    return-void
.end method

.method public characters([C)V
    .registers 2
    .parameter "cData"

    .prologue
    .line 57
    return-void
.end method

.method public endDocument()V
    .registers 1

    .prologue
    .line 56
    return-void
.end method

.method public onParseBegin([C)V
    .registers 2
    .parameter "xml"

    .prologue
    .line 53
    return-void
.end method

.method public parseXML(Ljava/lang/String;)V
    .registers 11
    .parameter "xml"

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 48
    .local v1, chars:[C
    invoke-virtual {p0, v1}, Lcom/vlingo/client/core/xml/SimpleXmlParser;->onParseBegin([C)V

    .line 49
    new-instance v0, Lcom/vlingo/client/core/xml/XmlParser;

    array-length v3, v1

    iget-object v5, p0, Lcom/vlingo/client/core/xml/SimpleXmlParser;->xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;

    iget-object v6, p0, Lcom/vlingo/client/core/xml/SimpleXmlParser;->xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;

    const/4 v7, 0x1

    move-object v4, p0

    move v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/vlingo/client/core/xml/XmlParser;-><init>([CIILcom/vlingo/client/core/xml/XmlHandler;Lcom/vlingo/client/core/util/ToIntHashtable;Lcom/vlingo/client/core/util/ToIntHashtable;ZZ)V

    .line 50
    .local v0, parser:Lcom/vlingo/client/core/xml/XmlParser;
    invoke-virtual {v0}, Lcom/vlingo/client/core/xml/XmlParser;->parseXml()V

    .line 51
    return-void
.end method

.method protected registerAttribute(Ljava/lang/String;)I
    .registers 4
    .parameter "attrName"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vlingo/client/core/xml/SimpleXmlParser;->xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/util/ToIntHashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 39
    iget-object v0, p0, Lcom/vlingo/client/core/xml/SimpleXmlParser;->xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/util/ToIntHashtable;->get(Ljava/lang/Object;)I

    move-result v0

    .line 43
    :goto_e
    return v0

    .line 41
    :cond_f
    iget-byte v0, p0, Lcom/vlingo/client/core/xml/SimpleXmlParser;->attributeIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/vlingo/client/core/xml/SimpleXmlParser;->attributeIndex:B

    .line 42
    iget-object v0, p0, Lcom/vlingo/client/core/xml/SimpleXmlParser;->xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;

    iget-byte v1, p0, Lcom/vlingo/client/core/xml/SimpleXmlParser;->attributeIndex:B

    invoke-interface {v0, p1, v1}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 43
    iget-byte v0, p0, Lcom/vlingo/client/core/xml/SimpleXmlParser;->attributeIndex:B

    goto :goto_e
.end method

.method protected registerElement(Ljava/lang/String;)I
    .registers 4
    .parameter "tagName"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vlingo/client/core/xml/SimpleXmlParser;->xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/util/ToIntHashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 30
    iget-object v0, p0, Lcom/vlingo/client/core/xml/SimpleXmlParser;->xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/util/ToIntHashtable;->get(Ljava/lang/Object;)I

    move-result v0

    .line 34
    :goto_e
    return v0

    .line 32
    :cond_f
    iget-byte v0, p0, Lcom/vlingo/client/core/xml/SimpleXmlParser;->elementIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/vlingo/client/core/xml/SimpleXmlParser;->elementIndex:B

    .line 33
    iget-object v0, p0, Lcom/vlingo/client/core/xml/SimpleXmlParser;->xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;

    iget-byte v1, p0, Lcom/vlingo/client/core/xml/SimpleXmlParser;->elementIndex:B

    invoke-interface {v0, p1, v1}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 34
    iget-byte v0, p0, Lcom/vlingo/client/core/xml/SimpleXmlParser;->elementIndex:B

    goto :goto_e
.end method
