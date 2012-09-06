.class Lcom/google/android/apps/googlevoice/LoginActivity$6;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 288
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/LoginActivity$6;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 291
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_9

    .line 292
    const-string v2, "Entering Credentials: Clicked Positive Button"

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 294
    :cond_9
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/LoginActivity$6;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->enterCredentialsDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$400(Lcom/google/android/apps/googlevoice/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    sget v3, Lcom/google/android/apps/googlevoice/R$id;->account:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 295
    .local v0, accountText:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/LoginActivity$6;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->enterCredentialsDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$400(Lcom/google/android/apps/googlevoice/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    sget v3, Lcom/google/android/apps/googlevoice/R$id;->password:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 296
    .local v1, passwordText:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/LoginActivity$6;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->existingAccount:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$200(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_33

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v2

    if-lez v2, :cond_61

    :cond_33
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v2

    if-lez v2, :cond_61

    .line 298
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/LoginActivity$6;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/LoginActivity$6;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->existingAccount:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$200(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/LoginActivity$6;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->existingAccount:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$200(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    :goto_49
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/google/android/apps/googlevoice/LoginActivity;->submit(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v2, v4}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$500(Lcom/google/android/apps/googlevoice/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 310
    :goto_57
    return-void

    .line 298
    :cond_58
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_49

    .line 302
    :cond_61
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_6a

    .line 303
    const-string v2, "Entering Credentials: No credentials to submit - canceling"

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 305
    :cond_6a
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 307
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/LoginActivity$6;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$100(Lcom/google/android/apps/googlevoice/LoginActivity;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v3

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/LoginActivity$6;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->existingAccount:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$200(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_83

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/LoginActivity$6;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->loginServiceAccount:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$300(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_89

    :cond_83
    const/16 v2, 0x12c

    :goto_85
    invoke-interface {v3, v2}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    goto :goto_57

    :cond_89
    const/4 v2, 0x1

    goto :goto_85
.end method
