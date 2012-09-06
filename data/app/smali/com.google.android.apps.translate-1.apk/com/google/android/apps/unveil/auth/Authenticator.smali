.class public interface abstract Lcom/google/android/apps/unveil/auth/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/auth/Authenticator$ErrorType;,
        Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;
    }
.end annotation


# static fields
.field public static final GOOGLE_SESSION_COOKIE:Ljava/lang/String; = "SID"


# virtual methods
.method public abstract clearAuthToken()V
.end method

.method public abstract getAccounts()[Ljava/lang/String;
.end method

.method public abstract getAuthState()Lcom/google/android/apps/unveil/auth/AuthState;
.end method

.method public abstract getCredentials(Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;)V
.end method

.method public abstract invalidateAuthToken(Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;)V
.end method

.method public abstract onSignInResult(Lcom/google/android/apps/unveil/auth/Authenticator$AuthenticationCallback;ILandroid/content/Intent;)V
.end method

.method public abstract setPreferredHistoryAccount(Ljava/lang/String;)V
.end method
