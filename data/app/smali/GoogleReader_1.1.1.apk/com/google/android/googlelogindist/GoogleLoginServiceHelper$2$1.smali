.class Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2$1;
.super Ljava/lang/Object;
.source "GoogleLoginServiceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;

.field final synthetic val$credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;


# direct methods
.method constructor <init>(Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;Lcom/google/android/googleapps/GoogleLoginCredentialsResult;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;

    iput-object p2, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2$1;->val$credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2$1;->val$credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

    invoke-virtual {v0}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;

    iget-object v1, v1, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$requestExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_1b

    .line 400
    iget-object v1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;

    iget-object v1, v1, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$requestExtras:Landroid/os/Bundle;

    const-string v2, "optional_message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 402
    const-string v2, "optional_message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 405
    :cond_1b
    const-string v1, "callerExtras"

    iget-object v2, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;

    iget-object v2, v2, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$requestExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 408
    const-string v1, "requestCode"

    iget-object v2, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;

    iget v2, v2, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$requestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    const-string v1, "service"

    iget-object v2, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;

    iget-object v2, v2, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$service:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    iget-object v1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;

    iget-object v1, v1, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;

    iget v2, v2, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper$2;->val$requestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 415
    return-void
.end method