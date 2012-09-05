.class public final Ljava/lang/Class;
.super Ljava/lang/Object;
.source "Class.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/AnnotatedElement;
.implements Ljava/lang/reflect/GenericDeclaration;
.implements Ljava/lang/reflect/Type;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/reflect/AnnotatedElement;",
        "Ljava/lang/reflect/GenericDeclaration;",
        "Ljava/lang/reflect/Type;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2c7e5503d9bf9553L


# instance fields
.field private transient name:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 126
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method private static arraycopy([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, result:[Ljava/lang/Object;,"[TT;"
    .local p1, head:[Ljava/lang/Object;,"[TT;"
    .local p2, tail:[Ljava/lang/Object;,"[TT;"
    const/4 v2, 0x0

    .line 1415
    array-length v0, p1

    invoke-static {p1, v2, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1416
    array-length v0, p1

    array-length v1, p2

    invoke-static {p2, v2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1417
    return-object p0
.end method

.method static native classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method public static forName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x1

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 7
    .parameter "className"
    .parameter "initializeBoolean"
    .parameter "classLoader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 206
    if-nez p2, :cond_6

    .line 207
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 217
    :cond_6
    :try_start_6
    invoke-static {p0, p1, p2}, Ljava/lang/Class;->classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v2

    .line 226
    .local v2, result:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    return-object v2

    .line 219
    .end local v2           #result:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_b
    move-exception v1

    .line 220
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 221
    .local v0, cause:Ljava/lang/Throwable;
    instance-of v3, v0, Ljava/lang/ExceptionInInitializerError;

    if-eqz v3, :cond_17

    .line 222
    check-cast v0, Ljava/lang/ExceptionInInitializerError;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 224
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_17
    throw v1
.end method

.method private static native getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation
.end method

.method private getConstructorOrMethod(Ljava/lang/String;ZZ[Ljava/lang/Class;)Ljava/lang/reflect/Member;
    .registers 13
    .parameter "name"
    .parameter "recursive"
    .parameter "publicOnly"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Member;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 442
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p4, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    if-eqz p2, :cond_a

    if-nez p3, :cond_a

    .line 443
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 445
    :cond_a
    if-nez p1, :cond_14

    .line 446
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "name == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 448
    :cond_14
    if-nez p4, :cond_18

    .line 449
    sget-object p4, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 451
    :cond_18
    move-object v0, p4

    .local v0, arr$:[Ljava/lang/Class;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1b
    if-ge v2, v3, :cond_2c

    aget-object v1, v0, v2

    .line 452
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v1, :cond_29

    .line 453
    new-instance v5, Ljava/lang/NoSuchMethodException;

    const-string v6, "parameter type is null"

    invoke-direct {v5, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 451
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 456
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2c
    if-eqz p2, :cond_5f

    invoke-direct {p0, p1, p4}, Ljava/lang/Class;->getPublicConstructorOrMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v4

    .line 459
    .local v4, result:Ljava/lang/reflect/Member;
    :goto_32
    if-eqz v4, :cond_3e

    if-eqz p3, :cond_64

    invoke-interface {v4}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_64

    .line 460
    :cond_3e
    new-instance v5, Ljava/lang/NoSuchMethodException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 456
    .end local v4           #result:Ljava/lang/reflect/Member;
    :cond_5f
    invoke-static {p0, p1, p4}, Ljava/lang/Class;->getDeclaredConstructorOrMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v4

    goto :goto_32

    .line 462
    .restart local v4       #result:Ljava/lang/reflect/Member;
    :cond_64
    return-object v4
.end method

.method private native getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation
.end method

.method private static native getDeclaredClasses(Ljava/lang/Class;Z)[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method static native getDeclaredConstructorOrMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;
.end method

.method private static native getDeclaredConstructors(Ljava/lang/Class;Z)[Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;Z)[",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end method

.method static native getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation
.end method

.method static native getDeclaredFields(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation
.end method

.method static native getDeclaredMethods(Ljava/lang/Class;Z)[Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation
.end method

.method private getFullListOfClasses(Z)[Ljava/lang/Class;
    .registers 7
    .parameter "publicOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 546
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Ljava/lang/Class;->getDeclaredClasses(Ljava/lang/Class;Z)[Ljava/lang/Class;

    move-result-object v1

    .line 549
    .local v1, result:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 550
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_8
    if-eqz v0, :cond_21

    .line 551
    invoke-static {v0, p1}, Ljava/lang/Class;->getDeclaredClasses(Ljava/lang/Class;Z)[Ljava/lang/Class;

    move-result-object v2

    .line 552
    .local v2, temp:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v3, v2

    if-eqz v3, :cond_1c

    .line 553
    array-length v3, v1

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v3, v1, v2}, Ljava/lang/Class;->arraycopy([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    check-cast v1, [Ljava/lang/Class;

    .line 556
    .restart local v1       #result:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 557
    goto :goto_8

    .line 559
    .end local v2           #temp:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_21
    return-object v1
.end method

.method private native getInnerClassName()Ljava/lang/String;
.end method

.method private static native getModifiers(Ljava/lang/Class;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation
.end method

.method private native getNameNative()Ljava/lang/String;
.end method

.method private getPublicConstructorOrMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;
    .registers 10
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Member;"
        }
    .end annotation

    .prologue
    .line 467
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    move-object v1, p0

    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v1, :cond_17

    .line 468
    invoke-static {v1, p1, p2}, Ljava/lang/Class;->getDeclaredConstructorOrMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v5

    .line 469
    .local v5, result:Ljava/lang/reflect/Member;
    if-eqz v5, :cond_12

    invoke-interface {v5}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_12

    .line 484
    .end local v5           #result:Ljava/lang/reflect/Member;
    :cond_11
    :goto_11
    return-object v5

    .line 467
    .restart local v5       #result:Ljava/lang/reflect/Member;
    :cond_12
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 475
    .end local v5           #result:Ljava/lang/reflect/Member;
    :cond_17
    move-object v1, p0

    :goto_18
    if-eqz v1, :cond_3a

    .line 476
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/Class;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_20
    if-ge v2, v4, :cond_35

    aget-object v3, v0, v2

    .line 477
    .local v3, ifc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {v3, p1, p2}, Ljava/lang/Class;->getPublicConstructorOrMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v5

    .line 478
    .restart local v5       #result:Ljava/lang/reflect/Member;
    if-eqz v5, :cond_32

    invoke-interface {v5}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_11

    .line 476
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 475
    .end local v3           #ifc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #result:Ljava/lang/reflect/Member;
    :cond_35
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_18

    .line 484
    .end local v0           #arr$:[Ljava/lang/Class;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :cond_3a
    const/4 v5, 0x0

    goto :goto_11
.end method

.method private getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 9
    .parameter "name"

    .prologue
    .line 794
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    move-object v1, p0

    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v1, :cond_17

    .line 795
    invoke-static {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 796
    .local v5, result:Ljava/lang/reflect/Field;
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_12

    .line 811
    .end local v5           #result:Ljava/lang/reflect/Field;
    :cond_11
    :goto_11
    return-object v5

    .line 794
    .restart local v5       #result:Ljava/lang/reflect/Field;
    :cond_12
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 802
    .end local v5           #result:Ljava/lang/reflect/Field;
    :cond_17
    move-object v1, p0

    :goto_18
    if-eqz v1, :cond_3a

    .line 803
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/Class;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_20
    if-ge v2, v4, :cond_35

    aget-object v3, v0, v2

    .line 804
    .local v3, ifc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {v3, p1}, Ljava/lang/Class;->getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 805
    .restart local v5       #result:Ljava/lang/reflect/Field;
    if-eqz v5, :cond_32

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_11

    .line 803
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 802
    .end local v3           #ifc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #result:Ljava/lang/reflect/Field;
    :cond_35
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_18

    .line 811
    .end local v0           #arr$:[Ljava/lang/Class;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :cond_3a
    const/4 v5, 0x0

    goto :goto_11
.end method

.method private getPublicFieldsRecursive(Ljava/util/List;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 845
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Field;>;"
    move-object v1, p0

    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v1, :cond_19

    .line 846
    const/4 v6, 0x1

    invoke-static {v1, v6}, Ljava/lang/Class;->getDeclaredFields(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_a
    if-ge v3, v5, :cond_14

    aget-object v2, v0, v3

    .line 847
    .local v2, field:Ljava/lang/reflect/Field;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 845
    .end local v2           #field:Ljava/lang/reflect/Field;
    :cond_14
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 852
    .end local v0           #arr$:[Ljava/lang/reflect/Field;
    .end local v3           #i$:I
    .end local v5           #len$:I
    :cond_19
    move-object v1, p0

    :goto_1a
    if-eqz v1, :cond_31

    .line 853
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/Class;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_22
    if-ge v3, v5, :cond_2c

    aget-object v4, v0, v3

    .line 854
    .local v4, ifc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {v4, p1}, Ljava/lang/Class;->getPublicFieldsRecursive(Ljava/util/List;)V

    .line 853
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 852
    .end local v4           #ifc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2c
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1a

    .line 857
    .end local v0           #arr$:[Ljava/lang/Class;
    .end local v3           #i$:I
    .end local v5           #len$:I
    :cond_31
    return-void
.end method

.method private getPublicMethodsRecursive(Ljava/util/List;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 954
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Method;>;"
    move-object v1, p0

    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v1, :cond_19

    .line 955
    const/4 v6, 0x1

    invoke-static {v1, v6}, Ljava/lang/Class;->getDeclaredMethods(Ljava/lang/Class;Z)[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Method;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_a
    if-ge v2, v4, :cond_14

    aget-object v5, v0, v2

    .line 956
    .local v5, method:Ljava/lang/reflect/Method;
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 955
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 954
    .end local v5           #method:Ljava/lang/reflect/Method;
    :cond_14
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 961
    .end local v0           #arr$:[Ljava/lang/reflect/Method;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :cond_19
    move-object v1, p0

    :goto_1a
    if-eqz v1, :cond_31

    .line 962
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/Class;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_22
    if-ge v2, v4, :cond_2c

    aget-object v3, v0, v2

    .line 963
    .local v3, ifc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {v3, p1}, Ljava/lang/Class;->getPublicMethodsRecursive(Ljava/util/List;)V

    .line 962
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 961
    .end local v3           #ifc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2c
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1a

    .line 966
    .end local v0           #arr$:[Ljava/lang/Class;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :cond_31
    return-void
.end method

.method private native getSignatureAnnotation()[Ljava/lang/Object;
.end method

.method private getSignatureAttribute()Ljava/lang/String;
    .registers 3

    .prologue
    .line 135
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAnnotation()[Ljava/lang/Object;

    move-result-object v0

    .line 137
    .local v0, annotation:[Ljava/lang/Object;
    if-nez v0, :cond_8

    .line 138
    const/4 v1, 0x0

    .line 141
    :goto_7
    return-object v1

    :cond_8
    invoke-static {v0}, Lorg/apache/harmony/kernel/vm/StringUtils;->combineStrings([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method private native isDeclaredAnnotationPresent(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native newInstanceImpl()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation
.end method


# virtual methods
.method public asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TU;>;)",
            "Ljava/lang/Class",
            "<+TU;>;"
        }
    .end annotation

    .prologue
    .line 1375
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TU;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1376
    return-object p0

    .line 1378
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1379
    .local v0, actualClassName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1380
    .local v1, desiredClassName:Ljava/lang/String;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be cast to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public cast(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter "obj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1395
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_4

    .line 1396
    const/4 p1, 0x0

    .line 1398
    .end local p1
    :cond_3
    return-object p1

    .line 1397
    .restart local p1
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1400
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1401
    .local v0, actualClassName:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1402
    .local v1, desiredClassName:Ljava/lang/String;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be cast to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public native desiredAssertionStatus()Z
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 6
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
    .line 256
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p1, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<TA;>;"
    if-nez p1, :cond_a

    .line 257
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "annotationType == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    :cond_a
    invoke-direct {p0, p1}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 261
    .local v0, annotation:Ljava/lang/annotation/Annotation;,"TA;"
    if-eqz v0, :cond_12

    move-object v2, v0

    .line 274
    :goto_11
    return-object v2

    .line 265
    :cond_12
    const-class v2, Ljava/lang/annotation/Inherited;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 266
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .local v1, sup:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1e
    if-eqz v1, :cond_2d

    .line 267
    invoke-direct {v1, p1}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_28

    move-object v2, v0

    .line 269
    goto :goto_11

    .line 266
    :cond_28
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1e

    .line 274
    .end local v1           #sup:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2d
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 9

    .prologue
    .line 296
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 297
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Class;Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 299
    .local v2, declaredAnnotations:[Ljava/lang/annotation/Annotation;
    array-length v6, v2

    add-int/lit8 v3, v6, -0x1

    .local v3, i:I
    :goto_c
    if-ltz v3, :cond_1c

    .line 300
    aget-object v6, v2, v3

    invoke-interface {v6}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    aget-object v7, v2, v3

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    .line 302
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .local v5, sup:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_20
    if-eqz v5, :cond_4c

    .line 303
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 304
    array-length v6, v2

    add-int/lit8 v3, v6, -0x1

    :goto_29
    if-ltz v3, :cond_47

    .line 305
    aget-object v6, v2, v3

    invoke-interface {v6}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 306
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_44

    const-class v6, Ljava/lang/annotation/Inherited;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 307
    aget-object v6, v2, v3

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_44
    add-int/lit8 v3, v3, -0x1

    goto :goto_29

    .line 302
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_47
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_20

    .line 313
    :cond_4c
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 314
    .local v1, coll:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/annotation/Annotation;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/annotation/Annotation;

    invoke-interface {v1, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/annotation/Annotation;

    return-object v6
.end method

.method public getCanonicalName()Ljava/lang/String;
    .registers 4

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 326
    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 358
    :cond_d
    :goto_d
    return-object v1

    .line 329
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 334
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 338
    .end local v0           #name:Ljava/lang/String;
    :cond_32
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 343
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 344
    .restart local v0       #name:Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 352
    .end local v0           #name:Ljava/lang/String;
    :cond_5e
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_d
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 3

    .prologue
    .line 372
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 373
    const/4 v0, 0x0

    .line 380
    :cond_7
    :goto_7
    return-object v0

    .line 376
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoaderImpl()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 377
    .local v0, loader:Ljava/lang/ClassLoader;
    if-nez v0, :cond_7

    .line 378
    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v0

    goto :goto_7
.end method

.method getClassLoaderImpl()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 395
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Ljava/lang/Class;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 396
    .local v0, loader:Ljava/lang/ClassLoader;
    if-nez v0, :cond_a

    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v0

    .end local v0           #loader:Ljava/lang/ClassLoader;
    :cond_a
    return-object v0
.end method

.method public getClasses()[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/Class;->getFullListOfClasses(Z)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public native getComponentType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public varargs getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 431
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p1, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const-string v0, "<init>"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Ljava/lang/Class;->getConstructorOrMethod(Ljava/lang/String;ZZ[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public getConstructors()[Ljava/lang/reflect/Constructor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 498
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/lang/Class;->getDeclaredConstructors(Ljava/lang/Class;Z)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public native getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
.end method

.method public getDeclaredClasses()[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 534
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Class;->getDeclaredClasses(Ljava/lang/Class;Z)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public varargs getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p1, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 588
    const-string v0, "<init>"

    invoke-direct {p0, v0, v1, v1, p1}, Ljava/lang/Class;->getConstructorOrMethod(Ljava/lang/String;ZZ[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 602
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Class;->getDeclaredConstructors(Ljava/lang/Class;Z)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 626
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_a

    .line 627
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 629
    :cond_a
    invoke-static {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 630
    .local v0, result:Ljava/lang/reflect/Field;
    if-nez v0, :cond_16

    .line 631
    new-instance v1, Ljava/lang/NoSuchFieldException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 633
    :cond_16
    return-object v0
.end method

.method public getDeclaredFields()[Ljava/lang/reflect/Field;
    .registers 2

    .prologue
    .line 647
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Class;->getDeclaredFields(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public varargs getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 685
    invoke-direct {p0, p1, v1, v1, p2}, Ljava/lang/Class;->getConstructorOrMethod(Ljava/lang/String;ZZ[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v0

    .line 686
    .local v0, member:Ljava/lang/reflect/Member;
    instance-of v1, v0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_f

    .line 687
    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 689
    :cond_f
    check-cast v0, Ljava/lang/reflect/Method;

    .end local v0           #member:Ljava/lang/reflect/Member;
    return-object v0
.end method

.method public getDeclaredMethods()[Ljava/lang/reflect/Method;
    .registers 2

    .prologue
    .line 703
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Class;->getDeclaredMethods(Ljava/lang/Class;Z)[Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public native getDeclaringClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public native getEnclosingClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public native getEnclosingConstructor()Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end method

.method public native getEnclosingMethod()Ljava/lang/reflect/Method;
.end method

.method public getEnumConstants()[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 762
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_8

    .line 763
    const/4 v0, 0x0

    .line 765
    :goto_7
    return-object v0

    :cond_8
    invoke-static {p0}, Ljava/lang/Enum;->getSharedConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/Enum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    goto :goto_7
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 782
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_a

    .line 783
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 785
    :cond_a
    invoke-direct {p0, p1}, Ljava/lang/Class;->getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 786
    .local v0, result:Ljava/lang/reflect/Field;
    if-nez v0, :cond_16

    .line 787
    new-instance v1, Ljava/lang/NoSuchFieldException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 789
    :cond_16
    return-object v0
.end method

.method public getFields()[Ljava/lang/reflect/Field;
    .registers 3

    .prologue
    .line 828
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .local v0, fields:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-direct {p0, v0}, Ljava/lang/Class;->getPublicFieldsRecursive(Ljava/util/List;)V

    .line 835
    sget-object v1, Ljava/lang/reflect/Field;->ORDER_BY_NAME_AND_DECLARING_CLASS:Ljava/util/Comparator;

    invoke-static {v0, v1}, Llibcore/util/CollectionUtils;->removeDuplicates(Ljava/util/List;Ljava/util/Comparator;)V

    .line 836
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Field;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Field;

    return-object v1
.end method

.method public getGenericInterfaces()[Ljava/lang/reflect/Type;
    .registers 3

    .prologue
    .line 868
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 869
    .local v0, parser:Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;
    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 870
    iget-object v1, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->interfaceTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-static {v1}, Lorg/apache/harmony/luni/lang/reflect/Types;->getClonedTypeArray(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)[Ljava/lang/reflect/Type;

    move-result-object v1

    return-object v1
.end method

.method public getGenericSuperclass()Ljava/lang/reflect/Type;
    .registers 3

    .prologue
    .line 880
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 881
    .local v0, parser:Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;
    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 882
    iget-object v1, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->superclassType:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lorg/apache/harmony/luni/lang/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    return-object v1
.end method

.method public native getInterfaces()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public varargs getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    .line 915
    invoke-direct {p0, p1, v1, v1, p2}, Ljava/lang/Class;->getConstructorOrMethod(Ljava/lang/String;ZZ[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v0

    .line 916
    .local v0, member:Ljava/lang/reflect/Member;
    instance-of v1, v0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_f

    .line 917
    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 919
    :cond_f
    check-cast v0, Ljava/lang/reflect/Method;

    .end local v0           #member:Ljava/lang/reflect/Member;
    return-object v0
.end method

.method public getMethods()[Ljava/lang/reflect/Method;
    .registers 3

    .prologue
    .line 937
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 938
    .local v0, methods:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-direct {p0, v0}, Ljava/lang/Class;->getPublicMethodsRecursive(Ljava/util/List;)V

    .line 944
    sget-object v1, Ljava/lang/reflect/Method;->ORDER_BY_SIGNATURE:Ljava/util/Comparator;

    invoke-static {v0, v1}, Llibcore/util/CollectionUtils;->removeDuplicates(Ljava/util/List;Ljava/util/Comparator;)V

    .line 945
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Method;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    return-object v1
.end method

.method public getModifiers()I
    .registers 2

    .prologue
    .line 976
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Class;->getModifiers(Ljava/lang/Class;Z)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 996
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/lang/Class;->name:Ljava/lang/String;

    .line 997
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_a

    invoke-direct {p0}, Ljava/lang/Class;->getNameNative()Ljava/lang/String;

    move-result-object v0

    .end local v0           #result:Ljava/lang/String;
    iput-object v0, p0, Ljava/lang/Class;->name:Ljava/lang/String;

    :cond_a
    return-object v0
.end method

.method public getPackage()Ljava/lang/Package;
    .registers 6

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 1343
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1344
    .local v1, loader:Ljava/lang/ClassLoader;
    if-eqz v1, :cond_1d

    .line 1345
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1346
    .local v2, name:Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1347
    .local v0, dot:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1d

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v3

    .line 1349
    .end local v0           #dot:I
    .end local v2           #name:Ljava/lang/String;
    :cond_1d
    return-object v3
.end method

.method public getProtectionDomain()Ljava/security/ProtectionDomain;
    .registers 2

    .prologue
    .line 1045
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 8
    .parameter "resName"

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/16 v5, 0x2e

    .line 1061
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1062
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1076
    :goto_f
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1077
    .local v1, loader:Ljava/lang/ClassLoader;
    if-eqz v1, :cond_4b

    .line 1078
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 1080
    :goto_19
    return-object v3

    .line 1064
    .end local v1           #loader:Ljava/lang/ClassLoader;
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1065
    .local v2, pkg:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1066
    .local v0, dot:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_48

    .line 1067
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 1072
    :goto_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    .line 1069
    :cond_48
    const-string v2, ""

    goto :goto_30

    .line 1080
    .end local v0           #dot:I
    .end local v2           #pkg:Ljava/lang/String;
    .restart local v1       #loader:Ljava/lang/ClassLoader;
    :cond_4b
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    goto :goto_19
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 8
    .parameter "resName"

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/16 v5, 0x2e

    .line 1097
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1098
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1112
    :goto_f
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1113
    .local v1, loader:Ljava/lang/ClassLoader;
    if-eqz v1, :cond_4b

    .line 1114
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 1116
    :goto_19
    return-object v3

    .line 1100
    .end local v1           #loader:Ljava/lang/ClassLoader;
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1101
    .local v2, pkg:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1102
    .local v0, dot:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_48

    .line 1103
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 1108
    :goto_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    .line 1105
    :cond_48
    const-string v2, ""

    goto :goto_30

    .line 1116
    .end local v0           #dot:I
    .end local v2           #pkg:Ljava/lang/String;
    .restart local v1       #loader:Ljava/lang/ClassLoader;
    :cond_4b
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_19
.end method

.method public getSigners()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1130
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1012
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1013
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1031
    :cond_21
    :goto_21
    return-object v1

    .line 1016
    :cond_22
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1018
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1019
    const-string v1, ""

    goto :goto_21

    .line 1022
    :cond_2f
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1023
    :cond_3b
    invoke-direct {p0}, Ljava/lang/Class;->getInnerClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    .line 1026
    :cond_40
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1027
    .local v0, dot:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_21

    .line 1028
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_21
.end method

.method public native getSuperclass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation
.end method

.method public declared-synchronized getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/Class",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1154
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_1
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 1155
    .local v0, parser:Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;
    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 1156
    iget-object v1, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v1}, [Ljava/lang/reflect/TypeVariable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/TypeVariable;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object v1

    .line 1154
    .end local v0           #parser:Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isAnnotation()Z
    .registers 5

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v2, 0x1

    .line 1166
    const/16 v0, 0x2000

    .line 1167
    .local v0, ACC_ANNOTATION:I
    invoke-static {p0, v2}, Ljava/lang/Class;->getModifiers(Ljava/lang/Class;Z)I

    move-result v1

    .line 1168
    .local v1, mod:I
    and-int/lit16 v3, v1, 0x2000

    if-eqz v3, :cond_c

    :goto_b
    return v2

    :cond_c
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .registers 5
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
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p1, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v1, 0x1

    .line 1172
    if-nez p1, :cond_b

    .line 1173
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "annotationType == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1176
    :cond_b
    invoke-direct {p0, p1}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1188
    :cond_11
    :goto_11
    return v1

    .line 1180
    :cond_12
    const-class v2, Ljava/lang/annotation/Inherited;

    invoke-direct {p1, v2}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1181
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .local v0, sup:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1e
    if-eqz v0, :cond_2b

    .line 1182
    invoke-direct {v0, p1}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1181
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1e

    .line 1188
    .end local v0           #sup:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2b
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public native isAnonymousClass()Z
.end method

.method public isArray()Z
    .registers 2

    .prologue
    .line 1208
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public native isAssignableFrom(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation
.end method

.method public isEnum()Z
    .registers 3

    .prologue
    .line 1235
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Enum;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public native isInstance(Ljava/lang/Object;)Z
.end method

.method public native isInterface()Z
.end method

.method public isLocalClass()Z
    .registers 5

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1267
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    if-nez v3, :cond_e

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v3

    if-eqz v3, :cond_18

    :cond_e
    move v0, v1

    .line 1269
    .local v0, enclosed:Z
    :goto_f
    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v3

    if-nez v3, :cond_1a

    :goto_17
    return v1

    .end local v0           #enclosed:Z
    :cond_18
    move v0, v2

    .line 1267
    goto :goto_f

    .restart local v0       #enclosed:Z
    :cond_1a
    move v1, v2

    .line 1269
    goto :goto_17
.end method

.method public isMemberClass()Z
    .registers 2

    .prologue
    .line 1280
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public native isPrimitive()Z
.end method

.method public isSynthetic()Z
    .registers 5

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v2, 0x1

    .line 1298
    const/16 v0, 0x1000

    .line 1299
    .local v0, ACC_SYNTHETIC:I
    invoke-static {p0, v2}, Ljava/lang/Class;->getModifiers(Ljava/lang/Class;Z)I

    move-result v1

    .line 1300
    .local v1, mod:I
    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_c

    :goto_b
    return v2

    :cond_c
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public newInstance()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1319
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->newInstanceImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1326
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1327
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 1329
    :goto_a
    return-object v0

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "interface "

    :goto_18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_29
    const-string v0, "class "

    goto :goto_18
.end method
