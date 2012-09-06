.class Lorg/simpleframework/xml/core/AttributeLabel;
.super Lorg/simpleframework/xml/core/TemplateLabel;
.source "AttributeLabel.java"


# instance fields
.field private decorator:Lorg/simpleframework/xml/core/Decorator;

.field private detail:Lorg/simpleframework/xml/core/Introspector;

.field private empty:Ljava/lang/String;

.field private label:Lorg/simpleframework/xml/Attribute;

.field private name:Ljava/lang/String;

.field private type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/Attribute;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateLabel;-><init>()V

    .line 77
    new-instance v0, Lorg/simpleframework/xml/core/Introspector;

    invoke-direct {v0, p1, p0}, Lorg/simpleframework/xml/core/Introspector;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/core/Label;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/AttributeLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    .line 78
    new-instance v0, Lorg/simpleframework/xml/core/Qualifier;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Qualifier;-><init>(Lorg/simpleframework/xml/core/Contact;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/AttributeLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

    .line 79
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Contact;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/AttributeLabel;->type:Ljava/lang/Class;

    .line 80
    invoke-interface {p2}, Lorg/simpleframework/xml/Attribute;->empty()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/AttributeLabel;->empty:Ljava/lang/String;

    .line 81
    invoke-interface {p2}, Lorg/simpleframework/xml/Attribute;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/AttributeLabel;->name:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lorg/simpleframework/xml/core/AttributeLabel;->label:Lorg/simpleframework/xml/Attribute;

    .line 83
    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lorg/simpleframework/xml/core/AttributeLabel;->label:Lorg/simpleframework/xml/Attribute;

    return-object v0
.end method

.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lorg/simpleframework/xml/core/AttributeLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    return-object v0
.end method

.method public getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .registers 8
    .parameter

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/AttributeLabel;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/AttributeLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v1

    .line 109
    invoke-interface {p1, v1}, Lorg/simpleframework/xml/core/Context;->isPrimitive(Lorg/simpleframework/xml/strategy/Type;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 110
    new-instance v0, Lorg/simpleframework/xml/core/AttributeException;

    const-string v2, "Cannot use %s to represent %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/simpleframework/xml/core/AttributeLabel;->label:Lorg/simpleframework/xml/Attribute;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/AttributeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 112
    :cond_21
    new-instance v2, Lorg/simpleframework/xml/core/Primitive;

    invoke-direct {v2, p1, v1, v0}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    return-object v2
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/simpleframework/xml/core/AttributeLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

    return-object v0
.end method

.method public bridge synthetic getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/AttributeLabel;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lorg/simpleframework/xml/core/AttributeLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    iget-object v1, p0, Lorg/simpleframework/xml/core/AttributeLabel;->empty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/core/Introspector;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lorg/simpleframework/xml/core/AttributeLabel;->empty:Ljava/lang/String;

    goto :goto_b
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lorg/simpleframework/xml/core/AttributeLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lorg/simpleframework/xml/core/AttributeLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 144
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lorg/simpleframework/xml/core/AttributeLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/Introspector;->getName()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverride()Ljava/lang/String;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lorg/simpleframework/xml/core/AttributeLabel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 189
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/AttributeLabel;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/AttributeLabel;->getName()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Expression;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/AttributeLabel;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 162
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/AttributeLabel;->getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Expression;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lorg/simpleframework/xml/core/AttributeLabel;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public isAttribute()Z
    .registers 2

    .prologue
    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public isData()Z
    .registers 2

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public isRequired()Z
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lorg/simpleframework/xml/core/AttributeLabel;->label:Lorg/simpleframework/xml/Attribute;

    invoke-interface {v0}, Lorg/simpleframework/xml/Attribute;->required()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lorg/simpleframework/xml/core/AttributeLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
