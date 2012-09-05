.class Lcom/google/android/gm/AccountHelper$1;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/AccountHelper;->asyncGetAccountsInfo(Lcom/google/android/gm/AccountHelper$AccountResultsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<[",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/AccountHelper;

.field final synthetic val$callback:Lcom/google/android/gm/AccountHelper$AccountResultsCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gm/AccountHelper;Lcom/google/android/gm/AccountHelper$AccountResultsCallback;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/gm/AccountHelper$1;->this$0:Lcom/google/android/gm/AccountHelper;

    iput-object p2, p0, Lcom/google/android/gm/AccountHelper$1;->val$callback:Lcom/google/android/gm/AccountHelper$AccountResultsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<[",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<[Landroid/accounts/Account;>;"
    const/4 v7, 0x0

    .line 114
    const/4 v1, 0x0

    .line 116
    .local v1, accounts:[Landroid/accounts/Account;
    :try_start_2
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Landroid/accounts/Account;

    move-object v1, v0
    :try_end_a
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_a} :catch_10
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_1b
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_a} :catch_26

    .line 127
    :goto_a
    iget-object v5, p0, Lcom/google/android/gm/AccountHelper$1;->val$callback:Lcom/google/android/gm/AccountHelper$AccountResultsCallback;

    invoke-interface {v5, v1}, Lcom/google/android/gm/AccountHelper$AccountResultsCallback;->exec([Landroid/accounts/Account;)V

    .line 128
    return-void

    .line 117
    :catch_10
    move-exception v4

    .line 118
    .local v4, oce:Landroid/accounts/OperationCanceledException;
    const-string v5, "Gmail"

    const-string v6, "Unexpected exception trying to get accounts."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v4, v6, v7}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_a

    .line 120
    .end local v4           #oce:Landroid/accounts/OperationCanceledException;
    :catch_1b
    move-exception v3

    .line 121
    .local v3, ioe:Ljava/io/IOException;
    const-string v5, "Gmail"

    const-string v6, "Unexpected exception trying to get accounts."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v3, v6, v7}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_a

    .line 123
    .end local v3           #ioe:Ljava/io/IOException;
    :catch_26
    move-exception v2

    .line 124
    .local v2, ae:Landroid/accounts/AuthenticatorException;
    const-string v5, "Gmail"

    const-string v6, "Unexpected exception trying to get accounts."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v2, v6, v7}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_a
.end method
