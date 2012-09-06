.class abstract Lorg/simpleframework/xml/core/ParameterContact;
.super Ljava/lang/Object;
.source "ParameterContact.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Contact;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/core/Contact;"
    }
.end annotation


# instance fields
.field protected final factory:Ljava/lang/reflect/Constructor;

.field protected final index:I

.field protected final label:Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final labels:[Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Constructor;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/reflect/Constructor;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    aget-object v0, v0, p3

    iput-object v0, p0, Lorg/simpleframework/xml/core/ParameterContact;->labels:[Ljava/lang/annotation/Annotation;

    .line 68
    iput-object p2, p0, Lorg/simpleframework/xml/core/ParameterContact;->factory:Ljava/lang/reflect/Constructor;

    .line 69
    iput p3, p0, Lorg/simpleframework/xml/core/ParameterContact;->index:I

    .line 70
    iput-object p1, p0, Lorg/simpleframework/xml/core/ParameterContact;->label:Ljava/lang/annotation/Annotation;

    .line 71
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/simpleframework/xml/core/ParameterContact;->label:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v2, p0, Lorg/simpleframework/xml/core/ParameterContact;->labels:[Ljava/lang/annotation/Annotation;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_18

    aget-object v0, v2, v1

    .line 157
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    .line 159
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 163
    :goto_13
    return-object v0

    .line 156
    :cond_14
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 163
    :cond_18
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public getDependent()Ljava/lang/Class;
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lorg/simpleframework/xml/core/ParameterContact;->factory:Ljava/lang/reflect/Constructor;

    iget v1, p0, Lorg/simpleframework/xml/core/ParameterContact;->index:I

    invoke-static {v0, v1}, Lorg/simpleframework/xml/core/Reflector;->getParameterDependent(Ljava/lang/reflect/Constructor;I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDependents()[Ljava/lang/Class;
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Lorg/simpleframework/xml/core/ParameterContact;->factory:Ljava/lang/reflect/Constructor;

    iget v1, p0, Lorg/simpleframework/xml/core/ParameterContact;->index:I

    invoke-static {v0, v1}, Lorg/simpleframework/xml/core/Reflector;->getParameterDependents(Ljava/lang/reflect/Constructor;I)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getType()Ljava/lang/Class;
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lorg/simpleframework/xml/core/ParameterContact;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lorg/simpleframework/xml/core/ParameterContact;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 186
    const-string v0, "parameter %s of constructor %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lorg/simpleframework/xml/core/ParameterContact;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/simpleframework/xml/core/ParameterContact;->factory:Ljava/lang/reflect/Constructor;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
