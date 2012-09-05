.class public Ljava/lang/reflect/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static NextClassNameIndex:I = 0x0

.field private static final loaderCache:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;>;"
        }
    .end annotation
.end field

.field private static final proxyCache:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x1ed825df33efbc35L


# instance fields
.field protected h:Ljava/lang/reflect/InvocationHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const-class v0, Ljava/lang/reflect/Proxy;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Ljava/lang/reflect/Proxy;->$assertionsDisabled:Z

    .line 39
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljava/lang/reflect/Proxy;->loaderCache:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljava/lang/reflect/Proxy;->proxyCache:Ljava/util/Map;

    .line 44
    sput v1, Ljava/lang/reflect/Proxy;->NextClassNameIndex:I

    return-void

    :cond_1d
    move v0, v1

    .line 34
    goto :goto_a
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method protected constructor <init>(Ljava/lang/reflect/InvocationHandler;)V
    .registers 2
    .parameter "h"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Ljava/lang/reflect/Proxy;->h:Ljava/lang/reflect/InvocationHandler;

    .line 64
    return-void
.end method

.method private static native constructorPrototype(Ljava/lang/reflect/InvocationHandler;)V
.end method

.method private static native generateProxy(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/lang/Class;
.end method

.method public static getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
    .registers 3
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 264
    check-cast p0, Ljava/lang/reflect/Proxy;

    .end local p0
    iget-object v0, p0, Ljava/lang/reflect/Proxy;->h:Ljava/lang/reflect/InvocationHandler;

    return-object v0

    .line 267
    .restart local p0
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a proxy instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;
    .registers 24
    .parameter "loader"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 91
    .local p1, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    if-nez p1, :cond_8

    .line 92
    new-instance v18, Ljava/lang/NullPointerException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/NullPointerException;-><init>()V

    throw v18

    .line 94
    :cond_8
    const/4 v3, 0x0

    .line 95
    .local v3, commonPackageName:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    move-object/from16 v0, p1

    array-length v10, v0

    .local v10, length:I
    :goto_d
    if-ge v5, v10, :cond_f0

    .line 96
    aget-object v14, p1, v5

    .line 97
    .local v14, next:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v14, :cond_19

    .line 98
    new-instance v18, Ljava/lang/NullPointerException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/NullPointerException;-><init>()V

    throw v18

    .line 100
    :cond_19
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .line 101
    .local v11, name:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/Class;->isInterface()Z

    move-result v18

    if-nez v18, :cond_3e

    .line 102
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is not an interface"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 104
    :cond_3e
    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_8d

    .line 106
    const/16 v18, 0x0

    :try_start_4a
    move/from16 v0, v18

    move-object/from16 v1, p0

    invoke-static {v11, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v18

    move-object/from16 v0, v18

    if-eq v14, v0, :cond_8d

    .line 107
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is not visible from class loader"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_71
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4a .. :try_end_71} :catch_71

    .line 110
    :catch_71
    move-exception v4

    .line 111
    .local v4, ex:Ljava/lang/ClassNotFoundException;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is not visible from class loader"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 114
    .end local v4           #ex:Ljava/lang/ClassNotFoundException;
    :cond_8d
    add-int/lit8 v8, v5, 0x1

    .local v8, j:I
    :goto_8f
    if-ge v8, v10, :cond_b5

    .line 115
    aget-object v18, p1, v8

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_b2

    .line 116
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " appears more than once"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 114
    :cond_b2
    add-int/lit8 v8, v8, 0x1

    goto :goto_8f

    .line 119
    :cond_b5
    invoke-virtual {v14}, Ljava/lang/Class;->getModifiers()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v18

    if-nez v18, :cond_d3

    .line 120
    const/16 v18, 0x2e

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 121
    .local v9, last:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_d7

    const-string v16, ""

    .line 122
    .local v16, p:Ljava/lang/String;
    :goto_cf
    if-nez v3, :cond_e0

    .line 123
    move-object/from16 v3, v16

    .line 95
    .end local v9           #last:I
    .end local v16           #p:Ljava/lang/String;
    :cond_d3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_d

    .line 121
    .restart local v9       #last:I
    :cond_d7
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    goto :goto_cf

    .line 124
    .restart local v16       #p:Ljava/lang/String;
    :cond_e0
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_d3

    .line 125
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "non-public interfaces must be in the same package"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 132
    .end local v8           #j:I
    .end local v9           #last:I
    .end local v11           #name:Ljava/lang/String;
    .end local v14           #next:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v16           #p:Ljava/lang/String;
    :cond_f0
    sget-object v19, Ljava/lang/reflect/Proxy;->loaderCache:Ljava/util/Map;

    monitor-enter v19

    .line 133
    :try_start_f3
    sget-object v18, Ljava/lang/reflect/Proxy;->loaderCache:Ljava/util/Map;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 135
    .local v6, interfaceCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;>;"
    if-nez v6, :cond_10f

    .line 136
    sget-object v18, Ljava/lang/reflect/Proxy;->loaderCache:Ljava/util/Map;

    new-instance v6, Ljava/util/HashMap;

    .end local v6           #interfaceCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .restart local v6       #interfaceCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_10f
    const-string v7, ""

    .line 143
    .local v7, interfaceKey:Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_1af

    .line 144
    const/16 v18, 0x0

    aget-object v18, p1, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 155
    :goto_126
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/ref/WeakReference;

    .line 156
    .local v17, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;"
    if-nez v17, :cond_1db

    .line 157
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "$Proxy"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v20, Ljava/lang/reflect/Proxy;->NextClassNameIndex:I

    add-int/lit8 v21, v20, 0x1

    sput v21, Ljava/lang/reflect/Proxy;->NextClassNameIndex:I

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 158
    .local v15, nextClassName:Ljava/lang/String;
    if-eqz v3, :cond_176

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_176

    .line 159
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "."

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 161
    :cond_176
    if-nez p0, :cond_17c

    .line 162
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 164
    :cond_17c
    const/16 v18, 0x2e

    const/16 v20, 0x2f

    move/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->generateProxy(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v13

    .line 167
    .local v13, newClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v18, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v18

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v20, Ljava/lang/reflect/Proxy;->proxyCache:Ljava/util/Map;

    monitor-enter v20
    :try_end_1a1
    .catchall {:try_start_f3 .. :try_end_1a1} :catchall_1d8

    .line 170
    :try_start_1a1
    sget-object v18, Ljava/lang/reflect/Proxy;->proxyCache:Ljava/util/Map;

    const-string v21, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    monitor-exit v20
    :try_end_1ad
    .catchall {:try_start_1a1 .. :try_end_1ad} :catchall_1d5

    .line 179
    .end local v15           #nextClassName:Ljava/lang/String;
    :cond_1ad
    :try_start_1ad
    monitor-exit v19

    return-object v13

    .line 146
    .end local v13           #newClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v17           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;"
    :cond_1af
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v12, names:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    move-object/from16 v0, p1

    array-length v10, v0

    :goto_1b8
    if-ge v5, v10, :cond_1cf

    .line 148
    aget-object v18, p1, v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const/16 v18, 0x20

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b8

    .line 151
    :cond_1cf
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1d2
    .catchall {:try_start_1ad .. :try_end_1d2} :catchall_1d8

    move-result-object v7

    goto/16 :goto_126

    .line 171
    .end local v12           #names:Ljava/lang/StringBuilder;
    .restart local v13       #newClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v15       #nextClassName:Ljava/lang/String;
    .restart local v17       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;"
    :catchall_1d5
    move-exception v18

    :try_start_1d6
    monitor-exit v20
    :try_end_1d7
    .catchall {:try_start_1d6 .. :try_end_1d7} :catchall_1d5

    :try_start_1d7
    throw v18

    .line 180
    .end local v6           #interfaceCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;>;"
    .end local v7           #interfaceKey:Ljava/lang/String;
    .end local v13           #newClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v15           #nextClassName:Ljava/lang/String;
    .end local v17           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;"
    :catchall_1d8
    move-exception v18

    monitor-exit v19
    :try_end_1da
    .catchall {:try_start_1d7 .. :try_end_1da} :catchall_1d8

    throw v18

    .line 173
    .restart local v6       #interfaceCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;>;"
    .restart local v7       #interfaceKey:Ljava/lang/String;
    .restart local v17       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;"
    :cond_1db
    :try_start_1db
    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Class;

    .line 174
    .restart local v13       #newClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-boolean v18, Ljava/lang/reflect/Proxy;->$assertionsDisabled:Z

    if-nez v18, :cond_1ad

    if-nez v13, :cond_1ad

    new-instance v18, Ljava/lang/AssertionError;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\ninterfaceKey=\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\nloaderCache=\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/lang/reflect/Proxy;->loaderCache:Ljava/util/Map;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\nintfCache=\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\nproxyCache=\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/lang/reflect/Proxy;->proxyCache:Ljava/util/Map;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v18
    :try_end_242
    .catchall {:try_start_1db .. :try_end_242} :catchall_1d8
.end method

.method public static isProxyClass(Ljava/lang/Class;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p0, :cond_8

    .line 244
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 246
    :cond_8
    sget-object v1, Ljava/lang/reflect/Proxy;->proxyCache:Ljava/util/Map;

    monitor-enter v1

    .line 247
    :try_start_b
    sget-object v0, Ljava/lang/reflect/Proxy;->proxyCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 248
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v0
.end method

.method public static newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    .registers 9
    .parameter "loader"
    .parameter
    .parameter "h"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/InvocationHandler;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 208
    .local p1, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    if-nez p2, :cond_8

    .line 209
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 212
    :cond_8
    :try_start_8
    invoke-static {p0, p1}, Ljava/lang/reflect/Proxy;->getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/reflect/InvocationHandler;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_21} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_21} :catch_36
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_21} :catch_49
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_21} :catch_5c

    move-result-object v2

    return-object v2

    .line 215
    :catch_23
    move-exception v0

    .line 216
    .local v0, ex:Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/InternalError;

    check-cast v2, Ljava/lang/InternalError;

    throw v2

    .line 218
    .end local v0           #ex:Ljava/lang/NoSuchMethodException;
    :catch_36
    move-exception v0

    .line 219
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/InternalError;

    check-cast v2, Ljava/lang/InternalError;

    throw v2

    .line 221
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    :catch_49
    move-exception v0

    .line 222
    .local v0, ex:Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/InternalError;

    check-cast v2, Ljava/lang/InternalError;

    throw v2

    .line 224
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :catch_5c
    move-exception v0

    .line 225
    .local v0, ex:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 226
    .local v1, target:Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/InternalError;

    check-cast v2, Ljava/lang/InternalError;

    throw v2
.end method
