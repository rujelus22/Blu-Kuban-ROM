.class public abstract Lorg/dom4j/tree/AbstractDocument;
.super Lorg/dom4j/tree/AbstractBranch;
.source "AbstractDocument.java"

# interfaces
.implements Lorg/dom4j/Document;


# instance fields
.field protected encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractBranch;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public accept(Lorg/dom4j/Visitor;)V
    .registers 9
    .parameter "visitor"

    .prologue
    .line 109
    invoke-interface {p1, p0}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/Document;)V

    .line 111
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v1

    .line 113
    .local v1, docType:Lorg/dom4j/DocumentType;
    if-eqz v1, :cond_c

    .line 114
    invoke-interface {p1, v1}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/DocumentType;)V

    .line 118
    :cond_c
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->content()Ljava/util/List;

    move-result-object v0

    .line 120
    .local v0, content:Ljava/util/List;
    if-eqz v0, :cond_1c

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iter:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1d

    .line 134
    .end local v2           #iter:Ljava/util/Iterator;
    :cond_1c
    return-void

    .line 122
    .restart local v2       #iter:Ljava/util/Iterator;
    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 124
    .local v4, object:Ljava/lang/Object;
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_33

    .line 125
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v6

    .line 126
    check-cast v4, Ljava/lang/String;

    .end local v4           #object:Ljava/lang/Object;
    invoke-virtual {v6, v4}, Lorg/dom4j/DocumentFactory;->createText(Ljava/lang/String;)Lorg/dom4j/Text;

    move-result-object v5

    .line 127
    .local v5, text:Lorg/dom4j/Text;
    invoke-interface {p1, v5}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/Text;)V

    goto :goto_16

    .end local v5           #text:Lorg/dom4j/Text;
    .restart local v4       #object:Ljava/lang/Object;
    :cond_33
    move-object v3, v4

    .line 129
    check-cast v3, Lorg/dom4j/Node;

    .line 130
    .local v3, node:Lorg/dom4j/Node;
    invoke-interface {v3, p1}, Lorg/dom4j/Node;->accept(Lorg/dom4j/Visitor;)V

    goto :goto_16
.end method

.method public add(Lorg/dom4j/Element;)V
    .registers 2
    .parameter "element"

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractDocument;->checkAddElementAllowed(Lorg/dom4j/Element;)V

    .line 204
    invoke-super {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Element;)V

    .line 205
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractDocument;->rootElementAdded(Lorg/dom4j/Element;)V

    .line 206
    return-void
.end method

.method public addComment(Ljava/lang/String;)Lorg/dom4j/Document;
    .registers 4
    .parameter "comment"

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/dom4j/DocumentFactory;->createComment(Ljava/lang/String;)Lorg/dom4j/Comment;

    move-result-object v0

    .line 150
    .local v0, node:Lorg/dom4j/Comment;
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractDocument;->add(Lorg/dom4j/Comment;)V

    .line 152
    return-object p0
.end method

.method public addElement(Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 4
    .parameter "name"

    .prologue
    .line 172
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 173
    .local v0, element:Lorg/dom4j/Element;
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractDocument;->add(Lorg/dom4j/Element;)V

    .line 175
    return-object v0
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 5
    .parameter "qualifiedName"
    .parameter "namespaceURI"

    .prologue
    .line 179
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 181
    .local v0, element:Lorg/dom4j/Element;
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractDocument;->add(Lorg/dom4j/Element;)V

    .line 183
    return-object v0
.end method

.method public addElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .registers 4
    .parameter "qName"

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    .line 188
    .local v0, element:Lorg/dom4j/Element;
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractDocument;->add(Lorg/dom4j/Element;)V

    .line 190
    return-object v0
.end method

.method public addProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Document;
    .registers 5
    .parameter "target"
    .parameter "data"

    .prologue
    .line 156
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    .line 157
    invoke-virtual {v1, p1, p2}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    .line 158
    .local v0, node:Lorg/dom4j/ProcessingInstruction;
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractDocument;->add(Lorg/dom4j/ProcessingInstruction;)V

    .line 160
    return-object p0
.end method

.method public addProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/dom4j/Document;
    .registers 5
    .parameter "target"
    .parameter "data"

    .prologue
    .line 164
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    .line 165
    invoke-virtual {v1, p1, p2}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    .line 166
    .local v0, node:Lorg/dom4j/ProcessingInstruction;
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractDocument;->add(Lorg/dom4j/ProcessingInstruction;)V

    .line 168
    return-object p0
.end method

.method public asXML()Ljava/lang/String;
    .registers 8

    .prologue
    .line 75
    new-instance v1, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v1}, Lorg/dom4j/io/OutputFormat;-><init>()V

    .line 76
    .local v1, format:Lorg/dom4j/io/OutputFormat;
    iget-object v4, p0, Lorg/dom4j/tree/AbstractDocument;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/dom4j/io/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 79
    :try_start_a
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 80
    .local v2, out:Ljava/io/StringWriter;
    new-instance v3, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v3, v2, v1}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 81
    .local v3, writer:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v3, p0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 82
    invoke-virtual {v3}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 84
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1d} :catch_1f

    move-result-object v4

    return-object v4

    .line 85
    .end local v2           #out:Ljava/io/StringWriter;
    .end local v3           #writer:Lorg/dom4j/io/XMLWriter;
    :catch_1f
    move-exception v0

    .line 86
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "IOException while generating textual representation: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public asXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;
    .registers 2
    .parameter "parent"

    .prologue
    .line 222
    return-object p0
.end method

.method protected checkAddElementAllowed(Lorg/dom4j/Element;)V
    .registers 6
    .parameter "element"

    .prologue
    .line 238
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    .line 240
    .local v0, root:Lorg/dom4j/Element;
    if-eqz v0, :cond_1f

    .line 241
    new-instance v1, Lorg/dom4j/IllegalAddException;

    .line 242
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Cannot add another element to this Document as it already has a root element of: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-interface {v0}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 242
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-direct {v1, p0, p1, v2}, Lorg/dom4j/IllegalAddException;-><init>(Lorg/dom4j/Branch;Lorg/dom4j/Node;Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_1f
    return-void
.end method

.method protected childAdded(Lorg/dom4j/Node;)V
    .registers 2
    .parameter "node"

    .prologue
    .line 226
    if-eqz p1, :cond_5

    .line 227
    invoke-interface {p1, p0}, Lorg/dom4j/Node;->setDocument(Lorg/dom4j/Document;)V

    .line 229
    :cond_5
    return-void
.end method

.method protected childRemoved(Lorg/dom4j/Node;)V
    .registers 3
    .parameter "node"

    .prologue
    .line 232
    if-eqz p1, :cond_6

    .line 233
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/dom4j/Node;->setDocument(Lorg/dom4j/Document;)V

    .line 235
    :cond_6
    return-void
.end method

.method public getDocument()Lorg/dom4j/Document;
    .registers 1

    .prologue
    .line 61
    return-object p0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 49
    const/16 v0, 0x9

    return v0
.end method

.method public getPath(Lorg/dom4j/Element;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 53
    const-string v0, "/"

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    .line 71
    .local v0, root:Lorg/dom4j/Element;
    if-eqz v0, :cond_b

    invoke-interface {v0}, Lorg/dom4j/Element;->getStringValue()Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const-string v1, ""

    goto :goto_a
.end method

.method public getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 57
    const-string v0, "/"

    return-object v0
.end method

.method public getXMLEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public normalize()V
    .registers 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    .line 143
    .local v0, element:Lorg/dom4j/Element;
    if-eqz v0, :cond_9

    .line 144
    invoke-interface {v0}, Lorg/dom4j/Element;->normalize()V

    .line 146
    :cond_9
    return-void
.end method

.method public remove(Lorg/dom4j/Element;)Z
    .registers 5
    .parameter "element"

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-super {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->remove(Lorg/dom4j/Element;)Z

    move-result v0

    .line 210
    .local v0, answer:Z
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    .line 212
    .local v1, root:Lorg/dom4j/Element;
    if-eqz v1, :cond_10

    if-eqz v0, :cond_10

    .line 213
    invoke-virtual {p0, v2}, Lorg/dom4j/tree/AbstractDocument;->setRootElement(Lorg/dom4j/Element;)V

    .line 216
    :cond_10
    invoke-interface {p1, v2}, Lorg/dom4j/Element;->setDocument(Lorg/dom4j/Document;)V

    .line 218
    return v0
.end method

.method protected abstract rootElementAdded(Lorg/dom4j/Element;)V
.end method

.method public setRootElement(Lorg/dom4j/Element;)V
    .registers 2
    .parameter "rootElement"

    .prologue
    .line 194
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->clearContent()V

    .line 196
    if-eqz p1, :cond_b

    .line 197
    invoke-super {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Element;)V

    .line 198
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractDocument;->rootElementAdded(Lorg/dom4j/Element;)V

    .line 200
    :cond_b
    return-void
.end method

.method public setXMLEncoding(Ljava/lang/String;)V
    .registers 2
    .parameter "enc"

    .prologue
    .line 257
    iput-object p1, p0, Lorg/dom4j/tree/AbstractDocument;->encoding:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " [Document: name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/Writer;)V
    .registers 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0}, Lorg/dom4j/io/OutputFormat;-><init>()V

    .line 93
    .local v0, format:Lorg/dom4j/io/OutputFormat;
    iget-object v2, p0, Lorg/dom4j/tree/AbstractDocument;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/dom4j/io/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 95
    new-instance v1, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v1, p1, v0}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 96
    .local v1, writer:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v1, p0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 97
    return-void
.end method
