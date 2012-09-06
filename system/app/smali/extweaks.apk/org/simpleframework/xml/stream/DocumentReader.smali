.class Lorg/simpleframework/xml/stream/DocumentReader;
.super Ljava/lang/Object;
.source "DocumentReader.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/EventReader;


# static fields
.field private static final RESERVED:Ljava/lang/String; = "xml"


# instance fields
.field private peek:Lorg/simpleframework/xml/stream/EventNode;

.field private queue:Lorg/simpleframework/xml/stream/NodeExtractor;

.field private stack:Lorg/simpleframework/xml/stream/NodeStack;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .registers 3
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lorg/simpleframework/xml/stream/NodeExtractor;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/NodeExtractor;-><init>(Lorg/w3c/dom/Document;)V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader;->queue:Lorg/simpleframework/xml/stream/NodeExtractor;

    .line 74
    new-instance v0, Lorg/simpleframework/xml/stream/NodeStack;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/NodeStack;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader;->stack:Lorg/simpleframework/xml/stream/NodeStack;

    .line 75
    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader;->stack:Lorg/simpleframework/xml/stream/NodeStack;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/NodeStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method private attribute(Lorg/w3c/dom/Node;)Lorg/simpleframework/xml/stream/DocumentReader$Entry;
    .registers 3
    .parameter

    .prologue
    .line 234
    new-instance v0, Lorg/simpleframework/xml/stream/DocumentReader$Entry;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/DocumentReader$Entry;-><init>(Lorg/w3c/dom/Node;)V

    return-object v0
.end method

.method private build(Lorg/simpleframework/xml/stream/DocumentReader$Start;)Lorg/simpleframework/xml/stream/DocumentReader$Start;
    .registers 7
    .parameter

    .prologue
    .line 209
    invoke-virtual {p1}, Lorg/simpleframework/xml/stream/DocumentReader$Start;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 210
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    .line 212
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_1f

    .line 213
    invoke-interface {v1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 214
    invoke-direct {p0, v3}, Lorg/simpleframework/xml/stream/DocumentReader;->attribute(Lorg/w3c/dom/Node;)Lorg/simpleframework/xml/stream/DocumentReader$Entry;

    move-result-object v3

    .line 216
    invoke-interface {v3}, Lorg/simpleframework/xml/stream/Attribute;->isReserved()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 217
    invoke-virtual {p1, v3}, Lorg/simpleframework/xml/stream/DocumentReader$Start;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 220
    :cond_1f
    return-object p1
.end method

.method private convert(Lorg/w3c/dom/Node;)Lorg/simpleframework/xml/stream/EventNode;
    .registers 4
    .parameter

    .prologue
    .line 167
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    .line 169
    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 170
    if-eqz p1, :cond_e

    .line 171
    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader;->stack:Lorg/simpleframework/xml/stream/NodeStack;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/NodeStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_e
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/DocumentReader;->start(Lorg/w3c/dom/Node;)Lorg/simpleframework/xml/stream/DocumentReader$Start;

    move-result-object v0

    .line 175
    :goto_12
    return-object v0

    :cond_13
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/DocumentReader;->text(Lorg/w3c/dom/Node;)Lorg/simpleframework/xml/stream/DocumentReader$Text;

    move-result-object v0

    goto :goto_12
.end method

.method private end()Lorg/simpleframework/xml/stream/DocumentReader$End;
    .registers 3

    .prologue
    .line 261
    new-instance v0, Lorg/simpleframework/xml/stream/DocumentReader$End;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/DocumentReader$End;-><init>(Lorg/simpleframework/xml/stream/DocumentReader$1;)V

    return-object v0
.end method

.method private read()Lorg/simpleframework/xml/stream/EventNode;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader;->queue:Lorg/simpleframework/xml/stream/NodeExtractor;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/NodeExtractor;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 123
    if-nez v0, :cond_f

    .line 124
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/DocumentReader;->end()Lorg/simpleframework/xml/stream/DocumentReader$End;

    move-result-object v0

    .line 126
    :goto_e
    return-object v0

    :cond_f
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/DocumentReader;->read(Lorg/w3c/dom/Node;)Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    goto :goto_e
.end method

.method private read(Lorg/w3c/dom/Node;)Lorg/simpleframework/xml/stream/EventNode;
    .registers 4
    .parameter

    .prologue
    .line 140
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 141
    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader;->stack:Lorg/simpleframework/xml/stream/NodeStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/NodeStack;->top()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 143
    if-eq v1, v0, :cond_1a

    .line 144
    if-eqz v0, :cond_15

    .line 145
    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader;->stack:Lorg/simpleframework/xml/stream/NodeStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/NodeStack;->pop()Ljava/lang/Object;

    .line 147
    :cond_15
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/DocumentReader;->end()Lorg/simpleframework/xml/stream/DocumentReader$End;

    move-result-object v0

    .line 152
    :goto_19
    return-object v0

    .line 149
    :cond_1a
    if-eqz p1, :cond_21

    .line 150
    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader;->queue:Lorg/simpleframework/xml/stream/NodeExtractor;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/NodeExtractor;->poll()Ljava/lang/Object;

    .line 152
    :cond_21
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/DocumentReader;->convert(Lorg/w3c/dom/Node;)Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    goto :goto_19
.end method

.method private start(Lorg/w3c/dom/Node;)Lorg/simpleframework/xml/stream/DocumentReader$Start;
    .registers 4
    .parameter

    .prologue
    .line 189
    new-instance v0, Lorg/simpleframework/xml/stream/DocumentReader$Start;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/DocumentReader$Start;-><init>(Lorg/w3c/dom/Node;)V

    .line 191
    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/DocumentReader$Start;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 192
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/DocumentReader;->build(Lorg/simpleframework/xml/stream/DocumentReader$Start;)Lorg/simpleframework/xml/stream/DocumentReader$Start;

    move-result-object v0

    .line 194
    :cond_f
    return-object v0
.end method

.method private text(Lorg/w3c/dom/Node;)Lorg/simpleframework/xml/stream/DocumentReader$Text;
    .registers 3
    .parameter

    .prologue
    .line 248
    new-instance v0, Lorg/simpleframework/xml/stream/DocumentReader$Text;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/DocumentReader$Text;-><init>(Lorg/w3c/dom/Node;)V

    return-object v0
.end method


# virtual methods
.method public next()Lorg/simpleframework/xml/stream/EventNode;
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    .line 104
    if-nez v0, :cond_9

    .line 105
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/DocumentReader;->read()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    .line 109
    :goto_8
    return-object v0

    .line 107
    :cond_9
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/simpleframework/xml/stream/DocumentReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    goto :goto_8
.end method

.method public peek()Lorg/simpleframework/xml/stream/EventNode;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    if-nez v0, :cond_a

    .line 88
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/DocumentReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    .line 90
    :cond_a
    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    return-object v0
.end method
