.class public Lcom/google/common/base/h;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/util/logging/Logger;

.field private static final d:Ljava/lang/reflect/Method;


# instance fields
.field final a:Ljava/lang/ref/ReferenceQueue;

.field final b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/google/common/base/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/h;->c:Ljava/util/logging/Logger;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/common/base/k;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/common/base/l;

    invoke-direct {v2}, Lcom/google/common/base/l;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/common/base/i;

    invoke-direct {v2}, Lcom/google/common/base/i;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/google/common/base/j;

    invoke-direct {v2}, Lcom/google/common/base/j;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/h;->a([Lcom/google/common/base/k;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/h;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/h;->d:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_5
    sget-object v0, Lcom/google/common/base/h;->d:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-class v6, Lcom/google/common/base/FinalizableReference;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/ReferenceQueue;
    :try_end_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_19} :catch_21
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_19} :catch_28

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_1c
    iput-object v1, p0, Lcom/google/common/base/h;->a:Ljava/lang/ref/ReferenceQueue;

    iput-boolean v0, p0, Lcom/google/common/base/h;->b:Z

    return-void

    :catch_21
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_28
    move-exception v0

    sget-object v1, Lcom/google/common/base/h;->c:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Failed to start reference finalizer thread. Reference cleanup will only occur when new references are created."

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    move-object v1, v0

    move v0, v2

    goto :goto_1c
.end method

.method private static varargs a([Lcom/google/common/base/k;)Ljava/lang/Class;
    .registers 4

    array-length v1, p0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_10

    aget-object v2, p0, v0

    invoke-interface {v2}, Lcom/google/common/base/k;->a()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_d

    return-object v2

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5

    :try_start_0
    const-string v0, "startFinalizer"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v0

    return-object v0

    :catch_14
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method static synthetic b()Ljava/util/logging/Logger;
    .registers 1

    sget-object v0, Lcom/google/common/base/h;->c:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method a()V
    .registers 5

    iget-boolean v0, p0, Lcom/google/common/base/h;->b:Z

    if-eqz v0, :cond_5

    :cond_4
    return-void

    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/google/common/base/h;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :try_start_10
    check-cast v0, Lcom/google/common/base/FinalizableReference;

    invoke-interface {v0}, Lcom/google/common/base/FinalizableReference;->finalizeReferent()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_5

    :catch_16
    move-exception v0

    sget-object v1, Lcom/google/common/base/h;->c:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Error cleaning up after reference."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
