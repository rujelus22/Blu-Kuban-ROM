.class public final Lcom/google/android/common/base/X;
.super Ljava/lang/Object;
.source "X.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertTrue(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 34
    if-nez p0, :cond_a

    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Assertion failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_a
    return-void
.end method
