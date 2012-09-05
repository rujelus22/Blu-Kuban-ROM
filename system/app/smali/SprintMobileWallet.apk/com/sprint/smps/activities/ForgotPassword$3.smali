.class Lcom/sprint/smps/activities/ForgotPassword$3;
.super Ljava/lang/Object;
.source "ForgotPassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/ForgotPassword;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/ForgotPassword;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ForgotPassword;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/ForgotPassword$3;->this$0:Lcom/sprint/smps/activities/ForgotPassword;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 7
    .parameter "dialogInterface"

    .prologue
    const v4, 0x7f080019

    .line 267
    iget-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword$3;->this$0:Lcom/sprint/smps/activities/ForgotPassword;

    #getter for: Lcom/sprint/smps/activities/ForgotPassword;->successful:Z
    invoke-static {v0}, Lcom/sprint/smps/activities/ForgotPassword;->access$4(Lcom/sprint/smps/activities/ForgotPassword;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 269
    iget-object v1, p0, Lcom/sprint/smps/activities/ForgotPassword$3;->this$0:Lcom/sprint/smps/activities/ForgotPassword;

    const-string v2, "Password successfully changed."

    iget-object v3, p0, Lcom/sprint/smps/activities/ForgotPassword$3;->this$0:Lcom/sprint/smps/activities/ForgotPassword;

    iget-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword$3;->this$0:Lcom/sprint/smps/activities/ForgotPassword;

    invoke-virtual {v0, v4}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #calls: Lcom/sprint/smps/activities/ForgotPassword;->showAlert(Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    invoke-static {v1, v2, v3, v0}, Lcom/sprint/smps/activities/ForgotPassword;->access$5(Lcom/sprint/smps/activities/ForgotPassword;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V

    .line 278
    :goto_1c
    return-void

    .line 273
    :cond_1d
    iget-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword$3;->this$0:Lcom/sprint/smps/activities/ForgotPassword;

    #getter for: Lcom/sprint/smps/activities/ForgotPassword;->errorMsg:Ljava/lang/String;
    invoke-static {v0}, Lcom/sprint/smps/activities/ForgotPassword;->access$6(Lcom/sprint/smps/activities/ForgotPassword;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 274
    iget-object v1, p0, Lcom/sprint/smps/activities/ForgotPassword$3;->this$0:Lcom/sprint/smps/activities/ForgotPassword;

    iget-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword$3;->this$0:Lcom/sprint/smps/activities/ForgotPassword;

    #getter for: Lcom/sprint/smps/activities/ForgotPassword;->errorMsg:Ljava/lang/String;
    invoke-static {v0}, Lcom/sprint/smps/activities/ForgotPassword;->access$6(Lcom/sprint/smps/activities/ForgotPassword;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/smps/activities/ForgotPassword$3;->this$0:Lcom/sprint/smps/activities/ForgotPassword;

    iget-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword$3;->this$0:Lcom/sprint/smps/activities/ForgotPassword;

    invoke-virtual {v0, v4}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #calls: Lcom/sprint/smps/activities/ForgotPassword;->showAlert(Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    invoke-static {v1, v2, v3, v0}, Lcom/sprint/smps/activities/ForgotPassword;->access$5(Lcom/sprint/smps/activities/ForgotPassword;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V

    goto :goto_1c

    .line 276
    :cond_3b
    iget-object v1, p0, Lcom/sprint/smps/activities/ForgotPassword$3;->this$0:Lcom/sprint/smps/activities/ForgotPassword;

    const-string v2, "Unable to change password."

    iget-object v3, p0, Lcom/sprint/smps/activities/ForgotPassword$3;->this$0:Lcom/sprint/smps/activities/ForgotPassword;

    iget-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword$3;->this$0:Lcom/sprint/smps/activities/ForgotPassword;

    invoke-virtual {v0, v4}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #calls: Lcom/sprint/smps/activities/ForgotPassword;->showAlert(Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    invoke-static {v1, v2, v3, v0}, Lcom/sprint/smps/activities/ForgotPassword;->access$5(Lcom/sprint/smps/activities/ForgotPassword;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V

    goto :goto_1c
.end method
