.class Lcom/google/android/apps/googlevoice/LoginActivity$14;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$okButton:Landroid/widget/Button;

.field final synthetic val$passwordText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/LoginActivity;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/LoginActivity$14;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/LoginActivity$14;->val$okButton:Landroid/widget/Button;

    iput-object p3, p0, Lcom/google/android/apps/googlevoice/LoginActivity$14;->val$accountText:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/google/android/apps/googlevoice/LoginActivity$14;->val$passwordText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 465
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/LoginActivity$14;->val$okButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity$14;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->existingAccount:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$200(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity$14;->val$accountText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_1f

    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity$14;->val$passwordText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_1f

    const/4 v0, 0x1

    :goto_1b
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 467
    return-void

    .line 465
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 470
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 473
    return-void
.end method
