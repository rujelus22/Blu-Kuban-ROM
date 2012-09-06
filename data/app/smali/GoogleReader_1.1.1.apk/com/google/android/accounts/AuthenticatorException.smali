.class public Lcom/google/android/accounts/AuthenticatorException;
.super Lcom/google/android/accounts/AccountsException;
.source "AuthenticatorException.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/accounts/AccountsException;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/accounts/AccountsException;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "detailMessage"
    .parameter "throwable"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/accounts/AccountsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "throwable"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/accounts/AccountsException;-><init>(Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method
