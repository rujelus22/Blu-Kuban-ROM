.class public Lorg/dom4j/tree/ElementNameIterator;
.super Lorg/dom4j/tree/FilterIterator;
.source "ElementNameIterator.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/lang/String;)V
    .registers 3
    .parameter "proxy"
    .parameter "name"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/dom4j/tree/FilterIterator;-><init>(Ljava/util/Iterator;)V

    .line 31
    iput-object p2, p0, Lorg/dom4j/tree/ElementNameIterator;->name:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method protected matches(Ljava/lang/Object;)Z
    .registers 5
    .parameter "object"

    .prologue
    .line 44
    instance-of v1, p1, Lorg/dom4j/Element;

    if-eqz v1, :cond_12

    move-object v0, p1

    .line 45
    check-cast v0, Lorg/dom4j/Element;

    .line 47
    .local v0, element:Lorg/dom4j/Element;
    iget-object v1, p0, Lorg/dom4j/tree/ElementNameIterator;->name:Ljava/lang/String;

    invoke-interface {v0}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 50
    .end local v0           #element:Lorg/dom4j/Element;
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method
