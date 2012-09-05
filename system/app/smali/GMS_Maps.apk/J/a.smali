.class public LJ/a;
.super Ljava/lang/Thread;


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final e:Ljava/lang/reflect/Field;


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;

.field private final c:Ljava/lang/ref/PhantomReference;

.field private final d:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, LJ/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, LJ/a;->a:Ljava/util/logging/Logger;

    invoke-static {}, LJ/a;->a()Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, LJ/a;->e:Ljava/lang/reflect/Field;

    return-void
.end method

.method public static a()Ljava/lang/reflect/Field;
    .registers 3

    :try_start_0
    const-class v0, Ljava/lang/Thread;

    const-string v1, "inheritableThreadLocals"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-object v0

    :catch_d
    move-exception v0

    sget-object v0, LJ/a;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "Couldn\'t access Thread.inheritableThreadLocals. Reference finalizer threads will inherit thread local values."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_c
.end method

.method private a(Ljava/lang/ref/Reference;)V
    .registers 7

    invoke-direct {p0}, LJ/a;->b()Ljava/lang/reflect/Method;

    move-result-object v1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    iget-object v0, p0, LJ/a;->c:Ljava/lang/ref/PhantomReference;

    if-ne p1, v0, :cond_12

    new-instance v0, LJ/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LJ/c;-><init>(LJ/b;)V

    throw v0

    :cond_12
    const/4 v0, 0x0

    :try_start_13
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_18} :catch_21

    :goto_18
    iget-object v0, p0, LJ/a;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :catch_21
    move-exception v0

    sget-object v2, LJ/a;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Error cleaning up after reference."

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18
.end method

.method private b()Ljava/lang/reflect/Method;
    .registers 4

    iget-object v0, p0, LJ/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_11

    new-instance v0, LJ/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LJ/c;-><init>(LJ/b;)V

    throw v0

    :cond_11
    :try_start_11
    const-string v1, "finalizeReferent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_19} :catch_1b

    move-result-object v0

    return-object v0

    :catch_1b
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public run()V
    .registers 2

    :goto_0
    :try_start_0
    iget-object v0, p0, LJ/a;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    invoke-direct {p0, v0}, LJ/a;->a(Ljava/lang/ref/Reference;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a
    .catch LJ/c; {:try_start_0 .. :try_end_9} :catch_c

    goto :goto_0

    :catch_a
    move-exception v0

    goto :goto_0

    :catch_c
    move-exception v0

    return-void
.end method
