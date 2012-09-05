.class public Ljava/lang/reflect/AccessibleObject;
.super Ljava/lang/Object;
.source "AccessibleObject.java"

# interfaces
.implements Ljava/lang/reflect/AnnotatedElement;


# static fields
.field static trans:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field flag:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 64
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    .line 65
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "byte"

    const-string v2, "B"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "char"

    const-string v2, "C"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "short"

    const-string v2, "S"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "int"

    const-string v2, "I"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "long"

    const-string v2, "J"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "float"

    const-string v2, "F"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "double"

    const-string v2, "D"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "void"

    const-string v2, "V"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "boolean"

    const-string v2, "Z"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    .line 103
    return-void
.end method

.method private static native getClassSignatureAnnotation(Ljava/lang/Class;)[Ljava/lang/Object;
.end method

.method static getClassSignatureAttribute(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .parameter "clazz"

    .prologue
    .line 214
    invoke-static {p0}, Ljava/lang/reflect/AccessibleObject;->getClassSignatureAnnotation(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 216
    .local v0, annotation:[Ljava/lang/Object;
    if-nez v0, :cond_8

    .line 217
    const/4 v1, 0x0

    .line 220
    :goto_7
    return-object v1

    :cond_8
    invoke-static {v0}, Lorg/apache/harmony/kernel/vm/StringUtils;->combineStrings([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public static setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V
    .registers 8
    .parameter "objects"
    .parameter "flag"

    .prologue
    .line 90
    const-class v5, Ljava/lang/reflect/AccessibleObject;

    monitor-enter v5

    .line 91
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/reflect/AccessibleObject;
    :try_start_4
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v2, :cond_f

    aget-object v3, v0, v1

    .line 92
    .local v3, object:Ljava/lang/reflect/AccessibleObject;
    iput-boolean p1, v3, Ljava/lang/reflect/AccessibleObject;->flag:Z

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 94
    .end local v3           #object:Ljava/lang/reflect/AccessibleObject;
    :cond_f
    monitor-exit v5

    .line 95
    return-void

    .line 94
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_11
    move-exception v4

    monitor-exit v5
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v4
.end method


# virtual methods
.method appendArrayGenericType(Ljava/lang/StringBuilder;[Ljava/lang/reflect/Type;)V
    .registers 5
    .parameter "sb"
    .parameter "types"

    .prologue
    .line 260
    array-length v1, p2

    if-lez v1, :cond_1a

    .line 261
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/AccessibleObject;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    .line 262
    const/4 v0, 0x1

    .local v0, i:I
    :goto_a
    array-length v1, p2

    if-ge v0, v1, :cond_1a

    .line 263
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/AccessibleObject;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 267
    .end local v0           #i:I
    :cond_1a
    return-void
.end method

.method appendArrayType(Ljava/lang/StringBuilder;Ljava/lang/Class;)V
    .registers 6
    .parameter "sb"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p2, obj:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 241
    .local v1, dimensions:I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 242
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 245
    :cond_e
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const/4 v0, 0x0

    .local v0, d:I
    :goto_16
    if-ge v0, v1, :cond_20

    .line 247
    const-string v2, "[]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 249
    :cond_20
    return-void
.end method

.method appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V
    .registers 12
    .parameter "sb"
    .parameter "obj"

    .prologue
    const/4 v8, 0x1

    .line 278
    instance-of v6, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v6, :cond_f

    .line 279
    check-cast p2, Ljava/lang/reflect/TypeVariable;

    .end local p2
    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_e
    :goto_e
    return-void

    .line 280
    .restart local p2
    :cond_f
    instance-of v6, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_1b

    .line 281
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 282
    :cond_1b
    instance-of v6, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v6, :cond_2e

    .line 283
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    .end local p2
    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 284
    .local v5, simplified:Ljava/lang/reflect/Type;
    invoke-virtual {p0, p1, v5}, Ljava/lang/reflect/AccessibleObject;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    .line 285
    const-string v6, "[]"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 286
    .end local v5           #simplified:Ljava/lang/reflect/Type;
    .restart local p2
    :cond_2e
    instance-of v6, p2, Ljava/lang/Class;

    if-eqz v6, :cond_e

    move-object v1, p2

    .line 287
    check-cast v1, Ljava/lang/Class;

    .line 288
    .local v1, c:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_cd

    .line 289
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\["

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, as:[Ljava/lang/String;
    array-length v6, v0

    add-int/lit8 v4, v6, -0x1

    .line 291
    .local v4, len:I
    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_6c

    .line 292
    aget-object v6, v0, v4

    aget-object v7, v0, v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_61
    :goto_61
    const/4 v3, 0x0

    .local v3, i:I
    :goto_62
    if-ge v3, v4, :cond_e

    .line 315
    const-string v6, "[]"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    .line 294
    .end local v3           #i:I
    :cond_6c
    aget-object v6, v0, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 295
    .local v2, ch:C
    const/16 v6, 0x49

    if-ne v2, v6, :cond_7d

    .line 296
    const-string v6, "int"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 297
    :cond_7d
    const/16 v6, 0x42

    if-ne v2, v6, :cond_87

    .line 298
    const-string v6, "byte"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 299
    :cond_87
    const/16 v6, 0x4a

    if-ne v2, v6, :cond_91

    .line 300
    const-string v6, "long"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 301
    :cond_91
    const/16 v6, 0x46

    if-ne v2, v6, :cond_9b

    .line 302
    const-string v6, "float"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 303
    :cond_9b
    const/16 v6, 0x44

    if-ne v2, v6, :cond_a5

    .line 304
    const-string v6, "double"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 305
    :cond_a5
    const/16 v6, 0x53

    if-ne v2, v6, :cond_af

    .line 306
    const-string v6, "short"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 307
    :cond_af
    const/16 v6, 0x43

    if-ne v2, v6, :cond_b9

    .line 308
    const-string v6, "char"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 309
    :cond_b9
    const/16 v6, 0x5a

    if-ne v2, v6, :cond_c3

    .line 310
    const-string v6, "boolean"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 311
    :cond_c3
    const/16 v6, 0x56

    if-ne v2, v6, :cond_61

    .line 312
    const-string v6, "void"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 318
    .end local v0           #as:[Ljava/lang/String;
    .end local v2           #ch:C
    .end local v4           #len:I
    :cond_cd
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e
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
    .line 142
    .local p1, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 138
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getSignature(Ljava/lang/Class;)Ljava/lang/String;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v1, ""

    .line 157
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, nextType:Ljava/lang/String;
    sget-object v2, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 160
    sget-object v2, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 168
    .restart local v1       #result:Ljava/lang/String;
    :goto_16
    return-object v1

    .line 162
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/reflect/AccessibleObject;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    .line 165
    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_16
.end method

.method getSignatureAttribute()Ljava/lang/String;
    .registers 2

    .prologue
    .line 205
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isAccessible()Z
    .registers 2

    .prologue
    .line 113
    iget-boolean v0, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    return v0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAccessible(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 125
    iput-boolean p1, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    .line 126
    return-void
.end method

.method toString([Ljava/lang/Class;)Ljava/lang/String;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, types:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v1, result:Ljava/lang/StringBuilder;
    array-length v2, p1

    if-eqz v2, :cond_27

    .line 186
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const/4 v0, 0x1

    .local v0, i:I
    :goto_13
    array-length v2, p1

    if-ge v0, v2, :cond_27

    .line 188
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 193
    .end local v0           #i:I
    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
