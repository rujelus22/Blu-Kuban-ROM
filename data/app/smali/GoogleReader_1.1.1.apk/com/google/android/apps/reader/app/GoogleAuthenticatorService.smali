.class public Lcom/google/android/apps/reader/app/GoogleAuthenticatorService;
.super Landroid/app/Service;
.source "GoogleAuthenticatorService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .parameter "intent"

    .prologue
    .line 37
    move-object v1, p0

    .line 38
    .local v1, context:Landroid/content/Context;
    new-instance v0, Lcom/google/android/apps/reader/app/GoogleAuthenticator;

    invoke-direct {v0, v1}, Lcom/google/android/apps/reader/app/GoogleAuthenticator;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, authenticator:Lcom/google/android/accounts/DatabaseAuthenticator;
    new-instance v2, Lcom/google/android/accounts/DatabaseAuthenticatorAdapter;

    invoke-direct {v2, v0}, Lcom/google/android/accounts/DatabaseAuthenticatorAdapter;-><init>(Lcom/google/android/accounts/DatabaseAuthenticator;)V

    invoke-virtual {v2}, Lcom/google/android/accounts/DatabaseAuthenticatorAdapter;->getIBinder()Landroid/os/IBinder;

    move-result-object v2

    return-object v2
.end method
