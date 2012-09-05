.class Lcom/sprint/smps/activities/EditAmazonAccount$3;
.super Ljava/lang/Object;
.source "EditAmazonAccount.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/EditAmazonAccount;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/EditAmazonAccount;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/EditAmazonAccount;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/EditAmazonAccount$3;->this$0:Lcom/sprint/smps/activities/EditAmazonAccount;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 8
    .parameter "dialogInterface"

    .prologue
    const v5, 0x7f080001

    .line 165
    iget-object v0, p0, Lcom/sprint/smps/activities/EditAmazonAccount$3;->this$0:Lcom/sprint/smps/activities/EditAmazonAccount;

    #getter for: Lcom/sprint/smps/activities/EditAmazonAccount;->successful:Z
    invoke-static {v0}, Lcom/sprint/smps/activities/EditAmazonAccount;->access$2(Lcom/sprint/smps/activities/EditAmazonAccount;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 167
    iget-object v1, p0, Lcom/sprint/smps/activities/EditAmazonAccount$3;->this$0:Lcom/sprint/smps/activities/EditAmazonAccount;

    const-string v2, "Payment Account"

    const-string v3, "Payment account successfully changed."

    iget-object v4, p0, Lcom/sprint/smps/activities/EditAmazonAccount$3;->this$0:Lcom/sprint/smps/activities/EditAmazonAccount;

    iget-object v0, p0, Lcom/sprint/smps/activities/EditAmazonAccount$3;->this$0:Lcom/sprint/smps/activities/EditAmazonAccount;

    invoke-virtual {v0, v5}, Lcom/sprint/smps/activities/EditAmazonAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #calls: Lcom/sprint/smps/activities/EditAmazonAccount;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    invoke-static {v1, v2, v3, v4, v0}, Lcom/sprint/smps/activities/EditAmazonAccount;->access$3(Lcom/sprint/smps/activities/EditAmazonAccount;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V

    .line 171
    :goto_1e
    return-void

    .line 170
    :cond_1f
    iget-object v1, p0, Lcom/sprint/smps/activities/EditAmazonAccount$3;->this$0:Lcom/sprint/smps/activities/EditAmazonAccount;

    const-string v2, "Payment Account"

    const-string v3, "Unable to change payment account."

    iget-object v4, p0, Lcom/sprint/smps/activities/EditAmazonAccount$3;->this$0:Lcom/sprint/smps/activities/EditAmazonAccount;

    iget-object v0, p0, Lcom/sprint/smps/activities/EditAmazonAccount$3;->this$0:Lcom/sprint/smps/activities/EditAmazonAccount;

    invoke-virtual {v0, v5}, Lcom/sprint/smps/activities/EditAmazonAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #calls: Lcom/sprint/smps/activities/EditAmazonAccount;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    invoke-static {v1, v2, v3, v4, v0}, Lcom/sprint/smps/activities/EditAmazonAccount;->access$3(Lcom/sprint/smps/activities/EditAmazonAccount;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V

    goto :goto_1e
.end method
