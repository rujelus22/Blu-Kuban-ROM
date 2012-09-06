.class Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$2;
.super Ljava/lang/Thread;
.source "AuthenticationHelperCupcakeToDonut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;->invalidateAuthToken(Landroid/os/Message;Landroid/os/Message;Z)V
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
    .line 93
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$2;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;

    iput-boolean p2, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$2;->val$notify:Z

    iput-object p3, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$2;->val$success:Landroid/os/Message;

    iput-object p4, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$2;->val$failure:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 97
    :try_start_0
    new-instance v3, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$2;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;

    #getter for: Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;->access$000(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V

    .line 99
    .local v3, helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getAccount(Z)Ljava/lang/String;
    :try_end_f
    .catch Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException; {:try_start_0 .. :try_end_f} :catch_3d

    move-result-object v0

    .line 102
    .local v0, account:Ljava/lang/String;
    :try_start_10
    const-string v5, "grandcentral"

    invoke-virtual {v3, v0, v5}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getAuthToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, authToken:Ljava/lang/String;
    if-eqz v1, :cond_1b

    .line 105
    invoke-virtual {v3, v1}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->invalidateAuthToken(Ljava/lang/String;)V
    :try_end_1b
    .catch Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$AuthenticationException; {:try_start_10 .. :try_end_1b} :catch_49
    .catch Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException; {:try_start_10 .. :try_end_1b} :catch_3d

    .line 114
    .end local v1           #authToken:Ljava/lang/String;
    :cond_1b
    :goto_1b
    :try_start_1b
    iget-boolean v5, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$2;->val$notify:Z

    if-eqz v5, :cond_37

    .line 117
    const-string v5, "grandcentral"

    iget-boolean v6, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$2;->val$notify:Z

    invoke-virtual {v3, v0, v5, v6}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

    move-result-object v4

    .line 119
    .local v4, result:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    invoke-virtual {v4}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .restart local v1       #authToken:Ljava/lang/String;
    if-eqz v1, :cond_37

    .line 122
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$2;->this$0:Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;

    #getter for: Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;->access$100(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v0, v1, v6}, Lcom/google/android/apps/googlevoice/DependencyResolver;->useCredentials(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 126
    .end local v1           #authToken:Ljava/lang/String;
    .end local v4           #result:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    :cond_37
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$2;->val$success:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_3c
    .catch Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException; {:try_start_1b .. :try_end_3c} :catch_3d

    .line 132
    .end local v0           #account:Ljava/lang/String;
    .end local v3           #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    :goto_3c
    return-void

    .line 127
    :catch_3d
    move-exception v2

    .line 129
    .local v2, e:Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;
    const-string v5, "Failed to find GoogleLoginService!"

    invoke-static {v5, v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$2;->val$failure:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3c

    .line 107
    .end local v2           #e:Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;
    .restart local v0       #account:Ljava/lang/String;
    .restart local v3       #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    :catch_49
    move-exception v5

    goto :goto_1b
.end method
