.class Lorg/simpleframework/xml/core/AnnotationHandler;
.super Ljava/lang/Object;
.source "AnnotationHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final CLASS:Ljava/lang/String; = "annotationType"

.field private static final EQUAL:Ljava/lang/String; = "equals"

.field private static final REQUIRED:Ljava/lang/String; = "required"

.field private static final STRING:Ljava/lang/String; = "toString"


# instance fields
.field private final comparer:Lorg/simpleframework/xml/core/Comparer;

.field private final required:Z

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/AnnotationHandler;-><init>(Ljava/lang/Class;Z)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lorg/simpleframework/xml/core/Comparer;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Comparer;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->comparer:Lorg/simpleframework/xml/core/Comparer;

    .line 93
    iput-boolean p2, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->required:Z

    .line 94
    iput-object p1, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->type:Ljava/lang/Class;

    .line 95
    return-void
.end method

.method private attributes(Ljava/lang/StringBuilder;)V
    .registers 7
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 198
    const/4 v0, 0x0

    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_30

    .line 199
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 200
    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lorg/simpleframework/xml/core/AnnotationHandler;->value(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v3

    .line 202
    if-lez v0, :cond_22

    .line 203
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    :cond_22
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 210
    :cond_30
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    return-void
.end method

.method private equals(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 139
    check-cast p1, Ljava/lang/annotation/Annotation;

    .line 140
    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/annotation/Annotation;

    .line 142
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_21

    .line 143
    new-instance v1, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v2, "Annotation %s is not the same as %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 145
    :cond_21
    iget-object v1, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->comparer:Lorg/simpleframework/xml/core/Comparer;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/core/Comparer;->equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z

    move-result v0

    return v0
.end method

.method private name(Ljava/lang/StringBuilder;)V
    .registers 4
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_15

    .line 180
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    :cond_15
    return-void
.end method

.method private value(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 224
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 226
    const-string v1, "required"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 227
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->required:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 229
    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_12
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string v1, "toString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 114
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/AnnotationHandler;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_10
    return-object v0

    .line 116
    :cond_11
    const-string v1, "equals"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 117
    invoke-direct {p0, p1, p3}, Lorg/simpleframework/xml/core/AnnotationHandler;->equals(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_10

    .line 119
    :cond_22
    const-string v1, "annotationType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 120
    iget-object v0, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->type:Ljava/lang/Class;

    goto :goto_10

    .line 122
    :cond_2d
    const-string v1, "required"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 123
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->required:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_10

    .line 125
    :cond_3c
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    iget-object v1, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->type:Ljava/lang/Class;

    if-eqz v1, :cond_f

    .line 161
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/AnnotationHandler;->name(Ljava/lang/StringBuilder;)V

    .line 162
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/AnnotationHandler;->attributes(Ljava/lang/StringBuilder;)V

    .line 164
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
