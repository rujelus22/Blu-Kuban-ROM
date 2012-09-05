.class public final Lcom/google/common/util/Assert;
.super Ljava/lang/Object;


# static fields
.field private static final NULL_OBJECT:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/util/Assert;->NULL_OBJECT:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertLocked(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    if-nez p1, :cond_7

    const-string v0, "object is null"

    invoke-static {p0, v0}, Lcom/google/common/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V
    :try_end_a
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_7 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "monitor on ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] is not held by current thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/util/Assert;->fail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static fail(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/google/common/util/Assert;->throwAssertionError(Ljava/lang/String;)V

    return-void
.end method

.method private static fail(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_19
    invoke-static {p1}, Lcom/google/common/util/Assert;->fail(Ljava/lang/String;)V

    return-void
.end method

.method private static throwAssertionError(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_6

    :catch_6
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Assert common"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/google/common/util/AssertionError;

    invoke-direct {v0, p0}, Lcom/google/common/util/AssertionError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
