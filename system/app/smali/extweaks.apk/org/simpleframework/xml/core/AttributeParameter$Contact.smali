.class Lorg/simpleframework/xml/core/AttributeParameter$Contact;
.super Lorg/simpleframework/xml/core/ParameterContact;
.source "AttributeParameter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/simpleframework/xml/core/ParameterContact",
        "<",
        "Lorg/simpleframework/xml/Attribute;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/Attribute;Ljava/lang/reflect/Constructor;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 266
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/ParameterContact;-><init>(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Constructor;I)V

    .line 267
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lorg/simpleframework/xml/core/AttributeParameter$Contact;->label:Ljava/lang/annotation/Annotation;

    check-cast v0, Lorg/simpleframework/xml/Attribute;

    invoke-interface {v0}, Lorg/simpleframework/xml/Attribute;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
