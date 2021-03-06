.class Lorg/simpleframework/xml/core/AttributeParameter;
.super Lorg/simpleframework/xml/core/TemplateParameter;
.source "AttributeParameter.java"


# instance fields
.field private final contact:Lorg/simpleframework/xml/core/AttributeParameter$Contact;

.field private final expression:Lorg/simpleframework/xml/core/Expression;

.field private final factory:Ljava/lang/reflect/Constructor;

.field private final index:I

.field private final label:Lorg/simpleframework/xml/core/Label;

.field private final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;Lorg/simpleframework/xml/Attribute;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateParameter;-><init>()V

    .line 89
    new-instance v0, Lorg/simpleframework/xml/core/AttributeParameter$Contact;

    invoke-direct {v0, p2, p1, p3}, Lorg/simpleframework/xml/core/AttributeParameter$Contact;-><init>(Lorg/simpleframework/xml/Attribute;Ljava/lang/reflect/Constructor;I)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/AttributeParameter;->contact:Lorg/simpleframework/xml/core/AttributeParameter$Contact;

    .line 90
    new-instance v0, Lorg/simpleframework/xml/core/AttributeLabel;

    iget-object v1, p0, Lorg/simpleframework/xml/core/AttributeParameter;->contact:Lorg/simpleframework/xml/core/AttributeParameter$Contact;

    invoke-direct {v0, v1, p2}, Lorg/simpleframework/xml/core/AttributeLabel;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/Attribute;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/AttributeParameter;->label:Lorg/simpleframework/xml/core/Label;

    .line 91
    iget-object v0, p0, Lorg/simpleframework/xml/core/AttributeParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/AttributeParameter;->expression:Lorg/simpleframework/xml/core/Expression;

    .line 92
    iget-object v0, p0, Lorg/simpleframework/xml/core/AttributeParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/AttributeParameter;->path:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lorg/simpleframework/xml/core/AttributeParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/AttributeParameter;->type:Ljava/lang/Class;

    .line 94
    iget-object v0, p0, Lorg/simpleframework/xml/core/AttributeParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/AttributeParameter;->name:Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lorg/simpleframework/xml/core/AttributeParameter;->factory:Ljava/lang/reflect/Constructor;

    .line 96
    iput p3, p0, Lorg/simpleframework/xml/core/AttributeParameter;->index:I

    .line 97
    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lorg/simpleframework/xml/core/AttributeParameter;->contact:Lorg/simpleframework/xml/core/AttributeParameter$Contact;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/AttributeParameter$Contact;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lorg/simpleframework/xml/core/AttributeParameter;->expression:Lorg/simpleframework/xml/core/Expression;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 198
    iget v0, p0, Lorg/simpleframework/xml/core/AttributeParameter;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/simpleframework/xml/core/AttributeParameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 161
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/AttributeParameter;->getName()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lorg/simpleframework/xml/core/AttributeParameter;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 145
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/AttributeParameter;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 146
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/AttributeParameter;->getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Expression;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 3

    .prologue
    .line 175
    iget-object v0, p0, Lorg/simpleframework/xml/core/AttributeParameter;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lorg/simpleframework/xml/core/AttributeParameter;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isAttribute()Z
    .registers 2

    .prologue
    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public isPrimitive()Z
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lorg/simpleframework/xml/core/AttributeParameter;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public isRequired()Z
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lorg/simpleframework/xml/core/AttributeParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lorg/simpleframework/xml/core/AttributeParameter;->contact:Lorg/simpleframework/xml/core/AttributeParameter$Contact;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/AttributeParameter$Contact;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
