.class public Lcom/google/android/accounts/NetworkErrorException;
.super Lcom/google/android/accounts/AccountsException;
.source "NetworkErrorException.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/accounts/AccountsException;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/accounts/AccountsException;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "detailMessage"
    .parameter "throwable"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/android/accounts/AccountsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "throwable"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/accounts/AccountsException;-><init>(Ljava/lang/Throwable;)V

    .line 31
    return-void
.end method
