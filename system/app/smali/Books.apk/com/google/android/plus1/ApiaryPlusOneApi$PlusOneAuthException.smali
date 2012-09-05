.class public Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;
.super Lcom/google/android/plus1/PlusOneReader$PlusOneException;
.source "ApiaryPlusOneApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/plus1/ApiaryPlusOneApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlusOneAuthException"
.end annotation


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
.method public resolve(Landroid/app/Activity;Lcom/google/android/plus1/PlusOneController$ValueListener;)V
    .registers 10
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/plus1/PlusOneController$ValueListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, callback:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Ljava/lang/Void;>;"
    const/4 v3, 0x0

    .line 411
    iget-object v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;->this$0:Lcom/google/android/plus1/ApiaryPlusOneApi;

    #getter for: Lcom/google/android/plus1/ApiaryPlusOneApi;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v0}, Lcom/google/android/plus1/ApiaryPlusOneApi;->access$100(Lcom/google/android/plus1/ApiaryPlusOneApi;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;->this$0:Lcom/google/android/plus1/ApiaryPlusOneApi;

    #getter for: Lcom/google/android/plus1/ApiaryPlusOneApi;->mAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/google/android/plus1/ApiaryPlusOneApi;->access$000(Lcom/google/android/plus1/ApiaryPlusOneApi;)Landroid/accounts/Account;

    move-result-object v1

    const-string v2, "Manage your +1\'s"

    new-instance v5, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException$1;

    invoke-direct {v5, p0, p2}, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException$1;-><init>(Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;Lcom/google/android/plus1/PlusOneController$ValueListener;)V

    move-object v4, p1

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 427
    return-void
.end method
