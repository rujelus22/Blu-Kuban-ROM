.class public Lcom/samsung/upnp/media/server/object/ContentProperty;
.super Ljava/lang/Object;
.source "ContentProperty.java"


# instance fields
.field private attrList:Lcom/samsung/xml/AttributeList;

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/object/ContentProperty;->name:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/object/ContentProperty;->value:Ljava/lang/String;

    .line 100
    new-instance v0, Lcom/samsung/xml/AttributeList;

    invoke-direct {v0}, Lcom/samsung/xml/AttributeList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/object/ContentProperty;->attrList:Lcom/samsung/xml/AttributeList;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/object/ContentProperty;->name:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/object/ContentProperty;->value:Ljava/lang/String;

    .line 100
    new-instance v0, Lcom/samsung/xml/AttributeList;

    invoke-direct {v0}, Lcom/samsung/xml/AttributeList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/object/ContentProperty;->attrList:Lcom/samsung/xml/AttributeList;

    .line 41
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/ContentProperty;->setName(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/samsung/upnp/media/server/object/ContentProperty;->setValue(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static CreateContentProperty(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/media/server/object/ContentProperty;
    .registers 7
    .parameter "propNode"

    .prologue
    .line 50
    new-instance v1, Lcom/samsung/upnp/media/server/object/ContentProperty;

    invoke-direct {v1}, Lcom/samsung/upnp/media/server/object/ContentProperty;-><init>()V

    .line 52
    .local v1, cp:Lcom/samsung/upnp/media/server/object/ContentProperty;
    invoke-virtual {p0}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/upnp/media/server/object/ContentProperty;->setName(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/upnp/media/server/object/ContentProperty;->setValue(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/samsung/xml/Node;->getNAttributes()I

    move-result v3

    .line 56
    .local v3, nAttr:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_18
    if-lt v2, v3, :cond_21

    .line 62
    invoke-static {v1}, Lcom/samsung/upnp/media/server/object/ValueValidator;->isValidContentProperty(Lcom/samsung/upnp/media/server/object/ContentProperty;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 65
    .end local v1           #cp:Lcom/samsung/upnp/media/server/object/ContentProperty;
    :goto_20
    return-object v1

    .line 57
    .restart local v1       #cp:Lcom/samsung/upnp/media/server/object/ContentProperty;
    :cond_21
    invoke-virtual {p0, v2}, Lcom/samsung/xml/Node;->getAttribute(I)Lcom/samsung/xml/Attribute;

    move-result-object v0

    .line 58
    .local v0, attr:Lcom/samsung/xml/Attribute;
    invoke-virtual {v0}, Lcom/samsung/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 59
    invoke-virtual {p0, v2}, Lcom/samsung/xml/Node;->getAttribute(I)Lcom/samsung/xml/Attribute;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/upnp/media/server/object/ContentProperty;->addAttribute(Lcom/samsung/xml/Attribute;)V

    .line 56
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 65
    .end local v0           #attr:Lcom/samsung/xml/Attribute;
    :cond_3b
    const/4 v1, 0x0

    goto :goto_20
.end method


# virtual methods
.method public addAttribute(Lcom/samsung/xml/Attribute;)V
    .registers 3
    .parameter "attr"

    .prologue
    .line 116
    invoke-static {p1}, Lcom/samsung/upnp/media/server/object/ValueValidator;->isValidAttribute(Lcom/samsung/xml/Attribute;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 117
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/ContentProperty;->attrList:Lcom/samsung/xml/AttributeList;

    invoke-virtual {v0, p1}, Lcom/samsung/xml/AttributeList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_b
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 126
    new-instance v0, Lcom/samsung/xml/Attribute;

    invoke-direct {v0, p1, p2}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .local v0, attr:Lcom/samsung/xml/Attribute;
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/ContentProperty;->addAttribute(Lcom/samsung/xml/Attribute;)V

    .line 128
    return-void
.end method

.method public getAttribute(I)Lcom/samsung/xml/Attribute;
    .registers 3
    .parameter "index"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/ContentProperty;->attrList:Lcom/samsung/xml/AttributeList;

    invoke-virtual {v0, p1}, Lcom/samsung/xml/AttributeList;->getAttribute(I)Lcom/samsung/xml/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Lcom/samsung/xml/Attribute;
    .registers 3
    .parameter "name"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/ContentProperty;->attrList:Lcom/samsung/xml/AttributeList;

    invoke-virtual {v0, p1}, Lcom/samsung/xml/AttributeList;->getAttribute(Ljava/lang/String;)Lcom/samsung/xml/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getAttribute(Ljava/lang/String;)Lcom/samsung/xml/Attribute;

    move-result-object v0

    .line 172
    .local v0, attr:Lcom/samsung/xml/Attribute;
    if-eqz v0, :cond_b

    .line 173
    invoke-virtual {v0}, Lcom/samsung/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 174
    :goto_a
    return-object v1

    :cond_b
    const-string v1, ""

    goto :goto_a
.end method

.method public getNAttributes()I
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/ContentProperty;->attrList:Lcom/samsung/xml/AttributeList;

    invoke-virtual {v0}, Lcom/samsung/xml/AttributeList;->size()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/ContentProperty;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/ContentProperty;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttributes()Z
    .registers 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getNAttributes()I

    move-result v0

    if-lez v0, :cond_8

    .line 145
    const/4 v0, 0x1

    .line 146
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public removeAttribute(Lcom/samsung/xml/Attribute;)Z
    .registers 3
    .parameter "attr"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/ContentProperty;->attrList:Lcom/samsung/xml/AttributeList;

    invoke-virtual {v0, p1}, Lcom/samsung/xml/AttributeList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 154
    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 164
    :cond_14
    :goto_14
    return-void

    .line 157
    :cond_15
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getAttribute(Ljava/lang/String;)Lcom/samsung/xml/Attribute;

    move-result-object v0

    .line 158
    .local v0, attr:Lcom/samsung/xml/Attribute;
    if-eqz v0, :cond_1f

    .line 159
    invoke-virtual {v0, p2}, Lcom/samsung/xml/Attribute;->setValue(Ljava/lang/String;)V

    goto :goto_14

    .line 162
    :cond_1f
    new-instance v0, Lcom/samsung/xml/Attribute;

    .end local v0           #attr:Lcom/samsung/xml/Attribute;
    invoke-direct {v0, p1, p2}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .restart local v0       #attr:Lcom/samsung/xml/Attribute;
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/ContentProperty;->addAttribute(Lcom/samsung/xml/Attribute;)V

    goto :goto_14
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/samsung/upnp/media/server/object/ContentProperty;->name:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/samsung/upnp/media/server/object/ContentProperty;->value:Ljava/lang/String;

    .line 89
    return-void
.end method
