.class public Lorg/dom4j/tree/DefaultDocument;
.super Lorg/dom4j/tree/AbstractDocument;
.source "DefaultDocument.java"


# static fields
.field protected static final EMPTY_ITERATOR:Ljava/util/Iterator;

.field protected static final EMPTY_LIST:Ljava/util/List;


# instance fields
.field private content:Ljava/util/List;

.field private docType:Lorg/dom4j/DocumentType;

.field private documentFactory:Lorg/dom4j/DocumentFactory;

.field private transient entityResolver:Lorg/xml/sax/EntityResolver;

.field private name:Ljava/lang/String;

.field private rootElement:Lorg/dom4j/Element;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lorg/dom4j/tree/DefaultDocument;->EMPTY_LIST:Ljava/util/List;

    .line 36
    sget-object v0, Lorg/dom4j/tree/DefaultDocument;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sput-object v0, Lorg/dom4j/tree/DefaultDocument;->EMPTY_ITERATOR:Ljava/util/Iterator;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractDocument;-><init>()V

    .line 53
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractDocument;-><init>()V

    .line 53
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 62
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->name:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/Element;Lorg/dom4j/DocumentType;)V
    .registers 5
    .parameter "name"
    .parameter "rootElement"
    .parameter "docType"

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractDocument;-><init>()V

    .line 53
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 80
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->name:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    .line 82
    iput-object p3, p0, Lorg/dom4j/tree/DefaultDocument;->docType:Lorg/dom4j/DocumentType;

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentType;)V
    .registers 3
    .parameter "docType"

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractDocument;-><init>()V

    .line 53
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 70
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->docType:Lorg/dom4j/DocumentType;

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;)V
    .registers 3
    .parameter "rootElement"

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractDocument;-><init>()V

    .line 53
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 66
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;Lorg/dom4j/DocumentType;)V
    .registers 4
    .parameter "rootElement"
    .parameter "docType"

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractDocument;-><init>()V

    .line 53
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 74
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    .line 75
    iput-object p2, p0, Lorg/dom4j/tree/DefaultDocument;->docType:Lorg/dom4j/DocumentType;

    .line 76
    return-void
.end method


# virtual methods
.method public addDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Document;
    .registers 5
    .parameter "docTypeName"
    .parameter "publicId"
    .parameter "systemId"

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    .line 108
    invoke-virtual {v0, p1, p2, p3}, Lorg/dom4j/DocumentFactory;->createDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/DocumentType;

    move-result-object v0

    .line 107
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultDocument;->setDocType(Lorg/dom4j/DocumentType;)V

    .line 110
    return-object p0
.end method

.method protected addNode(ILorg/dom4j/Node;)V
    .registers 7
    .parameter "index"
    .parameter "node"

    .prologue
    .line 295
    if-eqz p2, :cond_29

    .line 296
    invoke-interface {p2}, Lorg/dom4j/Node;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 298
    .local v0, document:Lorg/dom4j/Document;
    if-eqz v0, :cond_1f

    if-eq v0, p0, :cond_1f

    .line 300
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "The Node already has an existing document: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 300
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, message:Ljava/lang/String;
    new-instance v2, Lorg/dom4j/IllegalAddException;

    invoke-direct {v2, p0, p2, v1}, Lorg/dom4j/IllegalAddException;-><init>(Lorg/dom4j/Branch;Lorg/dom4j/Node;Ljava/lang/String;)V

    throw v2

    .line 305
    .end local v1           #message:Ljava/lang/String;
    :cond_1f
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 306
    invoke-virtual {p0, p2}, Lorg/dom4j/tree/DefaultDocument;->childAdded(Lorg/dom4j/Node;)V

    .line 308
    .end local v0           #document:Lorg/dom4j/Document;
    :cond_29
    return-void
.end method

.method protected addNode(Lorg/dom4j/Node;)V
    .registers 6
    .parameter "node"

    .prologue
    .line 279
    if-eqz p1, :cond_29

    .line 280
    invoke-interface {p1}, Lorg/dom4j/Node;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 282
    .local v0, document:Lorg/dom4j/Document;
    if-eqz v0, :cond_1f

    if-eq v0, p0, :cond_1f

    .line 284
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "The Node already has an existing document: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 284
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, message:Ljava/lang/String;
    new-instance v2, Lorg/dom4j/IllegalAddException;

    invoke-direct {v2, p0, p1, v1}, Lorg/dom4j/IllegalAddException;-><init>(Lorg/dom4j/Branch;Lorg/dom4j/Node;Ljava/lang/String;)V

    throw v2

    .line 289
    .end local v1           #message:Ljava/lang/String;
    :cond_1f
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultDocument;->childAdded(Lorg/dom4j/Node;)V

    .line 292
    .end local v0           #document:Lorg/dom4j/Document;
    :cond_29
    return-void
.end method

.method public clearContent()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentRemoved()V

    .line 256
    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    .line 257
    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    .line 258
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-super {p0}, Lorg/dom4j/tree/AbstractDocument;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/tree/DefaultDocument;

    .line 127
    .local v0, document:Lorg/dom4j/tree/DefaultDocument;
    iput-object v1, v0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    .line 128
    iput-object v1, v0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    .line 129
    invoke-virtual {v0, p0}, Lorg/dom4j/tree/DefaultDocument;->appendContent(Lorg/dom4j/Branch;)V

    .line 131
    return-object v0
.end method

.method protected contentList()Ljava/util/List;
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    if-nez v0, :cond_15

    .line 268
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->createContentList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    .line 270
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    if-eqz v0, :cond_15

    .line 271
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    iget-object v1, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_15
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    return-object v0
.end method

.method public getDocType()Lorg/dom4j/DocumentType;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->docType:Lorg/dom4j/DocumentType;

    return-object v0
.end method

.method protected getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRootElement()Lorg/dom4j/Element;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    return-object v0
.end method

.method public getXMLEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public processingInstruction(Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;
    .registers 8
    .parameter "target"

    .prologue
    .line 171
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v4

    .line 172
    .local v4, source:Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 174
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-lt v0, v3, :cond_d

    .line 186
    const/4 v2, 0x0

    :cond_c
    return-object v2

    .line 175
    :cond_d
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 177
    .local v1, object:Ljava/lang/Object;
    instance-of v5, v1, Lorg/dom4j/ProcessingInstruction;

    if-eqz v5, :cond_22

    move-object v2, v1

    .line 178
    check-cast v2, Lorg/dom4j/ProcessingInstruction;

    .line 180
    .local v2, pi:Lorg/dom4j/ProcessingInstruction;
    invoke-interface {v2}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 174
    .end local v2           #pi:Lorg/dom4j/ProcessingInstruction;
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public processingInstructions()Ljava/util/List;
    .registers 7

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v4

    .line 136
    .local v4, source:Ljava/util/List;
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v0

    .line 137
    .local v0, answer:Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 139
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-lt v1, v3, :cond_10

    .line 147
    return-object v0

    .line 140
    :cond_10
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 142
    .local v2, object:Ljava/lang/Object;
    instance-of v5, v2, Lorg/dom4j/ProcessingInstruction;

    if-eqz v5, :cond_1b

    .line 143
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method public processingInstructions(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .parameter "target"

    .prologue
    .line 151
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v5

    .line 152
    .local v5, source:Ljava/util/List;
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v0

    .line 153
    .local v0, answer:Ljava/util/List;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 155
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-lt v1, v4, :cond_10

    .line 167
    return-object v0

    .line 156
    :cond_10
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 158
    .local v2, object:Ljava/lang/Object;
    instance-of v6, v2, Lorg/dom4j/ProcessingInstruction;

    if-eqz v6, :cond_28

    move-object v3, v2

    .line 159
    check-cast v3, Lorg/dom4j/ProcessingInstruction;

    .line 161
    .local v3, pi:Lorg/dom4j/ProcessingInstruction;
    invoke-interface {v3}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 162
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v3           #pi:Lorg/dom4j/ProcessingInstruction;
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method protected removeNode(Lorg/dom4j/Node;)Z
    .registers 3
    .parameter "node"

    .prologue
    .line 311
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    if-ne p1, v0, :cond_7

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    .line 315
    :cond_7
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 316
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultDocument;->childRemoved(Lorg/dom4j/Node;)V

    .line 318
    const/4 v0, 0x1

    .line 321
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public removeProcessingInstruction(Ljava/lang/String;)Z
    .registers 7
    .parameter "target"

    .prologue
    .line 190
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v3

    .line 192
    .local v3, source:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_10

    .line 206
    const/4 v4, 0x0

    :goto_f
    return v4

    .line 193
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 195
    .local v1, object:Ljava/lang/Object;
    instance-of v4, v1, Lorg/dom4j/ProcessingInstruction;

    if-eqz v4, :cond_8

    move-object v2, v1

    .line 196
    check-cast v2, Lorg/dom4j/ProcessingInstruction;

    .line 198
    .local v2, pi:Lorg/dom4j/ProcessingInstruction;
    invoke-interface {v2}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 199
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 201
    const/4 v4, 0x1

    goto :goto_f
.end method

.method protected rootElementAdded(Lorg/dom4j/Element;)V
    .registers 2
    .parameter "element"

    .prologue
    .line 325
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    .line 326
    invoke-interface {p1, p0}, Lorg/dom4j/Element;->setDocument(Lorg/dom4j/Document;)V

    .line 327
    return-void
.end method

.method public setContent(Ljava/util/List;)V
    .registers 11
    .parameter "content"

    .prologue
    const/4 v7, 0x0

    .line 210
    iput-object v7, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    .line 211
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentRemoved()V

    .line 213
    instance-of v6, p1, Lorg/dom4j/tree/ContentListFacade;

    if-eqz v6, :cond_10

    .line 214
    check-cast p1, Lorg/dom4j/tree/ContentListFacade;

    .end local p1
    invoke-virtual {p1}, Lorg/dom4j/tree/ContentListFacade;->getBackingList()Ljava/util/List;

    move-result-object p1

    .line 217
    .restart local p1
    :cond_10
    if-nez p1, :cond_15

    .line 218
    iput-object v7, p0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    .line 252
    :goto_14
    return-void

    .line 220
    :cond_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 221
    .local v5, size:I
    invoke-virtual {p0, v5}, Lorg/dom4j/tree/DefaultDocument;->createContentList(I)Ljava/util/List;

    move-result-object v2

    .line 223
    .local v2, newContent:Ljava/util/List;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1e
    if-lt v1, v5, :cond_23

    .line 250
    iput-object v2, p0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    goto :goto_14

    .line 224
    :cond_23
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 226
    .local v4, object:Ljava/lang/Object;
    instance-of v6, v4, Lorg/dom4j/Node;

    if-eqz v6, :cond_4f

    move-object v3, v4

    .line 227
    check-cast v3, Lorg/dom4j/Node;

    .line 228
    .local v3, node:Lorg/dom4j/Node;
    invoke-interface {v3}, Lorg/dom4j/Node;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 230
    .local v0, doc:Lorg/dom4j/Document;
    if-eqz v0, :cond_3c

    if-eq v0, p0, :cond_3c

    .line 231
    invoke-interface {v3}, Lorg/dom4j/Node;->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #node:Lorg/dom4j/Node;
    check-cast v3, Lorg/dom4j/Node;

    .line 234
    .restart local v3       #node:Lorg/dom4j/Node;
    :cond_3c
    instance-of v6, v3, Lorg/dom4j/Element;

    if-eqz v6, :cond_49

    .line 235
    iget-object v6, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    if-nez v6, :cond_52

    move-object v6, v3

    .line 236
    check-cast v6, Lorg/dom4j/Element;

    iput-object v6, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    .line 245
    :cond_49
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {p0, v3}, Lorg/dom4j/tree/DefaultDocument;->childAdded(Lorg/dom4j/Node;)V

    .line 223
    .end local v0           #doc:Lorg/dom4j/Document;
    .end local v3           #node:Lorg/dom4j/Node;
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 238
    .restart local v0       #doc:Lorg/dom4j/Document;
    .restart local v3       #node:Lorg/dom4j/Node;
    :cond_52
    new-instance v6, Lorg/dom4j/IllegalAddException;

    .line 239
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "A document may only contain one root element: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 239
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 238
    invoke-direct {v6, v7}, Lorg/dom4j/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public setDocType(Lorg/dom4j/DocumentType;)V
    .registers 2
    .parameter "docType"

    .prologue
    .line 102
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->docType:Lorg/dom4j/DocumentType;

    .line 103
    return-void
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .registers 2
    .parameter "documentFactory"

    .prologue
    .line 261
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 262
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .registers 2
    .parameter "entityResolver"

    .prologue
    .line 122
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 123
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 90
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->name:Ljava/lang/String;

    .line 91
    return-void
.end method
