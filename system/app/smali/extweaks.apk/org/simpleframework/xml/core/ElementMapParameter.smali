.class Lorg/simpleframework/xml/core/ElementMapParameter;
.super Lorg/simpleframework/xml/core/TemplateParameter;
.source "ElementMapParameter.java"


# instance fields
.field private final contact:Lorg/simpleframework/xml/core/ElementMapParameter$Contact;

.field private final expression:Lorg/simpleframework/xml/core/Expression;

.field private final factory:Ljava/lang/reflect/Constructor;

.field private final index:I

.field private final label:Lorg/simpleframework/xml/core/Label;

.field private final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;Lorg/simpleframework/xml/ElementMap;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateParameter;-><init>()V

    .line 88
    new-instance v0, Lorg/simpleframework/xml/core/ElementMapParameter$Contact;

    invoke-direct {v0, p2, p1, p3}, Lorg/simpleframework/xml/core/ElementMapParameter$Contact;-><init>(Lorg/simpleframework/xml/ElementMap;Ljava/lang/reflect/Constructor;I)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->contact:Lorg/simpleframework/xml/core/ElementMapParameter$Contact;

    .line 89
    new-instance v0, Lorg/simpleframework/xml/core/ElementMapLabel;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->contact:Lorg/simpleframework/xml/core/ElementMapParameter$Contact;

    invoke-direct {v0, v1, p2}, Lorg/simpleframework/xml/core/ElementMapLabel;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementMap;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->label:Lorg/simpleframework/xml/core/Label;

    .line 90
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->expression:Lorg/simpleframework/xml/core/Expression;

    .line 91
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->path:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->type:Ljava/lang/Class;

    .line 93
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->name:Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->factory:Ljava/lang/reflect/Constructor;

    .line 95
    iput p3, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->index:I

    .line 96
    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->contact:Lorg/simpleframework/xml/core/ElementMapParameter$Contact;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ElementMapParameter$Contact;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->expression:Lorg/simpleframework/xml/core/Expression;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 164
    iget v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isPrimitive()Z
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public isRequired()Z
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->contact:Lorg/simpleframework/xml/core/ElementMapParameter$Contact;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ElementMapParameter$Contact;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
