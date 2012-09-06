.class Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$1;
.super Ljava/lang/Thread;
.source "AuthenticationHelperCupcakeToDonut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;->loadCredentials(Landroid/os/Message;Landroid/os/Message;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;

.field final synthetic val$failure:Landroid/os/Message;

.field final synthetic val$notify:Z

.field final synthetic val$success:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;ZLandroid/os/Message;Landroid/os/Message;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$1;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;

    iput-boolean p2, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$1;->val$notify:Z

    iput-object p3, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$1;->val$success:Landroid/os/Message;

    iput-object p4, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$1;->val$failure:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 59
    :try_start_0
    new-instance v3, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$1;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;

    #getter for: Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;->access$000(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V

    .line 61
    .local v3, helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getAccount(Z)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, account:Ljava/lang/String;
    const-string v5, "grandcentral"

    iget-boolean v6, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$1;->val$notify:Z

    invoke-virtual {v3, v0, v5, v6}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

    move-result-object v4

    .line 64
    .local v4, result:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    invoke-virtual {v4}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, authToken:Ljava/lang/String;
    if-eqz v1, :cond_5f

    .line 66
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$1;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;

    #getter for: Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;->access$100(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setAccount(Ljava/lang/String;)V

    .line 67
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$1;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;

    #getter for: Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;->access$100(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setAuthToken(Ljava/lang/String;)V

    .line 68
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$1;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;

    #getter for: Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;->access$100(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setUsingLoginService(Z)V

    .line 69
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$1;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;

    #getter for: Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;->access$100(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v5

    new-instance v6, Lcom/google/android/apps/googlevoice/net/Credentials;

    invoke-direct {v6, v0, v1}, Lcom/google/android/apps/googlevoice/net/Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lcom/google/android/apps/googlevoice/net/VoiceService;->setCredentials(Lcom/google/android/apps/googlevoice/net/Credentials;)V

    .line 71
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$1;->val$success:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 81
    .end local v0           #account:Ljava/lang/String;
    .end local v1           #authToken:Ljava/lang/String;
    .end local v3           #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    .end local v4           #result:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    :goto_5e
    return-void

    .line 74
    .restart local v0       #account:Ljava/lang/String;
    .restart local v1       #authToken:Ljava/lang/String;
    .restart local v3       #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    .restart local v4       #result:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    :cond_5f
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$1;->val$failure:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_64
    .catch Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException; {:try_start_0 .. :try_end_64} :catch_65

    goto :goto_5e

    .line 76
    .end local v0           #account:Ljava/lang/String;
    .end local v1           #authToken:Ljava/lang/String;
    .end local v3           #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    .end local v4           #result:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    :catch_65
    move-exception v2

    .line 78
    .local v2, e:Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;
    const-string v5, "failed to find GoogleLoginService"

    invoke-static {v5, v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$1;->val$failure:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5e
.end method
