.class Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$1;
.super Ljava/lang/Object;
.source "AuthenticationHelperEclairAndLater.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->getCredentials(Landroid/app/Activity;ILjava/lang/String;Z)V
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
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;Landroid/accounts/Account;Landroid/app/Activity;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$1;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$1;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$1;->val$activity:Landroid/app/Activity;

    iput p4, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$1;->val$requestCode:I

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
    .local p1, result:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v7, 0x1

    .line 87
    :try_start_1
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 88
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "authtoken"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 89
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v2, replyBundle:Landroid/os/Bundle;
    const-string v3, "authAccount"

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$1;->val$account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v3, "authtoken"

    const-string v4, "authtoken"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$1;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$1;->val$activity:Landroid/app/Activity;

    iget v5, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$1;->val$requestCode:I

    #calls: Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->postActivitySuccess(Landroid/app/Activity;ILandroid/os/Bundle;)V
    invoke-static {v3, v4, v5, v2}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->access$000(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;Landroid/app/Activity;ILandroid/os/Bundle;)V

    .line 111
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #replyBundle:Landroid/os/Bundle;
    :goto_31
    return-void

    .line 95
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_32
    const-string v3, "Failed to obtain auth token: no authtoken."

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    .line 96
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$1;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$1;->val$activity:Landroid/app/Activity;

    iget v5, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$1;->val$requestCode:I

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #calls: Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->postActivityFailure(Landroid/app/Activity;ILjava/lang/Integer;)V
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->access$100(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;Landroid/app/Activity;ILjava/lang/Integer;)V
    :try_end_45
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_45} :catch_46
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_45} :catch_57
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_45} :catch_6b

    goto :goto_31

    .line 99
    .end local v0           #bundle:Landroid/os/Bundle;
    :catch_46
    move-exception v1

    .line 100
    .local v1, e:Landroid/accounts/OperationCanceledException;
    const-string v3, "Failed to obtain auth token"

    invoke-static {v3, v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$1;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$1;->val$activity:Landroid/app/Activity;

    iget v5, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$1;->val$requestCode:I

    const/4 v6, 0x0

    #calls: Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->postActivityFailure(Landroid/app/Activity;ILjava/lang/Integer;)V
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->access$100(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;Landroid/app/Activity;ILjava/lang/Integer;)V

    goto :goto_31

    .line 102
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catch_57
    move-exception v1

    .line 103
    .local v1, e:Landroid/accounts/AuthenticatorException;
    const-string v3, "Failed to obtain auth token"

    invoke-static {v3, v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$1;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$1;->val$activity:Landroid/app/Activity;

    iget v5, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$1;->val$requestCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #calls: Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->postActivityFailure(Landroid/app/Activity;ILjava/lang/Integer;)V
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->access$100(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;Landroid/app/Activity;ILjava/lang/Integer;)V

    goto :goto_31

    .line 106
    .end local v1           #e:Landroid/accounts/AuthenticatorException;
    :catch_6b
    move-exception v1

    .line 107
    .local v1, e:Ljava/io/IOException;
    const-string v3, "Failed to obtain auth token"

    invoke-static {v3, v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$1;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$1;->val$activity:Landroid/app/Activity;

    iget v5, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$1;->val$requestCode:I

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #calls: Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->postActivityFailure(Landroid/app/Activity;ILjava/lang/Integer;)V
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->access$100(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;Landroid/app/Activity;ILjava/lang/Integer;)V

    goto :goto_31
.end method
