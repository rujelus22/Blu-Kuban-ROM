.class public interface abstract Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AccountManagerBridge;
.super Ljava/lang/Object;
.source "AndroidAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccountManagerBridge"
.end annotation


# virtual methods
.method public abstract addAccount(Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAccounts()[Landroid/accounts/Account;
.end method

.method public abstract getAuthToken(Landroid/accounts/Account;ZLandroid/accounts/AccountManagerCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Z",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract invalidateAuthToken(Ljava/lang/String;)V
.end method
