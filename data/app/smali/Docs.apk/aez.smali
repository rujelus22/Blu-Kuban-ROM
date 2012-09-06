.class public Laez;
.super Ljava/lang/Object;
.source "Types.java"


# direct methods
.method public static a(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 199
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 279
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_44

    .line 280
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, p1}, Laez;->a(Ljava/util/List;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 282
    :goto_c
    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_21

    .line 283
    invoke-static {v0}, Laez;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p0, v0}, Laez;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 284
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 294
    :goto_20
    return-object v0

    .line 286
    :cond_21
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_28

    .line 287
    check-cast v0, Ljava/lang/Class;

    goto :goto_20

    .line 289
    :cond_28
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_33

    .line 290
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0}, Laez;->a(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_20

    .line 292
    :cond_33
    if-nez v0, :cond_42

    move v1, v2

    :goto_36
    const-string v4, "wildcard type is not supported: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v4, v2}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 294
    const-class v0, Ljava/lang/Object;

    goto :goto_20

    :cond_42
    move v1, v3

    .line 292
    goto :goto_36

    :cond_44
    move-object v0, p1

    goto :goto_c
.end method

.method private static a(Ljava/lang/Exception;Ljava/lang/Class;)Ljava/lang/IllegalArgumentException;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/IllegalArgumentException;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to create new instance of class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 132
    const-string v3, "because it is an array"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :goto_20
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    if-eqz v1, :cond_ac

    .line 161
    const-string v4, " and"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :goto_38
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 133
    :cond_42
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 134
    const-string v3, "because it is primitive"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 135
    :cond_4e
    const-class v3, Ljava/lang/Void;

    if-ne p1, v3, :cond_58

    .line 136
    const-string v3, "because it is void"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 138
    :cond_58
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 139
    const-string v3, "because it is an interface"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_67
    :goto_67
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_7c

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_7c

    .line 144
    const-string v3, "because it is not static"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_7c
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-nez v3, :cond_9c

    .line 148
    const-string v3, "possibly because it is not public"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 140
    :cond_8c
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 141
    const-string v3, "because it is abstract"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 151
    :cond_9c
    const/4 v3, 0x0

    :try_start_9d
    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_a2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9d .. :try_end_a2} :catch_a4

    goto/16 :goto_20

    .line 152
    :catch_a4
    move-exception v3

    .line 153
    const-string v3, "because it has no accessible default constructor"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    .line 163
    :cond_ac
    const/4 v1, 0x1

    goto :goto_38

    .line 167
    :cond_ae
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 354
    instance-of v0, p0, Ljava/lang/Iterable;

    if-eqz v0, :cond_7

    .line 355
    check-cast p0, Ljava/lang/Iterable;

    .line 363
    :goto_6
    return-object p0

    .line 357
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const-string v2, "not an array or Iterable: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 359
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 361
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_6

    .line 363
    :cond_2d
    new-instance v0, LaeA;

    invoke-direct {v0, p0}, LaeA;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_6
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 118
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_3} :catch_b

    move-result-object v0

    return-object v0

    .line 119
    :catch_5
    move-exception v0

    .line 120
    invoke-static {v0, p0}, Laez;->a(Ljava/lang/Exception;Ljava/lang/Class;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 121
    :catch_b
    move-exception v0

    .line 122
    invoke-static {v0, p0}, Laez;->a(Ljava/lang/Exception;Ljava/lang/Class;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public static a(Ljava/util/Collection;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 399
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 400
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 401
    const/4 v0, 0x0

    .line 402
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 403
    add-int/lit8 v1, v0, 0x1

    invoke-static {v2, v0, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move v0, v1

    goto :goto_13

    :cond_24
    move-object v0, v2

    .line 407
    :goto_25
    return-object v0

    :cond_26
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_25
.end method

.method public static a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/ParameterizedType;
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    .prologue
    .line 59
    instance-of v0, p0, Ljava/lang/Class;

    if-nez v0, :cond_8

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_50

    :cond_8
    move-object v0, p0

    .line 60
    :goto_9
    if-eqz v0, :cond_50

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_50

    .line 62
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1b

    .line 64
    check-cast v0, Ljava/lang/Class;

    .line 88
    :goto_15
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    move-object v0, p0

    .line 89
    goto :goto_9

    .line 67
    :cond_1b
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 68
    invoke-static {v0}, Laez;->a(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v2

    .line 70
    if-ne v2, p1, :cond_24

    .line 91
    :goto_23
    return-object v0

    .line 74
    :cond_24
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 75
    invoke-virtual {v2}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_31
    if-ge v3, v5, :cond_52

    aget-object v1, v4, v3

    .line 77
    instance-of v0, v1, Ljava/lang/Class;

    if-eqz v0, :cond_44

    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 80
    :goto_3c
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4c

    move-object v0, v1

    .line 82
    goto :goto_9

    :cond_44
    move-object v0, v1

    .line 77
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0}, Laez;->a(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_3c

    .line 75
    :cond_4c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_31

    .line 91
    :cond_50
    const/4 v0, 0x0

    goto :goto_23

    :cond_52
    move-object v0, v2

    goto :goto_15
.end method

.method public static a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 2
    .parameter

    .prologue
    .line 187
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_a
.end method

.method private static a(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 328
    invoke-static {p0, p1}, Laez;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    .line 329
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v1, v0, p2

    .line 332
    instance-of v0, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_22

    .line 333
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-static {v2, v0}, Laez;->a(Ljava/util/List;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_22

    move-object v1, v0

    .line 338
    :cond_22
    return-object v1
.end method

.method public static a(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/Type;
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 210
    array-length v1, v0

    if-eqz v1, :cond_b

    .line 211
    aget-object v0, v0, v2

    .line 213
    :goto_a
    return-object v0

    :cond_b
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    goto :goto_a
.end method

.method public static a(Ljava/util/List;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 233
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    .line 234
    instance-of v0, v1, Ljava/lang/Class;

    if-eqz v0, :cond_4d

    move-object v0, v1

    .line 235
    check-cast v0, Ljava/lang/Class;

    .line 237
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    move v4, v2

    move-object v2, v3

    .line 239
    :goto_12
    if-nez v2, :cond_23

    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_23

    .line 240
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    invoke-static {v2, v0}, Laez;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v2

    goto :goto_12

    .line 243
    :cond_23
    if-eqz v2, :cond_4d

    .line 245
    invoke-interface {v1}, Ljava/lang/reflect/GenericDeclaration;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 246
    const/4 v0, 0x0

    .line 247
    :goto_2a
    array-length v3, v1

    if-ge v0, v3, :cond_35

    .line 248
    aget-object v3, v1, v0

    .line 249
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 254
    :cond_35
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v0

    .line 255
    instance-of v0, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_49

    move-object v0, v1

    .line 257
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, v0}, Laez;->a(Ljava/util/List;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_49

    move-object v1, v0

    .line 266
    :cond_49
    :goto_49
    return-object v1

    .line 247
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_4d
    move-object v1, v3

    .line 266
    goto :goto_49
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static a(Ljava/lang/reflect/Type;)Z
    .registers 2
    .parameter

    .prologue
    .line 172
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_10

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_12

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 3
    .parameter

    .prologue
    .line 309
    const-class v0, Ljava/lang/Iterable;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Laez;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 3
    .parameter

    .prologue
    .line 324
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Laez;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
