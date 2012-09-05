.class public Lcom/vlingo/client/core/xml/XmlAttributes;
.super Ljava/lang/Object;
.source "XmlAttributes.java"


# static fields
.field public static final ATTRIBUTE_UNDEF:B


# instance fields
.field private attributeList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/xml/XmlAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;


# direct methods
.method public constructor <init>(ILcom/vlingo/client/core/util/ToIntHashtable;)V
    .registers 4
    .parameter "initialCapacity"
    .parameter "xmlAttributes"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/vlingo/client/core/xml/XmlAttributes;->xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, p1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/vlingo/client/core/xml/XmlAttributes;->attributeList:Ljava/util/Vector;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/vlingo/client/core/util/ToIntHashtable;)V
    .registers 3
    .parameter "xmlAttributes"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/vlingo/client/core/xml/XmlAttributes;->xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/xml/XmlAttributes;->attributeList:Ljava/util/Vector;

    .line 45
    return-void
.end method


# virtual methods
.method public add(BLjava/lang/String;)V
    .registers 5
    .parameter "type"
    .parameter "value"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vlingo/client/core/xml/XmlAttributes;->attributeList:Ljava/util/Vector;

    new-instance v1, Lcom/vlingo/client/core/xml/XmlAttribute;

    invoke-direct {v1, p1, p2}, Lcom/vlingo/client/core/xml/XmlAttribute;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public getAttribute(I)Lcom/vlingo/client/core/xml/XmlAttribute;
    .registers 3
    .parameter "index"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vlingo/client/core/xml/XmlAttributes;->attributeList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/xml/XmlAttribute;

    return-object v0
.end method

.method public getAttributeType([CII)B
    .registers 6
    .parameter "data"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 59
    invoke-static {p1, p2, p3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/vlingo/client/core/xml/XmlAttributes;->xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;

    invoke-interface {v1, v0}, Lcom/vlingo/client/core/util/ToIntHashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 62
    iget-object v1, p0, Lcom/vlingo/client/core/xml/XmlAttributes;->xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;

    invoke-interface {v1, v0}, Lcom/vlingo/client/core/util/ToIntHashtable;->get(Ljava/lang/Object;)I

    move-result v1

    int-to-byte v1, v1

    .line 64
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vlingo/client/core/xml/XmlAttributes;->attributeList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getType(I)I
    .registers 4
    .parameter "index"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/vlingo/client/core/xml/XmlAttributes;->attributeList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p1, v1, :cond_17

    .line 79
    iget-object v1, p0, Lcom/vlingo/client/core/xml/XmlAttributes;->attributeList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/xml/XmlAttribute;

    .line 80
    .local v0, attribute:Lcom/vlingo/client/core/xml/XmlAttribute;
    if-eqz v0, :cond_17

    .line 81
    invoke-virtual {v0}, Lcom/vlingo/client/core/xml/XmlAttribute;->getType()I

    move-result v1

    .line 84
    .end local v0           #attribute:Lcom/vlingo/client/core/xml/XmlAttribute;
    :goto_16
    return v1

    :cond_17
    const/4 v1, -0x1

    goto :goto_16
.end method

.method public getValue(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 91
    iget-object v1, p0, Lcom/vlingo/client/core/xml/XmlAttributes;->attributeList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p1, v1, :cond_17

    .line 92
    iget-object v1, p0, Lcom/vlingo/client/core/xml/XmlAttributes;->attributeList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/xml/XmlAttribute;

    .line 93
    .local v0, attribute:Lcom/vlingo/client/core/xml/XmlAttribute;
    if-eqz v0, :cond_17

    .line 94
    invoke-virtual {v0}, Lcom/vlingo/client/core/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 97
    .end local v0           #attribute:Lcom/vlingo/client/core/xml/XmlAttribute;
    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public lookup(I)Ljava/lang/String;
    .registers 5
    .parameter "key"

    .prologue
    .line 102
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/vlingo/client/core/xml/XmlAttributes;->attributeList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 103
    iget-object v2, p0, Lcom/vlingo/client/core/xml/XmlAttributes;->attributeList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/xml/XmlAttribute;

    .line 104
    .local v0, attribute:Lcom/vlingo/client/core/xml/XmlAttribute;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/vlingo/client/core/xml/XmlAttribute;->getType()I

    move-result v2

    if-ne v2, p1, :cond_1e

    .line 105
    invoke-virtual {v0}, Lcom/vlingo/client/core/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 107
    .end local v0           #attribute:Lcom/vlingo/client/core/xml/XmlAttribute;
    :goto_1d
    return-object v2

    .line 102
    .restart local v0       #attribute:Lcom/vlingo/client/core/xml/XmlAttribute;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 107
    .end local v0           #attribute:Lcom/vlingo/client/core/xml/XmlAttribute;
    :cond_21
    const/4 v2, 0x0

    goto :goto_1d
.end method
