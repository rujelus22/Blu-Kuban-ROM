.class public Lorg/dom4j/util/PerThreadSingleton;
.super Ljava/lang/Object;
.source "PerThreadSingleton.java"

# interfaces
.implements Lorg/dom4j/util/SingletonStrategy;


# instance fields
.field private perThreadCache:Ljava/lang/ThreadLocal;

.field private singletonClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/util/PerThreadSingleton;->singletonClassName:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/dom4j/util/PerThreadSingleton;->perThreadCache:Ljava/lang/ThreadLocal;

    .line 30
    return-void
.end method


# virtual methods
.method public instance()Ljava/lang/Object;
    .registers 7

    .prologue
    .line 37
    const/4 v3, 0x0

    .line 39
    .local v3, singletonInstancePerThread:Ljava/lang/Object;
    iget-object v4, p0, Lorg/dom4j/util/PerThreadSingleton;->perThreadCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 42
    .local v2, ref:Ljava/lang/ref/WeakReference;
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3b

    .line 43
    :cond_11
    const/4 v0, 0x0

    .line 45
    .local v0, clazz:Ljava/lang/Class;
    :try_start_12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 46
    iget-object v5, p0, Lorg/dom4j/util/PerThreadSingleton;->singletonClassName:Ljava/lang/String;

    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_2f

    move-result-object v3

    .line 55
    .end local v3           #singletonInstancePerThread:Ljava/lang/Object;
    :goto_24
    iget-object v4, p0, Lorg/dom4j/util/PerThreadSingleton;->perThreadCache:Ljava/lang/ThreadLocal;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 59
    .end local v0           #clazz:Ljava/lang/Class;
    :goto_2e
    return-object v3

    .line 48
    .restart local v0       #clazz:Ljava/lang/Class;
    .restart local v3       #singletonInstancePerThread:Ljava/lang/Object;
    :catch_2f
    move-exception v1

    .line 50
    .local v1, ignore:Ljava/lang/Exception;
    :try_start_30
    iget-object v4, p0, Lorg/dom4j/util/PerThreadSingleton;->singletonClassName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_39} :catch_40

    move-result-object v3

    goto :goto_24

    .line 57
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v1           #ignore:Ljava/lang/Exception;
    :cond_3b
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    goto :goto_2e

    .line 52
    .restart local v0       #clazz:Ljava/lang/Class;
    .restart local v1       #ignore:Ljava/lang/Exception;
    :catch_40
    move-exception v4

    goto :goto_24
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/dom4j/util/PerThreadSingleton;->perThreadCache:Ljava/lang/ThreadLocal;

    .line 34
    return-void
.end method

.method public setSingletonClassName(Ljava/lang/String;)V
    .registers 2
    .parameter "singletonClassName"

    .prologue
    .line 63
    iput-object p1, p0, Lorg/dom4j/util/PerThreadSingleton;->singletonClassName:Ljava/lang/String;

    .line 64
    return-void
.end method
