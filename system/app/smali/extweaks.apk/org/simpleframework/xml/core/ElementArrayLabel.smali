.class Lorg/simpleframework/xml/core/ElementArrayLabel;
.super Lorg/simpleframework/xml/core/TemplateLabel;
.source "ElementArrayLabel.java"


# instance fields
.field private decorator:Lorg/simpleframework/xml/core/Decorator;

.field private detail:Lorg/simpleframework/xml/core/Introspector;

.field private entry:Ljava/lang/String;

.field private label:Lorg/simpleframework/xml/ElementArray;

.field private name:Ljava/lang/String;

.field private type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementArray;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateLabel;-><init>()V

    .line 80
    new-instance v0, Lorg/simpleframework/xml/core/Introspector;

    invoke-direct {v0, p1, p0}, Lorg/simpleframework/xml/core/Introspector;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/core/Label;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    .line 81
    new-instance v0, Lorg/simpleframework/xml/core/Qualifier;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Qualifier;-><init>(Lorg/simpleframework/xml/core/Contact;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

    .line 82
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Contact;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->type:Ljava/lang/Class;

    .line 83
    invoke-interface {p2}, Lorg/simpleframework/xml/ElementArray;->entry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->entry:Ljava/lang/String;

    .line 84
    invoke-interface {p2}, Lorg/simpleframework/xml/ElementArray;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->name:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->label:Lorg/simpleframework/xml/ElementArray;

    .line 86
    return-void
.end method

.method private getConverter(Lorg/simpleframework/xml/core/Context;Ljava/lang/String;)Lorg/simpleframework/xml/core/Converter;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementArrayLabel;->getDependent()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v1

    .line 132
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementArrayLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v2

    .line 134
    invoke-interface {p1, v1}, Lorg/simpleframework/xml/core/Context;->isPrimitive(Lorg/simpleframework/xml/strategy/Type;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 135
    new-instance v0, Lorg/simpleframework/xml/core/CompositeArray;

    invoke-direct {v0, p1, v2, v1, p2}, Lorg/simpleframework/xml/core/CompositeArray;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    .line 137
    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Lorg/simpleframework/xml/core/PrimitiveArray;

    invoke-direct {v0, p1, v2, v1, p2}, Lorg/simpleframework/xml/core/PrimitiveArray;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private getEntry(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 151
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementArrayLabel;->getEntry()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->label:Lorg/simpleframework/xml/ElementArray;

    return-object v0
.end method

.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    return-object v0
.end method

.method public getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .registers 8
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ElementArrayLabel;->getEntry(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementArrayLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_23

    .line 115
    new-instance v0, Lorg/simpleframework/xml/core/InstantiationException;

    const-string v2, "Type is not an array %s for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->type:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 117
    :cond_23
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/ElementArrayLabel;->getConverter(Lorg/simpleframework/xml/core/Context;Ljava/lang/String;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    return-object v0
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

    return-object v0
.end method

.method public getDependent()Lorg/simpleframework/xml/strategy/Type;
    .registers 3

    .prologue
    .line 288
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 290
    if-nez v1, :cond_10

    .line 291
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->type:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    .line 293
    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    goto :goto_f
.end method

.method public getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 203
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->type:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    .line 204
    new-instance v1, Lorg/simpleframework/xml/core/ArrayFactory;

    invoke-direct {v1, p1, v0}, Lorg/simpleframework/xml/core/ArrayFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    .line 206
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->label:Lorg/simpleframework/xml/ElementArray;

    invoke-interface {v0}, Lorg/simpleframework/xml/ElementArray;->empty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 207
    invoke-virtual {v1}, Lorg/simpleframework/xml/core/Factory;->getInstance()Ljava/lang/Object;

    move-result-object v0

    .line 209
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getEntry()Ljava/lang/String;
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->entry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/core/Introspector;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 222
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->getEntry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->entry:Ljava/lang/String;

    .line 224
    :cond_12
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->entry:Ljava/lang/String;

    return-object v0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 169
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/Introspector;->getName()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverride()Ljava/lang/String;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 249
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementArrayLabel;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 250
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementArrayLabel;->getName()Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 186
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementArrayLabel;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 187
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ElementArrayLabel;->getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public isData()Z
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->label:Lorg/simpleframework/xml/ElementArray;

    invoke-interface {v0}, Lorg/simpleframework/xml/ElementArray;->data()Z

    move-result v0

    return v0
.end method

.method public isRequired()Z
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->label:Lorg/simpleframework/xml/ElementArray;

    invoke-interface {v0}, Lorg/simpleframework/xml/ElementArray;->required()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
