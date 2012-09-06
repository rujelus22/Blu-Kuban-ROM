.class Lorg/simpleframework/xml/core/AnnotationFactory;
.super Ljava/lang/Object;
.source "AnnotationFactory.java"


# instance fields
.field private final required:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/AnnotationFactory;-><init>(Z)V

    .line 57
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean p1, p0, Lorg/simpleframework/xml/core/AnnotationFactory;->required:Z

    .line 68
    return-void
.end method

.method private getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 122
    const-class v0, Lorg/simpleframework/xml/core/AnnotationFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 107
    new-instance v0, Lorg/simpleframework/xml/core/AnnotationHandler;

    iget-boolean v1, p0, Lorg/simpleframework/xml/core/AnnotationFactory;->required:Z

    invoke-direct {v0, p2, v1}, Lorg/simpleframework/xml/core/AnnotationHandler;-><init>(Ljava/lang/Class;Z)V

    .line 108
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 110
    invoke-static {p1, v1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    return-object v0
.end method


# virtual methods
.method public getInstance(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 4
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/simpleframework/xml/core/AnnotationFactory;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 84
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 85
    const-class v1, Lorg/simpleframework/xml/ElementMap;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 93
    :goto_12
    return-object v0

    .line 87
    :cond_13
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 88
    const-class v1, Lorg/simpleframework/xml/ElementList;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_12

    .line 90
    :cond_22
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 91
    const-class v1, Lorg/simpleframework/xml/ElementArray;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_12

    .line 93
    :cond_2f
    const-class v1, Lorg/simpleframework/xml/Element;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_12
.end method
