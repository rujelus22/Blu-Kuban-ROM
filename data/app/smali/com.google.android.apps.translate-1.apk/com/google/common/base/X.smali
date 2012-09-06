.class public final Lcom/google/common/base/X;
.super Ljava/lang/Object;
.source "X.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertTrue(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 41
    if-nez p0, :cond_a

    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Assertion failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_a
    return-void
.end method

.method public static assertTrue(ZLjava/lang/String;)V
    .registers 5
    .parameter "b"
    .parameter "msg"

    .prologue
    .line 52
    if-nez p0, :cond_1b

    .line 53
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Assertion failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1b
    return-void
.end method
