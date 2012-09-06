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
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 321
    const/4 v0, 0x0

    .line 322
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 325
    :try_start_8
    new-instance v2, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    iget-object v3, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_d2
    .catch Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException; {:try_start_8 .. :try_end_13} :catch_df

    .line 328
    :try_start_13
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$accountName:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper;->access$100()Ljava/lang/String;

    move-result-object v3

    if-ne v0, v3, :cond_73

    .line 329
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getAccount(Z)Ljava/lang/String;

    move-result-object v0

    .line 336
    :goto_20
    iget-object v3, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$service:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$promptUser:Z

    if-nez v4, :cond_84

    move v4, v6

    :goto_27
    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

    move-result-object v0

    .line 353
    const-string v3, "callerExtras"

    iget-object v4, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$requestExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 354
    invoke-virtual {v0}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_86

    .line 360
    const-string v3, "authtoken"

    invoke-virtual {v0}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v3, "authAccount"

    invoke-virtual {v0}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v3, "youtube"

    iget-object v4, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$service:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 365
    const-string v3, "YouTubeUser"

    invoke-virtual {v0}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getAccount()Ljava/lang/String;

    move-result-object v0

    const-string v4, "YouTubeUser"

    invoke-virtual {v2, v0, v4}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->peekCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_63
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    const/4 v4, -0x1

    iget v5, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$requestCode:I

    #calls: Lcom/google/android/googlelogindist/GoogleLoginServiceHelper;->postActivityResult(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    invoke-static {v0, v3, v4, v5, v1}, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper;->access$000(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    :try_end_6d
    .catchall {:try_start_13 .. :try_end_6d} :catchall_dc
    .catch Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException; {:try_start_13 .. :try_end_6d} :catch_b8

    .line 442
    if-eqz v2, :cond_72

    .line 443
    invoke-virtual {v2}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    :cond_72
    :goto_72
    return-void

    .line 330
    :cond_73
    :try_start_73
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$accountName:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper;->access$200()Ljava/lang/String;

    move-result-object v3

    if-ne v0, v3, :cond_81

    .line 331
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getAccount(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 333
    :cond_81
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$accountName:Ljava/lang/String;

    goto :goto_20

    :cond_84
    move v4, v5

    .line 336
    goto :goto_27

    .line 378
    :cond_86
    invoke-virtual {v0}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_b0

    .line 384
    iget-boolean v3, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$promptUser:Z

    if-eqz v3, :cond_a0

    .line 390
    iget-object v3, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2$1;

    invoke-direct {v4, p0, v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2$1;-><init>(Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;Lcom/google/android/googleapps/GoogleLoginCredentialsResult;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_9a
    .catchall {:try_start_73 .. :try_end_9a} :catchall_dc
    .catch Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException; {:try_start_73 .. :try_end_9a} :catch_b8

    .line 442
    if-eqz v2, :cond_72

    .line 443
    invoke-virtual {v2}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    goto :goto_72

    .line 422
    :cond_a0
    :try_start_a0
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    const/4 v4, -0x1

    iget v5, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$requestCode:I

    #calls: Lcom/google/android/googlelogindist/GoogleLoginServiceHelper;->postActivityResult(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    invoke-static {v0, v3, v4, v5, v1}, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper;->access$000(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    :try_end_aa
    .catchall {:try_start_a0 .. :try_end_aa} :catchall_dc
    .catch Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException; {:try_start_a0 .. :try_end_aa} :catch_b8

    .line 442
    if-eqz v2, :cond_72

    .line 443
    invoke-virtual {v2}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    goto :goto_72

    .line 432
    :cond_b0
    :try_start_b0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Malformed credentialsResult from helper.getCredentials()"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b8
    .catchall {:try_start_b0 .. :try_end_b8} :catchall_dc
    .catch Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException; {:try_start_b0 .. :try_end_b8} :catch_b8

    .line 435
    :catch_b8
    move-exception v0

    .line 436
    :goto_b9
    :try_start_b9
    const-string v3, "errorCode"

    invoke-virtual {v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;->getErrorCode()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 438
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$requestCode:I

    #calls: Lcom/google/android/googlelogindist/GoogleLoginServiceHelper;->postActivityResult(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    invoke-static {v0, v3, v4, v5, v1}, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper;->access$000(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    :try_end_cc
    .catchall {:try_start_b9 .. :try_end_cc} :catchall_dc

    .line 442
    if-eqz v2, :cond_72

    .line 443
    invoke-virtual {v2}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    goto :goto_72

    .line 442
    :catchall_d2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_d6
    if-eqz v1, :cond_db

    .line 443
    invoke-virtual {v1}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    :cond_db
    throw v0

    .line 442
    :catchall_dc
    move-exception v0

    move-object v1, v2

    goto :goto_d6

    .line 435
    :catch_df
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_b9
.end method
