.class Lcom/google/android/apps/plus/phone/HomeActivity$3;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/HomeActivity;->showError(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/HomeActivity;

.field final synthetic val$finishOnOk:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/HomeActivity;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 846
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/HomeActivity$3;->this$0:Lcom/google/android/apps/plus/phone/HomeActivity;

    iput-boolean p2, p0, Lcom/google/android/apps/plus/phone/HomeActivity$3;->val$finishOnOk:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 865
    return-void
.end method

.method public onDialogListClick(ILandroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "which"
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 869
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 861
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 5
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 849
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity$3;->val$finishOnOk:Z

    if-eqz v0, :cond_a

    .line 850
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity$3;->this$0:Lcom/google/android/apps/plus/phone/HomeActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/HomeActivity;->finish()V

    .line 857
    :goto_9
    return-void

    .line 852
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity$3;->this$0:Lcom/google/android/apps/plus/phone/HomeActivity;

    #getter for: Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/HomeActivity;->access$200(Lcom/google/android/apps/plus/phone/HomeActivity;)Lcom/google/android/apps/plus/views/HostLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/HostLayout;->isNavigationBarVisible()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 853
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity$3;->this$0:Lcom/google/android/apps/plus/phone/HomeActivity;

    #getter for: Lcom/google/android/apps/plus/phone/HomeActivity;->mHostLayout:Lcom/google/android/apps/plus/views/HostLayout;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/HomeActivity;->access$200(Lcom/google/android/apps/plus/phone/HomeActivity;)Lcom/google/android/apps/plus/views/HostLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/HostLayout;->hideNavigationBar()V

    .line 855
    :cond_1f
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity$3;->this$0:Lcom/google/android/apps/plus/phone/HomeActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/phone/HomeActivity;->mDestination:Landroid/os/Bundle;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/HomeActivity;->access$302(Lcom/google/android/apps/plus/phone/HomeActivity;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_9
.end method
