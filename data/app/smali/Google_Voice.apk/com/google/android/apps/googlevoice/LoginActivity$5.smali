.class Lcom/google/android/apps/googlevoice/LoginActivity$5;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/LoginActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/LoginActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/LoginActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/LoginActivity$5;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 316
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_9

    .line 317
    const-string v0, "Entering Credentials: Canceled"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 319
    :cond_9
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 321
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity$5;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$100(Lcom/google/android/apps/googlevoice/LoginActivity;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity$5;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->existingAccount:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$200(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity$5;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->loginServiceAccount:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$300(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_28

    :cond_22
    const/16 v0, 0x12c

    :goto_24
    invoke-interface {v1, v0}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 323
    return-void

    .line 321
    :cond_28
    const/4 v0, 0x1

    goto :goto_24
.end method
