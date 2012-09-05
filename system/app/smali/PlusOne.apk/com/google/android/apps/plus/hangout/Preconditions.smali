.class final Lcom/google/android/apps/plus/hangout/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static checkState(Z)V
    .registers 2
    .parameter "expression"

    .prologue
    .line 57
    if-nez p0, :cond_8

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 60
    :cond_8
    return-void
.end method
