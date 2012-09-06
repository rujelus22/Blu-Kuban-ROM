.class Lorg/simpleframework/xml/core/TextLabel;
.super Lorg/simpleframework/xml/core/TemplateLabel;


# instance fields
.field private contact:Lorg/simpleframework/xml/core/Contact;

.field private detail:Lorg/simpleframework/xml/core/Introspector;

.field private empty:Ljava/lang/String;

.field private label:Lorg/simpleframework/xml/Text;

.field private type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/Text;)V
    .registers 4

    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateLabel;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/Introspector;

    invoke-direct {v0, p1, p0}, Lorg/simpleframework/xml/core/Introspector;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/core/Label;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TextLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Contact;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/TextLabel;->type:Ljava/lang/Class;

    invoke-interface {p2}, Lorg/simpleframework/xml/Text;->empty()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/TextLabel;->empty:Ljava/lang/String;

    iput-object p1, p0, Lorg/simpleframework/xml/core/TextLabel;->contact:Lorg/simpleframework/xml/core/Contact;

    iput-object p2, p0, Lorg/simpleframework/xml/core/TextLabel;->label:Lorg/simpleframework/xml/Text;

    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/TextLabel;->label:Lorg/simpleframework/xml/Text;

    return-object v0
.end method

.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/TextLabel;->contact:Lorg/simpleframework/xml/core/Contact;

    return-object v0
.end method

.method public getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .registers 7

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/TextLabel;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TextLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/simpleframework/xml/core/Context;->isPrimitive(Lorg/simpleframework/xml/strategy/Type;)Z

    move-result v2

    if-nez v2, :cond_21

    new-instance v0, Lorg/simpleframework/xml/core/TextException;

    const-string v2, "Cannot use %s to represent %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/TextLabel;->label:Lorg/simpleframework/xml/Text;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/TextException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_21
    new-instance v2, Lorg/simpleframework/xml/core/Primitive;

    invoke-direct {v2, p1, v1, v0}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    return-object v2
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/TextLabel;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/TextLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    iget-object v1, p0, Lorg/simpleframework/xml/core/TextLabel;->empty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/core/Introspector;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lorg/simpleframework/xml/core/TextLabel;->empty:Ljava/lang/String;

    goto :goto_b
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/TextLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TextLabel;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverride()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/TextLabel;->contact:Lorg/simpleframework/xml/core/Contact;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Contact;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TextLabel;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Expression;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TextLabel;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/TextLabel;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public isData()Z
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/TextLabel;->label:Lorg/simpleframework/xml/Text;

    invoke-interface {v0}, Lorg/simpleframework/xml/Text;->data()Z

    move-result v0

    return v0
.end method

.method public isInline()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isRequired()Z
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/TextLabel;->label:Lorg/simpleframework/xml/Text;

    invoke-interface {v0}, Lorg/simpleframework/xml/Text;->required()Z

    move-result v0

    return v0
.end method

.method public isText()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/TextLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
