.class public Lcom/google/android/apps/pos/network/PosInvalidTokenException;
.super Lcom/google/android/apps/pos/network/PosAuthorizationException;
.source "PosInvalidTokenException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/PosAuthorizationException;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/pos/model/PlusoneError;)V
    .registers 2
    .parameter "posError"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/network/PosAuthorizationException;-><init>(Lcom/google/android/apps/pos/model/PlusoneError;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/network/PosAuthorizationException;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method
