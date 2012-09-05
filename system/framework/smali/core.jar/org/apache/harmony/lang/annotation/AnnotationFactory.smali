.class public final Lorg/apache/harmony/lang/annotation/AnnotationFactory;
.super Ljava/lang/Object;
.source "AnnotationFactory.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;
.implements Ljava/io/Serializable;


# static fields
.field private static final transient cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Lorg/apache/harmony/lang/annotation/AnnotationMember;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

.field private final klazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->cache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;[Lorg/apache/harmony/lang/annotation/AnnotationMember;)V
    .registers 11
    .parameter
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Lorg/apache/harmony/lang/annotation/AnnotationMember;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, klzz:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->klazz:Ljava/lang/Class;

    .line 115
    iget-object v6, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->klazz:Ljava/lang/Class;

    invoke-static {v6}, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->getElementsDescription(Ljava/lang/Class;)[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    move-result-object v1

    .line 116
    .local v1, defs:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    if-nez p2, :cond_10

    .line 117
    iput-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    .line 131
    :cond_f
    return-void

    .line 120
    :cond_10
    array-length v6, v1

    new-array v6, v6, [Lorg/apache/harmony/lang/annotation/AnnotationMember;

    iput-object v6, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    .line 121
    iget-object v6, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    array-length v6, v6

    add-int/lit8 v2, v6, -0x1

    .local v2, i:I
    :goto_1a
    if-ltz v2, :cond_f

    .line 122
    move-object v0, p2

    .local v0, arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1f
    if-ge v3, v4, :cond_3f

    aget-object v5, v0, v3

    .line 123
    .local v5, val:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    iget-object v6, v5, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    aget-object v7, v1, v2

    iget-object v7, v7, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 124
    iget-object v6, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    aget-object v7, v1, v2

    invoke-virtual {v5, v7}, Lorg/apache/harmony/lang/annotation/AnnotationMember;->setDefinition(Lorg/apache/harmony/lang/annotation/AnnotationMember;)Lorg/apache/harmony/lang/annotation/AnnotationMember;

    move-result-object v7

    aput-object v7, v6, v2

    .line 121
    .end local v5           #val:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :goto_39
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 122
    .restart local v5       #val:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 128
    .end local v5           #val:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :cond_3f
    iget-object v6, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    aget-object v7, v1, v2

    aput-object v7, v6, v2

    goto :goto_39
.end method

.method public static createAnnotation(Ljava/lang/Class;[Lorg/apache/harmony/lang/annotation/AnnotationMember;)Ljava/lang/annotation/Annotation;
    .registers 6
    .parameter
    .parameter "elements"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Lorg/apache/harmony/lang/annotation/AnnotationMember;",
            ")",
            "Ljava/lang/annotation/Annotation;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/lang/annotation/AnnotationFactory;-><init>(Ljava/lang/Class;[Lorg/apache/harmony/lang/annotation/AnnotationMember;)V

    .line 98
    .local v0, antn:Lorg/apache/harmony/lang/annotation/AnnotationFactory;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/annotation/Annotation;

    return-object v1
.end method

.method public static getElementsDescription(Ljava/lang/Class;)[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)[",
            "Lorg/apache/harmony/lang/annotation/AnnotationMember;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    sget-object v10, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->cache:Ljava/util/Map;

    invoke-interface {v10, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/harmony/lang/annotation/AnnotationMember;

    .line 63
    .local v1, desc:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    if-nez v1, :cond_62

    .line 64
    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v10

    if-nez v10, :cond_2d

    .line 65
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Type is not annotation: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 68
    :cond_2d
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 69
    .local v6, m:[Ljava/lang/reflect/Method;
    array-length v10, v6

    new-array v1, v10, [Lorg/apache/harmony/lang/annotation/AnnotationMember;

    .line 70
    const/4 v4, 0x0

    .line 71
    .local v4, idx:I
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/reflect/Method;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_38
    if-ge v3, v5, :cond_5d

    aget-object v2, v0, v3

    .line 72
    .local v2, element:Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, name:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    .line 75
    .local v9, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_44
    new-instance v10, Lorg/apache/harmony/lang/annotation/AnnotationMember;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v10, v7, v11, v9, v2}, Lorg/apache/harmony/lang/annotation/AnnotationMember;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    aput-object v10, v1, v4
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_4f} :catch_54

    .line 80
    :goto_4f
    add-int/lit8 v4, v4, 0x1

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 77
    :catch_54
    move-exception v8

    .line 78
    .local v8, t:Ljava/lang/Throwable;
    new-instance v10, Lorg/apache/harmony/lang/annotation/AnnotationMember;

    invoke-direct {v10, v7, v8, v9, v2}, Lorg/apache/harmony/lang/annotation/AnnotationMember;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    aput-object v10, v1, v4

    goto :goto_4f

    .line 82
    .end local v2           #element:Ljava/lang/reflect/Method;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #t:Ljava/lang/Throwable;
    .end local v9           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_5d
    sget-object v10, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->cache:Ljava/util/Map;

    invoke-interface {v10, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .end local v0           #arr$:[Ljava/lang/reflect/Method;
    .end local v3           #i$:I
    .end local v4           #idx:I
    .end local v5           #len$:I
    .end local v6           #m:[Ljava/lang/reflect/Method;
    :cond_62
    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 17
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 146
    iget-object v13, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->klazz:Ljava/lang/Class;

    invoke-static {v13}, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->getElementsDescription(Ljava/lang/Class;)[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    move-result-object v3

    .line 147
    .local v3, defs:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    iget-object v11, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    .line 148
    .local v11, old:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    new-instance v10, Ljava/util/ArrayList;

    array-length v13, v3

    array-length v14, v11

    add-int/2addr v13, v14

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    .local v10, merged:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/lang/annotation/AnnotationMember;>;"
    move-object v0, v11

    .local v0, arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    array-length v8, v0

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    move v7, v6

    .end local v0           #arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .end local v6           #i$:I
    .end local v8           #len$:I
    .local v7, i$:I
    :goto_17
    if-ge v7, v8, :cond_37

    aget-object v4, v0, v7

    .line 151
    .local v4, el1:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    move-object v1, v3

    .local v1, arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    array-length v9, v1

    .local v9, len$:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i$:I
    :goto_1e
    if-ge v6, v9, :cond_33

    aget-object v5, v1, v6

    .line 152
    .local v5, el2:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    iget-object v13, v5, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    iget-object v14, v4, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_30

    .line 150
    .end local v5           #el2:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :goto_2c
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6           #i$:I
    .restart local v7       #i$:I
    goto :goto_17

    .line 151
    .end local v7           #i$:I
    .restart local v5       #el2:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .restart local v6       #i$:I
    :cond_30
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 156
    .end local v5           #el2:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :cond_33
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 158
    .end local v1           #arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .end local v4           #el1:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .end local v6           #i$:I
    .end local v9           #len$:I
    .restart local v7       #i$:I
    :cond_37
    move-object v0, v3

    .restart local v0       #arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    array-length v8, v0

    .restart local v8       #len$:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i$:I
    move v7, v6

    .end local v0           #arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .end local v6           #i$:I
    .end local v8           #len$:I
    .restart local v7       #i$:I
    :goto_3b
    if-ge v7, v8, :cond_62

    aget-object v2, v0, v7

    .line 159
    .local v2, def:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    move-object v1, v11

    .restart local v1       #arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    array-length v9, v1

    .restart local v9       #len$:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i$:I
    :goto_42
    if-ge v6, v9, :cond_5e

    aget-object v12, v1, v6

    .line 160
    .local v12, val:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    iget-object v13, v12, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    iget-object v14, v2, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5b

    .line 163
    invoke-virtual {v12, v2}, Lorg/apache/harmony/lang/annotation/AnnotationMember;->setDefinition(Lorg/apache/harmony/lang/annotation/AnnotationMember;)Lorg/apache/harmony/lang/annotation/AnnotationMember;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    .end local v12           #val:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :goto_57
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6           #i$:I
    .restart local v7       #i$:I
    goto :goto_3b

    .line 159
    .end local v7           #i$:I
    .restart local v6       #i$:I
    .restart local v12       #val:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :cond_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 167
    .end local v12           #val:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :cond_5e
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 169
    .end local v1           #arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .end local v2           #def:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .end local v6           #i$:I
    .end local v9           #len$:I
    .restart local v7       #i$:I
    :cond_62
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Lorg/apache/harmony/lang/annotation/AnnotationMember;

    invoke-interface {v10, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lorg/apache/harmony/lang/annotation/AnnotationMember;

    iput-object v13, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    .line 170
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 19
    .parameter "obj"

    .prologue
    .line 183
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_8

    .line 184
    const/4 v15, 0x1

    .line 236
    :goto_7
    return v15

    .line 186
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->klazz:Ljava/lang/Class;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_16

    .line 187
    const/4 v15, 0x0

    goto :goto_7

    .line 189
    :cond_16
    const/4 v8, 0x0

    .line 190
    .local v8, handler:Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_64

    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v8

    .local v8, handler:Ljava/lang/reflect/InvocationHandler;
    instance-of v15, v8, Lorg/apache/harmony/lang/annotation/AnnotationFactory;

    if-eqz v15, :cond_64

    move-object v13, v8

    .line 192
    check-cast v13, Lorg/apache/harmony/lang/annotation/AnnotationFactory;

    .line 193
    .local v13, other:Lorg/apache/harmony/lang/annotation/AnnotationFactory;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    array-length v15, v15

    iget-object v0, v13, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_40

    .line 194
    const/4 v15, 0x0

    goto :goto_7

    .line 196
    :cond_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    .local v2, arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    array-length v11, v2

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    move v10, v9

    .end local v2           #arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .end local v9           #i$:I
    .end local v11           #len$:I
    .local v10, i$:I
    :goto_47
    if-ge v10, v11, :cond_62

    aget-object v6, v2, v10

    .line 197
    .local v6, el1:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    iget-object v3, v13, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    .local v3, arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    array-length v12, v3

    .local v12, len$:I
    const/4 v9, 0x0

    .end local v10           #i$:I
    .restart local v9       #i$:I
    :goto_4f
    if-ge v9, v12, :cond_60

    aget-object v7, v3, v9

    .line 198
    .local v7, el2:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    invoke-virtual {v6, v7}, Lorg/apache/harmony/lang/annotation/AnnotationMember;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5d

    .line 196
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    .end local v9           #i$:I
    .restart local v10       #i$:I
    goto :goto_47

    .line 197
    .end local v10           #i$:I
    .restart local v9       #i$:I
    :cond_5d
    add-int/lit8 v9, v9, 0x1

    goto :goto_4f

    .line 202
    .end local v7           #el2:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :cond_60
    const/4 v15, 0x0

    goto :goto_7

    .line 204
    .end local v3           #arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .end local v6           #el1:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .end local v9           #i$:I
    .end local v12           #len$:I
    .restart local v10       #i$:I
    :cond_62
    const/4 v15, 0x1

    goto :goto_7

    .line 209
    .end local v8           #handler:Ljava/lang/reflect/InvocationHandler;
    .end local v10           #i$:I
    .end local v13           #other:Lorg/apache/harmony/lang/annotation/AnnotationFactory;
    :cond_64
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    .restart local v2       #arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    array-length v11, v2

    .restart local v11       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    :goto_6a
    if-ge v9, v11, :cond_c9

    aget-object v5, v2, v9

    .line 210
    .local v5, el:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    iget-char v15, v5, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    const/16 v16, 0x21

    move/from16 v0, v16

    if-ne v15, v0, :cond_78

    .line 212
    const/4 v15, 0x0

    goto :goto_7

    .line 215
    :cond_78
    :try_start_78
    iget-object v15, v5, Lorg/apache/harmony/lang/annotation/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v15

    if-nez v15, :cond_87

    .line 216
    iget-object v15, v5, Lorg/apache/harmony/lang/annotation/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 218
    :cond_87
    iget-object v15, v5, Lorg/apache/harmony/lang/annotation/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 219
    .local v14, otherValue:Ljava/lang/Object;
    if-eqz v14, :cond_b7

    .line 220
    iget-char v15, v5, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    const/16 v16, 0x5b

    move/from16 v0, v16

    if-ne v15, v0, :cond_ac

    .line 221
    invoke-virtual {v5, v14}, Lorg/apache/harmony/lang/annotation/AnnotationMember;->equalArrayValue(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c6

    .line 222
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 225
    :cond_ac
    iget-object v15, v5, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v15, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c6

    .line 226
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 229
    :cond_b7
    iget-object v15, v5, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    sget-object v16, Lorg/apache/harmony/lang/annotation/AnnotationMember;->NO_VALUE:Ljava/lang/Object;
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_bb} :catch_c2

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_c6

    .line 230
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 232
    .end local v14           #otherValue:Ljava/lang/Object;
    :catch_c2
    move-exception v4

    .line 233
    .local v4, e:Ljava/lang/Throwable;
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 209
    .end local v4           #e:Ljava/lang/Throwable;
    .restart local v14       #otherValue:Ljava/lang/Object;
    :cond_c6
    add-int/lit8 v9, v9, 0x1

    goto :goto_6a

    .line 236
    .end local v5           #el:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .end local v14           #otherValue:Ljava/lang/Object;
    :cond_c9
    const/4 v15, 0x1

    goto/16 :goto_7
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 246
    const/4 v2, 0x0

    .line 247
    .local v2, hash:I
    iget-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    .local v0, arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_5
    if-ge v3, v4, :cond_11

    aget-object v1, v0, v3

    .line 248
    .local v1, element:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    invoke-virtual {v1}, Lorg/apache/harmony/lang/annotation/AnnotationMember;->hashCode()I

    move-result v5

    add-int/2addr v2, v5

    .line 247
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 250
    .end local v1           #element:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :cond_11
    return v2
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15
    .parameter "proxy"
    .parameter "method"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 283
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 284
    .local v5, name:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 285
    .local v6, params:[Ljava/lang/Class;
    array-length v8, v6

    if-nez v8, :cond_6c

    .line 286
    const-string v8, "annotationType"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 287
    iget-object v7, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->klazz:Ljava/lang/Class;

    .line 312
    :cond_16
    :goto_16
    return-object v7

    .line 288
    :cond_17
    const-string v8, "toString"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 289
    invoke-virtual {p0}, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_16

    .line 290
    :cond_24
    const-string v8, "hashCode"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 291
    invoke-virtual {p0}, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_16

    .line 295
    :cond_35
    const/4 v2, 0x0

    .line 296
    .local v2, element:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    iget-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    .local v0, arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_3a
    if-ge v3, v4, :cond_47

    aget-object v1, v0, v3

    .line 297
    .local v1, el:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    iget-object v8, v1, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 298
    move-object v2, v1

    .line 302
    .end local v1           #el:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :cond_47
    if-eqz v2, :cond_51

    iget-object v8, v2, Lorg/apache/harmony/lang/annotation/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p2, v8}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5e

    .line 303
    :cond_51
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 296
    .restart local v1       #el:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 305
    .end local v1           #el:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    :cond_5e
    invoke-virtual {v2}, Lorg/apache/harmony/lang/annotation/AnnotationMember;->validateValue()Ljava/lang/Object;

    move-result-object v7

    .line 306
    .local v7, value:Ljava/lang/Object;
    if-nez v7, :cond_16

    .line 307
    new-instance v8, Ljava/lang/annotation/IncompleteAnnotationException;

    iget-object v9, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->klazz:Ljava/lang/Class;

    invoke-direct {v8, v9, v5}, Ljava/lang/annotation/IncompleteAnnotationException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v8

    .line 311
    .end local v0           #arr$:[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .end local v2           #element:Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v7           #value:Ljava/lang/Object;
    :cond_6c
    array-length v8, v6

    const/4 v9, 0x1

    if-ne v8, v9, :cond_89

    aget-object v8, v6, v10

    const-class v9, Ljava/lang/Object;

    if-ne v8, v9, :cond_89

    const-string v8, "equals"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_89

    .line 312
    aget-object v8, p3, v10

    invoke-virtual {p0, v8}, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_16

    .line 314
    :cond_89
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid method for annotation type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .local v1, result:Ljava/lang/StringBuilder;
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->klazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    array-length v2, v2

    if-ge v0, v2, :cond_2f

    .line 264
    if-eqz v0, :cond_25

    .line 265
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_25
    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 269
    :cond_2f
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
