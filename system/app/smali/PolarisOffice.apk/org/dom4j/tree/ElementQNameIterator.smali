.class public Lorg/dom4j/tree/ElementQNameIterator;
.super Lorg/dom4j/tree/FilterIterator;
.source "ElementQNameIterator.java"


# instance fields
.field private qName:Lorg/dom4j/QName;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lorg/dom4j/QName;)V
    .registers 3
    .parameter "proxy"
    .parameter "qName"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/dom4j/tree/FilterIterator;-><init>(Ljava/util/Iterator;)V

    .line 32
    iput-object p2, p0, Lorg/dom4j/tree/ElementQNameIterator;->qName:Lorg/dom4j/QName;

    .line 33
    return-void
.end method


# virtual methods
.method protected matches(Ljava/lang/Object;)Z
    .registers 5
    .parameter "object"

    .prologue
    .line 45
    instance-of v1, p1, Lorg/dom4j/Element;

    if-eqz v1, :cond_12

    move-object v0, p1

    .line 46
    check-cast v0, Lorg/dom4j/Element;

    .line 48
    .local v0, element:Lorg/dom4j/Element;
    iget-object v1, p0, Lorg/dom4j/tree/ElementQNameIterator;->qName:Lorg/dom4j/QName;

    invoke-interface {v0}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 51
    .end local v0           #element:Lorg/dom4j/Element;
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method
