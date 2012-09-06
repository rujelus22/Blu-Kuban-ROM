.class Lorg/simpleframework/xml/core/ElementMapLabel;
.super Lorg/simpleframework/xml/core/TemplateLabel;
.source "ElementMapLabel.java"


# instance fields
.field private decorator:Lorg/simpleframework/xml/core/Decorator;

.field private detail:Lorg/simpleframework/xml/core/Introspector;

.field private entry:Lorg/simpleframework/xml/core/Entry;

.field private items:[Ljava/lang/Class;

.field private label:Lorg/simpleframework/xml/ElementMap;

.field private name:Ljava/lang/String;

.field private parent:Ljava/lang/String;

.field private type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementMap;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateLabel;-><init>()V

    .line 89
    new-instance v0, Lorg/simpleframework/xml/core/Introspector;

    invoke-direct {v0, p1, p0}, Lorg/simpleframework/xml/core/Introspector;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/core/Label;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    .line 90
    new-instance v0, Lorg/simpleframework/xml/core/Qualifier;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Qualifier;-><init>(Lorg/simpleframework/xml/core/Contact;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

    .line 91
    new-instance v0, Lorg/simpleframework/xml/core/Entry;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/Entry;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementMap;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->entry:Lorg/simpleframework/xml/core/Entry;

    .line 92
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Contact;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->type:Ljava/lang/Class;

    .line 93
    invoke-interface {p2}, Lorg/simpleframework/xml/ElementMap;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->name:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->label:Lorg/simpleframework/xml/ElementMap;

    .line 95
    return-void
.end method

.method private getMap()Lorg/simpleframework/xml/strategy/Type;
    .registers 3

    .prologue
    .line 276
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->type:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->label:Lorg/simpleframework/xml/ElementMap;

    return-object v0
.end method

.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    return-object v0
.end method

.method public getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .registers 5
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Lorg/simpleframework/xml/core/ElementMapLabel;->getMap()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v1

    .line 123
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->label:Lorg/simpleframework/xml/ElementMap;

    invoke-interface {v0}, Lorg/simpleframework/xml/ElementMap;->inline()Z

    move-result v0

    if-nez v0, :cond_14

    .line 124
    new-instance v0, Lorg/simpleframework/xml/core/CompositeMap;

    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-direct {v0, p1, v2, v1}, Lorg/simpleframework/xml/core/CompositeMap;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V

    .line 126
    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Lorg/simpleframework/xml/core/CompositeInlineMap;

    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-direct {v0, p1, v2, v1}, Lorg/simpleframework/xml/core/CompositeInlineMap;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V

    goto :goto_13
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

    return-object v0
.end method

.method public getDependent()Lorg/simpleframework/xml/strategy/Type;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 196
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementMapLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->items:[Ljava/lang/Class;

    if-nez v1, :cond_f

    .line 199
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Contact;->getDependents()[Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->items:[Ljava/lang/Class;

    .line 201
    :cond_f
    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->items:[Ljava/lang/Class;

    if-nez v1, :cond_20

    .line 202
    new-instance v1, Lorg/simpleframework/xml/core/ElementException;

    const-string v2, "Unable to determine type for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 204
    :cond_20
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->items:[Ljava/lang/Class;

    array-length v0, v0

    if-nez v0, :cond_2d

    .line 205
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    .line 207
    :goto_2c
    return-object v0

    :cond_2d
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->items:[Ljava/lang/Class;

    aget-object v1, v1, v4

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    goto :goto_2c
.end method

.method public getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 178
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->type:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    .line 179
    new-instance v1, Lorg/simpleframework/xml/core/MapFactory;

    invoke-direct {v1, p1, v0}, Lorg/simpleframework/xml/core/MapFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    .line 181
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->label:Lorg/simpleframework/xml/ElementMap;

    invoke-interface {v0}, Lorg/simpleframework/xml/ElementMap;->empty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 182
    invoke-virtual {v1}, Lorg/simpleframework/xml/core/Factory;->getInstance()Ljava/lang/Object;

    move-result-object v0

    .line 184
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getEntry()Ljava/lang/String;
    .registers 3

    .prologue
    .line 219
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->parent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/core/Introspector;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 220
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->getEntry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->parent:Ljava/lang/String;

    .line 222
    :cond_12
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->parent:Ljava/lang/String;

    return-object v0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->label:Lorg/simpleframework/xml/ElementMap;

    invoke-interface {v0}, Lorg/simpleframework/xml/ElementMap;->inline()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 236
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Entry;->getEntry()Ljava/lang/String;

    move-result-object v0

    .line 238
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 141
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v1

    .line 142
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Entry;->getEntry()Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->label:Lorg/simpleframework/xml/ElementMap;

    invoke-interface {v2}, Lorg/simpleframework/xml/ElementMap;->inline()Z

    move-result v2

    if-nez v2, :cond_18

    .line 145
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->getName()Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_18
    invoke-interface {v1, v0}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverride()Ljava/lang/String;
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 250
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementMapLabel;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 251
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementMapLabel;->getName()Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementMapLabel;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 162
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ElementMapLabel;->getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public isCollection()Z
    .registers 2

    .prologue
    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public isData()Z
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->label:Lorg/simpleframework/xml/ElementMap;

    invoke-interface {v0}, Lorg/simpleframework/xml/ElementMap;->data()Z

    move-result v0

    return v0
.end method

.method public isInline()Z
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->label:Lorg/simpleframework/xml/ElementMap;

    invoke-interface {v0}, Lorg/simpleframework/xml/ElementMap;->inline()Z

    move-result v0

    return v0
.end method

.method public isRequired()Z
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->label:Lorg/simpleframework/xml/ElementMap;

    invoke-interface {v0}, Lorg/simpleframework/xml/ElementMap;->required()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
