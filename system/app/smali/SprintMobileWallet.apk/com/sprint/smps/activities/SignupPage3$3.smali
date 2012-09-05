.class Lcom/sprint/smps/activities/SignupPage3$3;
.super Ljava/lang/Object;
.source "SignupPage3.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/SignupPage3;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/SignupPage3;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/SignupPage3;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/SignupPage3$3;->this$0:Lcom/sprint/smps/activities/SignupPage3;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 7
    .parameter "dialogInterface"

    .prologue
    .line 315
    invoke-static {}, Lcom/sprint/smps/activities/SignupPage3;->access$1()Lcom/sprint/smps/activities/SignupPage3;

    move-result-object v0

    #getter for: Lcom/sprint/smps/activities/SignupPage3;->signedup:Z
    invoke-static {v0}, Lcom/sprint/smps/activities/SignupPage3;->access$4(Lcom/sprint/smps/activities/SignupPage3;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 316
    const-string v1, "Signup"

    iget-object v0, p0, Lcom/sprint/smps/activities/SignupPage3$3;->this$0:Lcom/sprint/smps/activities/SignupPage3;

    #getter for: Lcom/sprint/smps/activities/SignupPage3;->errorMsg:Ljava/lang/String;
    invoke-static {v0}, Lcom/sprint/smps/activities/SignupPage3;->access$5(Lcom/sprint/smps/activities/SignupPage3;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/smps/activities/SignupPage3$3;->this$0:Lcom/sprint/smps/activities/SignupPage3;

    iget-object v0, p0, Lcom/sprint/smps/activities/SignupPage3$3;->this$0:Lcom/sprint/smps/activities/SignupPage3;

    const v4, 0x7f08000e

    invoke-virtual {v0, v4}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v2, v3, v0}, Lcom/sprint/smps/util/Utilities;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V

    .line 317
    :cond_22
    return-void
.end method
