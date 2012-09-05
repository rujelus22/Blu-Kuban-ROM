.class final Lcom/google/android/gm/AccountHelper$3;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/AccountHelper;->showAddAccount(Landroid/app/Activity;Lcom/google/android/gm/AccountHelper$AddAccountCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
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
.field final synthetic val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

.field final synthetic val$pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/android/gm/AccountHelper$AddAccountCallback;Landroid/app/PendingIntent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    iput-object p2, p0, Lcom/google/android/gm/AccountHelper$3;->val$pendingIntent:Landroid/app/PendingIntent;

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
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 304
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    if-eqz v6, :cond_10

    .line 305
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/google/android/gm/AccountHelper$AddAccountCallback;->onResult(Landroid/accounts/Account;)V

    .line 307
    :cond_10
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->cancel()V

    .line 340
    :goto_15
    return-void

    .line 311
    :cond_16
    const/4 v0, 0x0

    .line 313
    .local v0, accountResult:Landroid/accounts/Account;
    :try_start_17
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 314
    .local v5, result:Landroid/os/Bundle;
    const-string v6, "authAccount"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, addName:Ljava/lang/String;
    const-string v6, "accountType"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, addType:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_49

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_49

    .line 319
    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_17 .. :try_end_3a} :catchall_88
    .catch Landroid/accounts/OperationCanceledException; {:try_start_17 .. :try_end_3a} :catch_58
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_3a} :catch_68
    .catch Landroid/accounts/AuthenticatorException; {:try_start_17 .. :try_end_3a} :catch_78

    .line 320
    .end local v0           #accountResult:Landroid/accounts/Account;
    .local v1, accountResult:Landroid/accounts/Account;
    :try_start_3a
    const-string v6, "gmail-ls"

    invoke-static {v1, v6}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v4

    .line 325
    .local v4, isSyncable:I
    if-gez v4, :cond_48

    .line 326
    const-string v6, "gmail-ls"

    const/4 v7, 0x1

    invoke-static {v1, v6, v7}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_98
    .catch Landroid/accounts/OperationCanceledException; {:try_start_3a .. :try_end_48} :catch_a1
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_48} :catch_9e
    .catch Landroid/accounts/AuthenticatorException; {:try_start_3a .. :try_end_48} :catch_9b

    :cond_48
    move-object v0, v1

    .line 335
    .end local v1           #accountResult:Landroid/accounts/Account;
    .end local v4           #isSyncable:I
    .restart local v0       #accountResult:Landroid/accounts/Account;
    :cond_49
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    if-eqz v6, :cond_52

    .line 336
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    invoke-interface {v6, v0}, Lcom/google/android/gm/AccountHelper$AddAccountCallback;->onResult(Landroid/accounts/Account;)V

    .line 338
    :cond_52
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->cancel()V

    goto :goto_15

    .line 331
    .end local v2           #addName:Ljava/lang/String;
    .end local v3           #addType:Ljava/lang/String;
    .end local v5           #result:Landroid/os/Bundle;
    :catch_58
    move-exception v6

    .line 335
    :goto_59
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    if-eqz v6, :cond_62

    .line 336
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    invoke-interface {v6, v0}, Lcom/google/android/gm/AccountHelper$AddAccountCallback;->onResult(Landroid/accounts/Account;)V

    .line 338
    :cond_62
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->cancel()V

    goto :goto_15

    .line 332
    :catch_68
    move-exception v6

    .line 335
    :goto_69
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    if-eqz v6, :cond_72

    .line 336
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    invoke-interface {v6, v0}, Lcom/google/android/gm/AccountHelper$AddAccountCallback;->onResult(Landroid/accounts/Account;)V

    .line 338
    :cond_72
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->cancel()V

    goto :goto_15

    .line 333
    :catch_78
    move-exception v6

    .line 335
    :goto_79
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    if-eqz v6, :cond_82

    .line 336
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    invoke-interface {v6, v0}, Lcom/google/android/gm/AccountHelper$AddAccountCallback;->onResult(Landroid/accounts/Account;)V

    .line 338
    :cond_82
    iget-object v6, p0, Lcom/google/android/gm/AccountHelper$3;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->cancel()V

    goto :goto_15

    .line 335
    :catchall_88
    move-exception v6

    :goto_89
    iget-object v7, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    if-eqz v7, :cond_92

    .line 336
    iget-object v7, p0, Lcom/google/android/gm/AccountHelper$3;->val$callback:Lcom/google/android/gm/AccountHelper$AddAccountCallback;

    invoke-interface {v7, v0}, Lcom/google/android/gm/AccountHelper$AddAccountCallback;->onResult(Landroid/accounts/Account;)V

    .line 338
    :cond_92
    iget-object v7, p0, Lcom/google/android/gm/AccountHelper$3;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->cancel()V

    throw v6

    .line 335
    .end local v0           #accountResult:Landroid/accounts/Account;
    .restart local v1       #accountResult:Landroid/accounts/Account;
    .restart local v2       #addName:Ljava/lang/String;
    .restart local v3       #addType:Ljava/lang/String;
    .restart local v5       #result:Landroid/os/Bundle;
    :catchall_98
    move-exception v6

    move-object v0, v1

    .end local v1           #accountResult:Landroid/accounts/Account;
    .restart local v0       #accountResult:Landroid/accounts/Account;
    goto :goto_89

    .line 333
    .end local v0           #accountResult:Landroid/accounts/Account;
    .restart local v1       #accountResult:Landroid/accounts/Account;
    :catch_9b
    move-exception v6

    move-object v0, v1

    .end local v1           #accountResult:Landroid/accounts/Account;
    .restart local v0       #accountResult:Landroid/accounts/Account;
    goto :goto_79

    .line 332
    .end local v0           #accountResult:Landroid/accounts/Account;
    .restart local v1       #accountResult:Landroid/accounts/Account;
    :catch_9e
    move-exception v6

    move-object v0, v1

    .end local v1           #accountResult:Landroid/accounts/Account;
    .restart local v0       #accountResult:Landroid/accounts/Account;
    goto :goto_69

    .line 331
    .end local v0           #accountResult:Landroid/accounts/Account;
    .restart local v1       #accountResult:Landroid/accounts/Account;
    :catch_a1
    move-exception v6

    move-object v0, v1

    .end local v1           #accountResult:Landroid/accounts/Account;
    .restart local v0       #accountResult:Landroid/accounts/Account;
    goto :goto_59
.end method
