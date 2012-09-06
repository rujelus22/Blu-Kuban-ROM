.class Lorg/simpleframework/xml/core/GetPart;
.super Ljava/lang/Object;
.source "GetPart.java"

# interfaces
.implements Lorg/simpleframework/xml/core/MethodPart;


# instance fields
.field private final label:Ljava/lang/annotation/Annotation;

.field private final method:Ljava/lang/reflect/Method;

.field private final name:Ljava/lang/String;

.field private final type:Lorg/simpleframework/xml/core/MethodType;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/MethodName;Ljava/lang/annotation/Annotation;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/MethodName;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    .line 67
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/MethodName;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->name:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/MethodName;->getType()Lorg/simpleframework/xml/core/MethodType;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->type:Lorg/simpleframework/xml/core/MethodType;

    .line 69
    iput-object p2, p0, Lorg/simpleframework/xml/core/GetPart;->label:Ljava/lang/annotation/Annotation;

    .line 70
    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->label:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDependent()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getReturnDependent(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDependents()[Ljava/lang/Class;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getReturnDependents(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .registers 3

    .prologue
    .line 164
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_e

    .line 165
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 167
    :cond_e
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getMethodType()Lorg/simpleframework/xml/core/MethodType;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->type:Lorg/simpleframework/xml/core/MethodType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
