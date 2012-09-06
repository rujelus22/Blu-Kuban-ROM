.class Lcom/google/android/apps/googlevoice/LoginActivity$16;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/LoginActivity;->onPrepareDialog(ILandroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

.field final synthetic val$accountText:Landroid/widget/EditText;

.field final synthetic val$passwordText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/LoginActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/LoginActivity$16;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/LoginActivity$16;->val$accountText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/google/android/apps/googlevoice/LoginActivity$16;->val$passwordText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 507
    const/16 v0, 0x42

    if-ne p2, v0, :cond_36

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_36

    .line 509
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity$16;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->existingAccount:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$200(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity$16;->val$accountText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_34

    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity$16;->val$passwordText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_34

    .line 511
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity$16;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->enterCredentialsDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$400(Lcom/google/android/apps/googlevoice/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 512
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity$16;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/LoginActivity$16;->val$accountText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/LoginActivity$16;->val$passwordText:Landroid/widget/EditText;

    #calls: Lcom/google/android/apps/googlevoice/LoginActivity;->submit(Landroid/widget/EditText;Landroid/widget/EditText;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1400(Lcom/google/android/apps/googlevoice/LoginActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 514
    :cond_34
    const/4 v0, 0x1

    .line 516
    :goto_35
    return v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_35
.end method
