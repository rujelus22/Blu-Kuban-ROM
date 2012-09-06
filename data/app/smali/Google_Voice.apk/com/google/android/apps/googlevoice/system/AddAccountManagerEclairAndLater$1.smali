.class Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater$1;
.super Ljava/lang/Object;
.source "AddAccountManagerEclairAndLater.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;->addAccount(Landroid/app/Activity;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;

.field final synthetic val$onCompleted:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;Landroid/os/Message;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater$1;->this$0:Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater$1;->val$onCompleted:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 7
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
    .line 58
    .local p1, result:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater$1;->this$0:Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater$1;->val$onCompleted:Landroid/os/Message;

    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v4, "authAccount"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;->succeed(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_13} :catch_39
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_5e

    .line 69
    :goto_13
    return-void

    .line 59
    :catch_14
    move-exception v0

    .line 60
    .local v0, e:Landroid/accounts/OperationCanceledException;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater$1;->this$0:Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountManager.addAccount() failed with exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater$1;->this$0:Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater$1;->val$onCompleted:Landroid/os/Message;

    sget-object v3, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager$Error;->CANCELED:Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager$Error;

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;->fail(Landroid/os/Message;Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager$Error;Ljava/lang/Exception;)V

    goto :goto_13

    .line 62
    .end local v0           #e:Landroid/accounts/OperationCanceledException;
    :catch_39
    move-exception v0

    .line 63
    .local v0, e:Landroid/accounts/AuthenticatorException;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater$1;->this$0:Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountManager.addAccount() failed with exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater$1;->this$0:Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater$1;->val$onCompleted:Landroid/os/Message;

    sget-object v3, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager$Error;->UNAVAILABLE:Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager$Error;

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;->fail(Landroid/os/Message;Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager$Error;Ljava/lang/Exception;)V

    goto :goto_13

    .line 65
    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :catch_5e
    move-exception v0

    .line 66
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater$1;->this$0:Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountManager.addAccount() failed with exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater$1;->this$0:Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater$1;->val$onCompleted:Landroid/os/Message;

    sget-object v3, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager$Error;->GENERAL_FAILURE:Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager$Error;

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;->fail(Landroid/os/Message;Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager$Error;Ljava/lang/Exception;)V

    goto :goto_13
.end method
