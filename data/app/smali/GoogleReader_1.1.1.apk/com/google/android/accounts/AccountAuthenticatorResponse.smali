.class Lcom/google/android/accounts/AccountAuthenticatorResponse;
.super Ljava/lang/Object;
.source "AccountAuthenticatorActivity.java"


# instance fields
.field private final mResponse:Landroid/accounts/AccountAuthenticatorResponse;


# direct methods
.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    if-nez p1, :cond_b

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 119
    :cond_b
    check-cast p1, Landroid/accounts/AccountAuthenticatorResponse;

    .end local p1
    iput-object p1, p0, Lcom/google/android/accounts/AccountAuthenticatorResponse;->mResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 120
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 4
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/accounts/AccountAuthenticatorResponse;->mResponse:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {v0, p1, p2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 144
    return-void
.end method

.method public onRequestContinued()V
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/accounts/AccountAuthenticatorResponse;->mResponse:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {v0}, Landroid/accounts/AccountAuthenticatorResponse;->onRequestContinued()V

    .line 128
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/accounts/AccountAuthenticatorResponse;->mResponse:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {v0, p1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 136
    return-void
.end method
