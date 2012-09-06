.class Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$1;
.super Ljava/lang/Thread;
.source "GoogleLoginServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlelogindist/GoogleLoginServiceHelper;->getAccount(Landroid/app/Activity;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$requestCode:I

.field final synthetic val$requireGoogle:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;ZLandroid/os/Handler;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$1;->val$activity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$1;->val$requireGoogle:Z

    iput-object p3, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$1;->val$handler:Landroid/os/Handler;

    iput p4, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$1;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 120
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v1, b:Landroid/os/Bundle;
    const/4 v5, -0x1

    .line 123
    .local v5, resultCode:I
    const/4 v3, 0x0

    .line 125
    .local v3, helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    :try_start_7
    new-instance v4, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    iget-object v6, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_44
    .catch Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException; {:try_start_7 .. :try_end_12} :catch_33

    .line 127
    .end local v3           #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    .local v4, helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    const/4 v6, 0x1

    :try_start_13
    new-array v0, v6, [Ljava/lang/String;

    .line 128
    .local v0, accounts:[Ljava/lang/String;
    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$1;->val$requireGoogle:Z

    invoke-virtual {v4, v7}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getAccount(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 130
    const-string v6, "accounts"

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_4b
    .catch Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException; {:try_start_13 .. :try_end_23} :catch_4e

    .line 136
    if-eqz v4, :cond_51

    .line 137
    invoke-virtual {v4}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    move-object v3, v4

    .line 143
    .end local v0           #accounts:[Ljava/lang/String;
    .end local v4           #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    .restart local v3       #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    :cond_29
    :goto_29
    iget-object v6, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$1;->val$handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$1;->val$activity:Landroid/app/Activity;

    iget v8, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$1;->val$requestCode:I

    #calls: Lcom/google/android/googlelogindist/GoogleLoginServiceHelper;->postActivityResult(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    invoke-static {v6, v7, v5, v8, v1}, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper;->access$000(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V

    .line 144
    return-void

    .line 131
    :catch_33
    move-exception v2

    .line 132
    .local v2, e:Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;
    :goto_34
    const/4 v5, 0x0

    .line 133
    :try_start_35
    const-string v6, "errorCode"

    invoke-virtual {v2}, Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;->getErrorCode()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_44

    .line 136
    if-eqz v3, :cond_29

    .line 137
    invoke-virtual {v3}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    goto :goto_29

    .line 136
    .end local v2           #e:Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;
    :catchall_44
    move-exception v6

    :goto_45
    if-eqz v3, :cond_4a

    .line 137
    invoke-virtual {v3}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    :cond_4a
    throw v6

    .line 136
    .end local v3           #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    .restart local v4       #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    :catchall_4b
    move-exception v6

    move-object v3, v4

    .end local v4           #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    .restart local v3       #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    goto :goto_45

    .line 131
    .end local v3           #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    .restart local v4       #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    :catch_4e
    move-exception v2

    move-object v3, v4

    .end local v4           #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    .restart local v3       #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    goto :goto_34

    .end local v3           #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    .restart local v0       #accounts:[Ljava/lang/String;
    .restart local v4       #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    :cond_51
    move-object v3, v4

    .end local v4           #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    .restart local v3       #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    goto :goto_29
.end method
