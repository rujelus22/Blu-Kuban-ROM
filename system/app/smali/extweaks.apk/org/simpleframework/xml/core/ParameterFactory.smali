.class final Lorg/simpleframework/xml/core/ParameterFactory;
.super Ljava/lang/Object;
.source "ParameterFactory.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method private static getBuilder(Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/ParameterFactory$PameterBuilder;
    .registers 5
    .parameter

    .prologue
    .line 93
    instance-of v0, p0, Lorg/simpleframework/xml/Element;

    if-eqz v0, :cond_e

    .line 94
    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory$PameterBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementParameter;

    const-class v2, Lorg/simpleframework/xml/Element;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/ParameterFactory$PameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 109
    :goto_d
    return-object v0

    .line 96
    :cond_e
    instance-of v0, p0, Lorg/simpleframework/xml/ElementList;

    if-eqz v0, :cond_1c

    .line 97
    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory$PameterBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementListParameter;

    const-class v2, Lorg/simpleframework/xml/ElementList;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/ParameterFactory$PameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_d

    .line 99
    :cond_1c
    instance-of v0, p0, Lorg/simpleframework/xml/ElementArray;

    if-eqz v0, :cond_2a

    .line 100
    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory$PameterBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementArrayParameter;

    const-class v2, Lorg/simpleframework/xml/ElementArray;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/ParameterFactory$PameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_d

    .line 102
    :cond_2a
    instance-of v0, p0, Lorg/simpleframework/xml/ElementMap;

    if-eqz v0, :cond_38

    .line 103
    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory$PameterBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementMapParameter;

    const-class v2, Lorg/simpleframework/xml/ElementMap;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/ParameterFactory$PameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_d

    .line 105
    :cond_38
    instance-of v0, p0, Lorg/simpleframework/xml/Attribute;

    if-eqz v0, :cond_46

    .line 106
    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory$PameterBuilder;

    const-class v1, Lorg/simpleframework/xml/core/AttributeParameter;

    const-class v2, Lorg/simpleframework/xml/Attribute;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/ParameterFactory$PameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_d

    .line 108
    :cond_46
    instance-of v0, p0, Lorg/simpleframework/xml/Text;

    if-eqz v0, :cond_54

    .line 109
    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory$PameterBuilder;

    const-class v1, Lorg/simpleframework/xml/core/TextParameter;

    const-class v2, Lorg/simpleframework/xml/Text;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/ParameterFactory$PameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_d

    .line 111
    :cond_54
    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v1, "Annotation %s not supported"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private static getConstructor(Ljava/lang/annotation/Annotation;)Ljava/lang/reflect/Constructor;
    .registers 2
    .parameter

    .prologue
    .line 79
    invoke-static {p0}, Lorg/simpleframework/xml/core/ParameterFactory;->getBuilder(Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/ParameterFactory$PameterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ParameterFactory$PameterBuilder;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/reflect/Constructor;Ljava/lang/annotation/Annotation;I)Lorg/simpleframework/xml/core/Parameter;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 58
    invoke-static {p1}, Lorg/simpleframework/xml/core/ParameterFactory;->getConstructor(Ljava/lang/annotation/Annotation;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_e

    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 63
    :cond_e
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    return-object v0
.end method
