.class Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;
.super Ljava/lang/Thread;
.source "AuthenticationHelperEclairAndLater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->invalidateAuthToken(Landroid/os/Message;Landroid/os/Message;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$failure:Landroid/os/Message;

.field final synthetic val$notify:Z

.field final synthetic val$success:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;Landroid/accounts/Account;Landroid/os/Message;ZLandroid/os/Message;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;->val$failure:Landroid/os/Message;

    iput-boolean p4, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;->val$notify:Z

    iput-object p5, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;->val$success:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;

    #getter for: Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->accountManager:Landroid/accounts/AccountManager;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->access$400(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;->val$account:Landroid/accounts/Account;

    const-string v2, "grandcentral"

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;

    #getter for: Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->access$300(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v9

    .line 194
    .local v9, result:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-interface {v9}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 196
    .local v7, bundle:Landroid/os/Bundle;
    const-string v0, "authtoken"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;->val$failure:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 241
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v9           #result:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :cond_29
    :goto_29
    return-void

    .line 201
    .restart local v7       #bundle:Landroid/os/Bundle;
    .restart local v9       #result:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :cond_2a
    const-string v0, "authtoken"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, authToken:Ljava/lang/String;
    if-nez v6, :cond_44

    .line 203
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;->val$failure:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_37
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_37} :catch_38
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_37} :catch_94
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_37} :catch_a0

    goto :goto_29

    .line 231
    .end local v6           #authToken:Ljava/lang/String;
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v9           #result:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :catch_38
    move-exception v8

    .line 232
    .local v8, e:Landroid/accounts/OperationCanceledException;
    const-string v0, "Failed to obtain auth token"

    invoke-static {v0, v8}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;->val$failure:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_29

    .line 207
    .end local v8           #e:Landroid/accounts/OperationCanceledException;
    .restart local v6       #authToken:Ljava/lang/String;
    .restart local v7       #bundle:Landroid/os/Bundle;
    .restart local v9       #result:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;

    #getter for: Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->accountManager:Landroid/accounts/AccountManager;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->access$400(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1, v6}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;->val$notify:Z

    if-eqz v0, :cond_8e

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;

    #getter for: Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->accountManager:Landroid/accounts/AccountManager;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->access$400(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;->val$account:Landroid/accounts/Account;

    const-string v2, "grandcentral"

    iget-boolean v3, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;->val$notify:Z

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;

    #getter for: Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->access$300(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v9

    .line 215
    invoke-interface {v9}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v7

    .end local v7           #bundle:Landroid/os/Bundle;
    check-cast v7, Landroid/os/Bundle;

    .line 217
    .restart local v7       #bundle:Landroid/os/Bundle;
    const-string v0, "authtoken"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 221
    const-string v0, "authtoken"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 222
    if-eqz v6, :cond_29

    .line 227
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;

    #getter for: Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->access$200(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;->val$account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v6, v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->useCredentials(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 230
    :cond_8e
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;->val$success:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_93
    .catch Landroid/accounts/OperationCanceledException; {:try_start_44 .. :try_end_93} :catch_38
    .catch Landroid/accounts/AuthenticatorException; {:try_start_44 .. :try_end_93} :catch_94
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_93} :catch_a0

    goto :goto_29

    .line 234
    .end local v6           #authToken:Ljava/lang/String;
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v9           #result:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :catch_94
    move-exception v8

    .line 235
    .local v8, e:Landroid/accounts/AuthenticatorException;
    const-string v0, "Failed to obtain auth token"

    invoke-static {v0, v8}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;->val$failure:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_29

    .line 237
    .end local v8           #e:Landroid/accounts/AuthenticatorException;
    :catch_a0
    move-exception v8

    .line 238
    .local v8, e:Ljava/io/IOException;
    const-string v0, "Failed to obtain auth token"

    invoke-static {v0, v8}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;->val$failure:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_29
.end method
