.class abstract Lorg/simpleframework/xml/core/TemplateParameter;
.super Ljava/lang/Object;
.source "TemplateParameter.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Parameter;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 71
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TemplateParameter;->getName()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TemplateParameter;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 56
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/TemplateParameter;->getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAttribute()Z
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public isText()Z
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method
