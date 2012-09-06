.class final Lorg/simpleframework/xml/core/Reflector;
.super Ljava/lang/Object;
.source "Reflector.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getArrayClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 3
    .parameter

    .prologue
    .line 379
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 380
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 381
    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_16

    .line 384
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 386
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static getClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;
    .registers 3
    .parameter

    .prologue
    .line 306
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 308
    array-length v1, v0

    if-lez v1, :cond_f

    .line 309
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 311
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 2
    .parameter

    .prologue
    .line 345
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_7

    .line 346
    check-cast p0, Ljava/lang/Class;

    .line 348
    :goto_6
    return-object p0

    :cond_7
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getGenericClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_6
.end method

.method private static getClasses(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;
    .registers 5
    .parameter

    .prologue
    .line 325
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 326
    array-length v0, v1

    new-array v2, v0, [Ljava/lang/Class;

    .line 328
    const/4 v0, 0x0

    :goto_8
    array-length v3, v1

    if-ge v0, v3, :cond_16

    .line 329
    aget-object v3, v1, v0

    invoke-static {v3}, Lorg/simpleframework/xml/core/Reflector;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v0

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 331
    :cond_16
    return-object v2
.end method

.method public static getDependent(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .registers 2
    .parameter

    .prologue
    .line 54
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getType(Ljava/lang/reflect/Field;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_b

    .line 57
    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    .line 59
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getDependents(Ljava/lang/reflect/Field;)[Ljava/lang/Class;
    .registers 2
    .parameter

    .prologue
    .line 74
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getType(Ljava/lang/reflect/Field;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_b

    .line 77
    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getClasses(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    move-result-object v0

    .line 79
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    goto :goto_a
.end method

.method private static getGenericClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 2
    .parameter

    .prologue
    .line 362
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_9

    .line 363
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getArrayClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 365
    :goto_8
    return-object v0

    :cond_9
    const-class v0, Ljava/lang/Object;

    goto :goto_8
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 401
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 403
    if-lez v0, :cond_1e

    .line 404
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 405
    aget-char v1, v0, v3

    .line 407
    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->isAcronym([C)Z

    move-result v2

    if-nez v2, :cond_19

    .line 408
    invoke-static {v1}, Lorg/simpleframework/xml/core/Reflector;->toLowerCase(C)C

    move-result v1

    aput-char v1, v0, v3

    .line 410
    :cond_19
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    .line 412
    :cond_1e
    return-object p0
.end method

.method public static getParameterDependent(Ljava/lang/reflect/Constructor;I)Ljava/lang/Class;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-static {p0, p1}, Lorg/simpleframework/xml/core/Reflector;->getParameterType(Ljava/lang/reflect/Constructor;I)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_b

    .line 220
    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    .line 222
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getParameterDependent(Ljava/lang/reflect/Method;I)Ljava/lang/Class;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-static {p0, p1}, Lorg/simpleframework/xml/core/Reflector;->getParameterType(Ljava/lang/reflect/Method;I)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_b

    .line 176
    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    .line 178
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getParameterDependents(Ljava/lang/reflect/Constructor;I)[Ljava/lang/Class;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 239
    invoke-static {p0, p1}, Lorg/simpleframework/xml/core/Reflector;->getParameterType(Ljava/lang/reflect/Constructor;I)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_b

    .line 242
    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getClasses(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    move-result-object v0

    .line 244
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    goto :goto_a
.end method

.method public static getParameterDependents(Ljava/lang/reflect/Method;I)[Ljava/lang/Class;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-static {p0, p1}, Lorg/simpleframework/xml/core/Reflector;->getParameterType(Ljava/lang/reflect/Method;I)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_b

    .line 198
    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getClasses(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    move-result-object v0

    .line 200
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    goto :goto_a
.end method

.method private static getParameterType(Ljava/lang/reflect/Constructor;I)Ljava/lang/reflect/ParameterizedType;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 283
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 285
    array-length v1, v0

    if-le v1, p1, :cond_10

    .line 286
    aget-object v0, v0, p1

    .line 288
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_10

    .line 289
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 292
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static getParameterType(Ljava/lang/reflect/Method;I)Ljava/lang/reflect/ParameterizedType;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 259
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 261
    array-length v1, v0

    if-le v1, p1, :cond_10

    .line 262
    aget-object v0, v0, p1

    .line 264
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_10

    .line 265
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 268
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static getReturnDependent(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .registers 2
    .parameter

    .prologue
    .line 112
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getReturnType(Ljava/lang/reflect/Method;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_b

    .line 115
    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    .line 117
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getReturnDependents(Ljava/lang/reflect/Method;)[Ljava/lang/Class;
    .registers 2
    .parameter

    .prologue
    .line 132
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getReturnType(Ljava/lang/reflect/Method;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_b

    .line 135
    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getClasses(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    move-result-object v0

    .line 137
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    goto :goto_a
.end method

.method private static getReturnType(Ljava/lang/reflect/Method;)Ljava/lang/reflect/ParameterizedType;
    .registers 3
    .parameter

    .prologue
    .line 151
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 153
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_b

    .line 154
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 156
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static getType(Ljava/lang/reflect/Field;)Ljava/lang/reflect/ParameterizedType;
    .registers 3
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 94
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_b

    .line 95
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 97
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static isAcronym([C)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 425
    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_6

    .line 431
    :cond_5
    :goto_5
    return v0

    .line 428
    :cond_6
    aget-char v1, p0, v0

    invoke-static {v1}, Lorg/simpleframework/xml/core/Reflector;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 431
    const/4 v0, 0x1

    aget-char v0, p0, v0

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->isUpperCase(C)Z

    move-result v0

    goto :goto_5
.end method

.method private static isUpperCase(C)Z
    .registers 2
    .parameter

    .prologue
    .line 455
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    return v0
.end method

.method private static toLowerCase(C)C
    .registers 2
    .parameter

    .prologue
    .line 443
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    return v0
.end method
