.class public interface abstract Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;
.super Ljava/lang/Object;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/auth/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AuthenticationCallback"
.end annotation


# virtual methods
.method public abstract onAuthSuccess()V
.end method

.method public abstract onAuthTokenInvalidated()V
.end method

.method public abstract onAuthenticationError(Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;)V
.end method

.method public abstract onMultipleAccounts()V
.end method

.method public abstract onSignIn(Landroid/content/Intent;)V
.end method

.method public abstract onSignInCanceled()V
.end method
