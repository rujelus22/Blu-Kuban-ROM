.class Lorg/simpleframework/xml/stream/NodeExtractor;
.super Ljava/util/LinkedList;
.source "NodeExtractor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Lorg/w3c/dom/Node;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 48
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeExtractor;->extract(Lorg/w3c/dom/Document;)V

    .line 49
    return-void
.end method

.method private extract(Lorg/w3c/dom/Document;)V
    .registers 3
    .parameter

    .prologue
    .line 60
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_c

    .line 63
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/NodeExtractor;->offer(Ljava/lang/Object;)Z

    .line 64
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/NodeExtractor;->extract(Lorg/w3c/dom/Node;)V

    .line 66
    :cond_c
    return-void
.end method

.method private extract(Lorg/w3c/dom/Node;)V
    .registers 8
    .parameter

    .prologue
    .line 77
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 78
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 80
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_20

    .line 81
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 82
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    .line 84
    const/16 v5, 0x8

    if-eq v4, v5, :cond_1d

    .line 85
    invoke-virtual {p0, v3}, Lorg/simpleframework/xml/stream/NodeExtractor;->offer(Ljava/lang/Object;)Z

    .line 86
    invoke-direct {p0, v3}, Lorg/simpleframework/xml/stream/NodeExtractor;->extract(Lorg/w3c/dom/Node;)V

    .line 80
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 89
    :cond_20
    return-void
.end method
