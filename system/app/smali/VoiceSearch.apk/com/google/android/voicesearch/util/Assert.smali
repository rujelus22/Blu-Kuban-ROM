.class public Lcom/google/android/voicesearch/util/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/util/Assert$1;,
        Lcom/google/android/voicesearch/util/Assert$AssertException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static assertLock(Ljava/lang/Object;)V
    .registers 5
    .parameter "obj"

    .prologue
    .line 71
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    .line 76
    return-void

    .line 72
    :catch_4
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/google/android/voicesearch/util/Assert$AssertException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Assertion failed: the thread is not holding the lock on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/voicesearch/util/Assert$AssertException;-><init>(Ljava/lang/String;Lcom/google/android/voicesearch/util/Assert$1;)V

    throw v1
.end method

.method public static assertNotNull(Ljava/lang/Object;)V
    .registers 4
    .parameter "obj"

    .prologue
    .line 64
    if-nez p0, :cond_b

    .line 65
    new-instance v0, Lcom/google/android/voicesearch/util/Assert$AssertException;

    const-string v1, "Assertion failed, obj is null"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/util/Assert$AssertException;-><init>(Ljava/lang/String;Lcom/google/android/voicesearch/util/Assert$1;)V

    throw v0

    .line 67
    :cond_b
    return-void
.end method

.method public static assertNotOnMainThread(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_21

    .line 34
    new-instance v0, Lcom/google/android/voicesearch/util/Assert$AssertException;

    const-string v1, "The method should not be called on the main thread"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/util/Assert$AssertException;-><init>(Ljava/lang/String;Lcom/google/android/voicesearch/util/Assert$1;)V

    throw v0

    .line 36
    :cond_21
    return-void
.end method

.method public static assertNull(Ljava/lang/Object;)V
    .registers 4
    .parameter "obj"

    .prologue
    .line 58
    if-eqz p0, :cond_1c

    .line 59
    new-instance v0, Lcom/google/android/voicesearch/util/Assert$AssertException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Assertion failed, obj not null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/util/Assert$AssertException;-><init>(Ljava/lang/String;Lcom/google/android/voicesearch/util/Assert$1;)V

    throw v0

    .line 61
    :cond_1c
    return-void
.end method

.method public static assertTrue(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 45
    if-nez p0, :cond_b

    .line 46
    new-instance v0, Lcom/google/android/voicesearch/util/Assert$AssertException;

    const-string v1, "Assertion failed, expected true, but it was false"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/util/Assert$AssertException;-><init>(Ljava/lang/String;Lcom/google/android/voicesearch/util/Assert$1;)V

    throw v0

    .line 48
    :cond_b
    return-void
.end method
