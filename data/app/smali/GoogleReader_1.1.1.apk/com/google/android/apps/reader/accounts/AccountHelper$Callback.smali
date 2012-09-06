.class public interface abstract Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;
.super Ljava/lang/Object;
.source "AccountHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/accounts/AccountHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onAccountError(Ljava/lang/Exception;)V
.end method

.method public abstract onGetAccountsResult([Lcom/google/android/accounts/Account;)V
.end method

.method public abstract onGetAuthTokenResult(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
.end method
