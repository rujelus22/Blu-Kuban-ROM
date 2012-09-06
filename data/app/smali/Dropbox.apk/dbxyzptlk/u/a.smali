.class public Ldbxyzptlk/u/a;
.super Ljava/lang/Thread;
.source "panda.py"


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

    .prologue
    .line 51
    const-class v0, Ldbxyzptlk/u/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/u/a;->a:Ljava/util/logging/Logger;

    .line 91
    invoke-static {}, Ldbxyzptlk/u/a;->a()Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/u/a;->e:Ljava/lang/reflect/Field;

    return-void
.end method

.method public static a()Ljava/lang/reflect/Field;
    .registers 3

    .prologue
    .line 192
    :try_start_0
    const-class v0, Ljava/lang/Thread;

    const-string v1, "inheritableThreadLocals"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 194
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    .line 200
    :goto_c
    return-object v0

    .line 196
    :catch_d
    move-exception v0

    .line 197
    sget-object v0, Ldbxyzptlk/u/a;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "Couldn\'t access Thread.inheritableThreadLocals. Reference finalizer threads will inherit thread local values."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private a(Ljava/lang/ref/Reference;)V
    .registers 7
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Ldbxyzptlk/u/a;->b()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 143
    :cond_4
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 145
    iget-object v0, p0, Ldbxyzptlk/u/a;->c:Ljava/lang/ref/PhantomReference;

    if-ne p1, v0, :cond_12

    .line 150
    new-instance v0, Ldbxyzptlk/u/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldbxyzptlk/u/c;-><init>(Ldbxyzptlk/u/b;)V

    throw v0

    .line 154
    :cond_12
    const/4 v0, 0x0

    :try_start_13
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_18} :catch_21

    .line 163
    :goto_18
    iget-object v0, p0, Ldbxyzptlk/u/a;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object p1

    if-nez p1, :cond_4

    .line 164
    return-void

    .line 155
    :catch_21
    move-exception v0

    .line 156
    sget-object v2, Ldbxyzptlk/u/a;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Error cleaning up after reference."

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18
.end method

.method private b()Ljava/lang/reflect/Method;
    .registers 4

    .prologue
    .line 170
    iget-object v0, p0, Ldbxyzptlk/u/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 172
    if-nez v0, :cond_11

    .line 181
    new-instance v0, Ldbxyzptlk/u/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldbxyzptlk/u/c;-><init>(Ldbxyzptlk/u/b;)V

    throw v0

    .line 184
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

    .line 185
    :catch_1b
    move-exception v0

    .line 186
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 127
    :goto_0
    :try_start_0
    iget-object v0, p0, Ldbxyzptlk/u/a;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    invoke-direct {p0, v0}, Ldbxyzptlk/u/a;->a(Ljava/lang/ref/Reference;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ldbxyzptlk/u/c; {:try_start_0 .. :try_end_9} :catch_c

    goto :goto_0

    .line 128
    :catch_a
    move-exception v0

    goto :goto_0

    .line 130
    :catch_c
    move-exception v0

    .line 131
    return-void
.end method
