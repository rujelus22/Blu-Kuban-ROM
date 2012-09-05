.class public Lcom/google/android/apps/pos/network/PosAuthorizationException;
.super Lcom/google/android/apps/pos/network/PosException;
.source "PosAuthorizationException.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/PosException;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/pos/model/PlusoneError;)V
    .registers 2
    .parameter "posError"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/network/PosException;-><init>(Lcom/google/android/apps/pos/model/PlusoneError;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/network/PosException;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method
