.class Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$SidTokenHandler;
.super Ljava/lang/Object;
.source "TokenAuthAuthenticationHelper.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SidTokenHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field final synthetic this$0:Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;Landroid/accounts/Account;)V
    .registers 3
    .parameter
    .parameter "account"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$SidTokenHandler;->this$0:Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$SidTokenHandler;->mAccount:Landroid/accounts/Account;

    .line 104
    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, value:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "authtoken"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, sid:Ljava/lang/String;
    new-instance v5, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$LsidTokenHandler;

    iget-object v1, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$SidTokenHandler;->this$0:Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;

    invoke-direct {v5, v1, v8}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$LsidTokenHandler;-><init>(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;Ljava/lang/String;)V

    .line 109
    .local v5, callback:Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$LsidTokenHandler;
    iget-object v1, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$SidTokenHandler;->this$0:Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;

    #getter for: Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->mClient:Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;
    invoke-static {v1}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->access$000(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;)Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 110
    iget-object v1, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$SidTokenHandler;->this$0:Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;

    #getter for: Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->mClient:Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;
    invoke-static {v1}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->access$100(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;)Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$TokenAuthClient;

    invoke-interface {v1}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$TokenAuthClient;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 111
    .local v4, activity:Landroid/app/Activity;
    if-eqz v4, :cond_36

    .line 112
    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 113
    .local v0, am:Landroid/accounts/AccountManager;
    iget-object v1, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$SidTokenHandler;->mAccount:Landroid/accounts/Account;

    const-string v2, "LSID"

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_36
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_36} :catch_37
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_36} :catch_45
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_36} :catch_53

    .line 128
    .end local v0           #am:Landroid/accounts/AccountManager;
    .end local v4           #activity:Landroid/app/Activity;
    .end local v5           #callback:Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$LsidTokenHandler;
    .end local v8           #sid:Ljava/lang/String;
    :cond_36
    :goto_36
    return-void

    .line 116
    :catch_37
    move-exception v7

    .line 117
    .local v7, e:Landroid/accounts/OperationCanceledException;
    const-string v1, "TokenAuthHelper"

    const-string v2, "cancelled while acquiring token: "

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    iget-object v1, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$SidTokenHandler;->this$0:Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;

    #calls: Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->abort()V
    invoke-static {v1}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->access$200(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;)V

    goto :goto_36

    .line 119
    .end local v7           #e:Landroid/accounts/OperationCanceledException;
    :catch_45
    move-exception v7

    .line 120
    .local v7, e:Landroid/accounts/AuthenticatorException;
    const-string v1, "TokenAuthHelper"

    const-string v2, "authentication error while acquiring token: "

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    iget-object v1, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$SidTokenHandler;->this$0:Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;

    #calls: Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->abort()V
    invoke-static {v1}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->access$200(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;)V

    goto :goto_36

    .line 122
    .end local v7           #e:Landroid/accounts/AuthenticatorException;
    :catch_53
    move-exception v7

    .line 123
    .local v7, e:Ljava/io/IOException;
    const-string v1, "TokenAuthHelper"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 124
    const-string v1, "TokenAuthHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO error while acquiring token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_75
    iget-object v1, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$SidTokenHandler;->this$0:Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;

    #calls: Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->abort()V
    invoke-static {v1}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->access$200(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;)V

    goto :goto_36
.end method
