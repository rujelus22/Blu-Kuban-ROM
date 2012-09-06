.class Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$2;
.super Ljava/lang/Object;
.source "AuthenticationHelperEclairAndLater.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->loadCredentials(Landroid/os/Message;Landroid/os/Message;Z)V
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

.field final synthetic val$failure:Landroid/os/Message;

.field final synthetic val$success:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;Landroid/accounts/Account;Landroid/os/Message;Landroid/os/Message;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$2;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$2;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$2;->val$success:Landroid/os/Message;

    iput-object p4, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$2;->val$failure:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 8
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
    .line 138
    .local p1, result:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 139
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "authtoken"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 140
    const-string v3, "authtoken"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, authToken:Ljava/lang/String;
    if-eqz v0, :cond_5f

    .line 142
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$2;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;

    #getter for: Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->access$200(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$2;->val$account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setAccount(Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$2;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;

    #getter for: Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->access$200(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setAuthToken(Ljava/lang/String;)V

    .line 144
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$2;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;

    #getter for: Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->access$200(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setUsingLoginService(Z)V

    .line 145
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$2;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;

    #getter for: Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->access$200(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v3

    new-instance v4, Lcom/google/android/apps/googlevoice/net/Credentials;

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$2;->val$account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v0}, Lcom/google/android/apps/googlevoice/net/Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/google/android/apps/googlevoice/net/VoiceService;->setCredentials(Lcom/google/android/apps/googlevoice/net/Credentials;)V

    .line 147
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$2;->val$success:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 164
    .end local v0           #authToken:Ljava/lang/String;
    .end local v1           #bundle:Landroid/os/Bundle;
    :goto_5e
    return-void

    .line 149
    .restart local v0       #authToken:Ljava/lang/String;
    .restart local v1       #bundle:Landroid/os/Bundle;
    :cond_5f
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$2;->val$failure:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_64
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_64} :catch_65
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_64} :catch_77
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_64} :catch_83

    goto :goto_5e

    .line 154
    .end local v0           #authToken:Ljava/lang/String;
    .end local v1           #bundle:Landroid/os/Bundle;
    :catch_65
    move-exception v2

    .line 155
    .local v2, e:Landroid/accounts/OperationCanceledException;
    const-string v3, "Failed to obtain auth token"

    invoke-static {v3, v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$2;->val$failure:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5e

    .line 152
    .end local v2           #e:Landroid/accounts/OperationCanceledException;
    .restart local v1       #bundle:Landroid/os/Bundle;
    :cond_71
    :try_start_71
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$2;->val$failure:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_76
    .catch Landroid/accounts/OperationCanceledException; {:try_start_71 .. :try_end_76} :catch_65
    .catch Landroid/accounts/AuthenticatorException; {:try_start_71 .. :try_end_76} :catch_77
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_76} :catch_83

    goto :goto_5e

    .line 157
    .end local v1           #bundle:Landroid/os/Bundle;
    :catch_77
    move-exception v2

    .line 158
    .local v2, e:Landroid/accounts/AuthenticatorException;
    const-string v3, "Failed to obtain auth token"

    invoke-static {v3, v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$2;->val$failure:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5e

    .line 160
    .end local v2           #e:Landroid/accounts/AuthenticatorException;
    :catch_83
    move-exception v2

    .line 161
    .local v2, e:Ljava/io/IOException;
    const-string v3, "Failed to obtain auth token"

    invoke-static {v3, v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$2;->val$failure:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5e
.end method
