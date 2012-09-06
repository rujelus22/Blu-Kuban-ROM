.class Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;
.super Ljava/lang/Thread;
.source "GoogleLoginServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlelogindist/GoogleLoginServiceHelper;->getCredentials(Landroid/app/Activity;ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$promptUser:Z

.field final synthetic val$requestCode:I

.field final synthetic val$requestExtras:Landroid/os/Bundle;

.field final synthetic val$service:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Landroid/os/Handler;I)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$accountName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$service:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$promptUser:Z

    iput-object p5, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$requestExtras:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    iput p7, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 321
    const/4 v4, 0x0

    .line 322
    .local v4, helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 325
    .local v1, b:Landroid/os/Bundle;
    :try_start_8
    new-instance v5, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    iget-object v8, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_d5
    .catch Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException; {:try_start_8 .. :try_end_13} :catch_df

    .line 328
    .end local v4           #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    .local v5, helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    :try_start_13
    iget-object v8, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$accountName:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper;->access$100()Ljava/lang/String;

    move-result-object v9

    if-ne v8, v9, :cond_73

    .line 329
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getAccount(Z)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, account:Ljava/lang/String;
    :goto_20
    iget-object v8, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$service:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$promptUser:Z

    if-nez v9, :cond_84

    :goto_26
    invoke-virtual {v5, v0, v8, v6}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

    move-result-object v2

    .line 353
    .local v2, credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    const-string v6, "callerExtras"

    iget-object v7, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$requestExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 354
    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_86

    .line 360
    const-string v6, "authtoken"

    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v6, "authAccount"

    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getAccount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v6, "youtube"

    iget-object v7, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$service:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 365
    const-string v6, "YouTubeUser"

    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getAccount()Ljava/lang/String;

    move-result-object v7

    const-string v8, "YouTubeUser"

    invoke-virtual {v5, v7, v8}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->peekCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_62
    iget-object v6, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    const/4 v8, -0x1

    iget v9, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$requestCode:I

    #calls: Lcom/google/android/googlelogindist/GoogleLoginServiceHelper;->postActivityResult(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    invoke-static {v6, v7, v8, v9, v1}, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper;->access$000(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    :try_end_6c
    .catchall {:try_start_13 .. :try_end_6c} :catchall_dc
    .catch Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException; {:try_start_13 .. :try_end_6c} :catch_ba

    .line 442
    if-eqz v5, :cond_71

    .line 443
    invoke-virtual {v5}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    :cond_71
    move-object v4, v5

    .end local v0           #account:Ljava/lang/String;
    .end local v2           #credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    .end local v5           #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    .restart local v4       #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    :cond_72
    :goto_72
    return-void

    .line 330
    .end local v4           #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    .restart local v5       #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    :cond_73
    :try_start_73
    iget-object v8, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$accountName:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper;->access$200()Ljava/lang/String;

    move-result-object v9

    if-ne v8, v9, :cond_81

    .line 331
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getAccount(Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #account:Ljava/lang/String;
    goto :goto_20

    .line 333
    .end local v0           #account:Ljava/lang/String;
    :cond_81
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$accountName:Ljava/lang/String;

    .restart local v0       #account:Ljava/lang/String;
    goto :goto_20

    :cond_84
    move v6, v7

    .line 336
    goto :goto_26

    .line 378
    .restart local v2       #credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    :cond_86
    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_b2

    .line 384
    iget-boolean v6, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$promptUser:Z

    if-eqz v6, :cond_a1

    .line 390
    iget-object v6, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2$1;

    invoke-direct {v7, p0, v2}, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2$1;-><init>(Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;Lcom/google/android/googleapps/GoogleLoginCredentialsResult;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_9a
    .catchall {:try_start_73 .. :try_end_9a} :catchall_dc
    .catch Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException; {:try_start_73 .. :try_end_9a} :catch_ba

    .line 442
    if-eqz v5, :cond_9f

    .line 443
    invoke-virtual {v5}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    :cond_9f
    move-object v4, v5

    .end local v5           #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    .restart local v4       #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    goto :goto_72

    .line 422
    .end local v4           #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    .restart local v5       #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    :cond_a1
    :try_start_a1
    iget-object v6, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    const/4 v8, -0x1

    iget v9, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$requestCode:I

    #calls: Lcom/google/android/googlelogindist/GoogleLoginServiceHelper;->postActivityResult(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    invoke-static {v6, v7, v8, v9, v1}, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper;->access$000(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    :try_end_ab
    .catchall {:try_start_a1 .. :try_end_ab} :catchall_dc
    .catch Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException; {:try_start_a1 .. :try_end_ab} :catch_ba

    .line 442
    if-eqz v5, :cond_b0

    .line 443
    invoke-virtual {v5}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    :cond_b0
    move-object v4, v5

    .end local v5           #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    .restart local v4       #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    goto :goto_72

    .line 432
    .end local v4           #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    .restart local v5       #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    :cond_b2
    :try_start_b2
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Malformed credentialsResult from helper.getCredentials()"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_ba
    .catchall {:try_start_b2 .. :try_end_ba} :catchall_dc
    .catch Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException; {:try_start_b2 .. :try_end_ba} :catch_ba

    .line 435
    .end local v0           #account:Ljava/lang/String;
    .end local v2           #credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    :catch_ba
    move-exception v3

    move-object v4, v5

    .line 436
    .end local v5           #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    .local v3, e:Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;
    .restart local v4       #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    :goto_bc
    :try_start_bc
    const-string v6, "errorCode"

    invoke-virtual {v3}, Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;->getErrorCode()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 438
    iget-object v6, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    const/4 v8, 0x0

    iget v9, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$requestCode:I

    #calls: Lcom/google/android/googlelogindist/GoogleLoginServiceHelper;->postActivityResult(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    invoke-static {v6, v7, v8, v9, v1}, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper;->access$000(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    :try_end_cf
    .catchall {:try_start_bc .. :try_end_cf} :catchall_d5

    .line 442
    if-eqz v4, :cond_72

    .line 443
    invoke-virtual {v4}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    goto :goto_72

    .line 442
    .end local v3           #e:Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;
    :catchall_d5
    move-exception v6

    :goto_d6
    if-eqz v4, :cond_db

    .line 443
    invoke-virtual {v4}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    :cond_db
    throw v6

    .line 442
    .end local v4           #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    .restart local v5       #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    :catchall_dc
    move-exception v6

    move-object v4, v5

    .end local v5           #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    .restart local v4       #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    goto :goto_d6

    .line 435
    :catch_df
    move-exception v3

    goto :goto_bc
.end method
