.class public Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;
.super Lcom/google/android/plus1/PlusOneReader$PlusOneException;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/android/plus1/ApiaryPlusOneApi;


# direct methods
.method public constructor <init>(Lcom/google/android/plus1/ApiaryPlusOneApi;)V
    .registers 3
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;->this$0:Lcom/google/android/plus1/ApiaryPlusOneApi;

    .line 401
    const-string v0, "User authorization required to use +1"

    invoke-direct {p0, v0}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;-><init>(Ljava/lang/String;)V

    .line 402
    return-void
.end method


# virtual methods
.method public resolve(Landroid/app/Activity;Lcom/google/android/plus1/ac;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 411
    iget-object v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;->this$0:Lcom/google/android/plus1/ApiaryPlusOneApi;

    invoke-static {v0}, Lcom/google/android/plus1/ApiaryPlusOneApi;->b(Lcom/google/android/plus1/ApiaryPlusOneApi;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;->this$0:Lcom/google/android/plus1/ApiaryPlusOneApi;

    invoke-static {v1}, Lcom/google/android/plus1/ApiaryPlusOneApi;->a(Lcom/google/android/plus1/ApiaryPlusOneApi;)Landroid/accounts/Account;

    move-result-object v1

    const-string v2, "Manage your +1\'s"

    new-instance v5, Lcom/google/android/plus1/a;

    invoke-direct {v5, p0, p2}, Lcom/google/android/plus1/a;-><init>(Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;Lcom/google/android/plus1/ac;)V

    move-object v4, p1

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 427
    return-void
.end method
