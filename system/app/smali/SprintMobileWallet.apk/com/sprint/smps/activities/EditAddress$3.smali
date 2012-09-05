.class Lcom/sprint/smps/activities/EditAddress$3;
.super Ljava/lang/Object;
.source "EditAddress.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/EditAddress;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/EditAddress;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/EditAddress;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/EditAddress$3;->this$0:Lcom/sprint/smps/activities/EditAddress;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 8
    .parameter "dialogInterface"

    .prologue
    const v5, 0x7f080001

    .line 234
    iget-object v0, p0, Lcom/sprint/smps/activities/EditAddress$3;->this$0:Lcom/sprint/smps/activities/EditAddress;

    #getter for: Lcom/sprint/smps/activities/EditAddress;->successful:Z
    invoke-static {v0}, Lcom/sprint/smps/activities/EditAddress;->access$2(Lcom/sprint/smps/activities/EditAddress;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 236
    iget-object v1, p0, Lcom/sprint/smps/activities/EditAddress$3;->this$0:Lcom/sprint/smps/activities/EditAddress;

    const-string v2, "Change"

    const-string v3, "Address successfully changed."

    iget-object v4, p0, Lcom/sprint/smps/activities/EditAddress$3;->this$0:Lcom/sprint/smps/activities/EditAddress;

    iget-object v0, p0, Lcom/sprint/smps/activities/EditAddress$3;->this$0:Lcom/sprint/smps/activities/EditAddress;

    invoke-virtual {v0, v5}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #calls: Lcom/sprint/smps/activities/EditAddress;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    invoke-static {v1, v2, v3, v4, v0}, Lcom/sprint/smps/activities/EditAddress;->access$3(Lcom/sprint/smps/activities/EditAddress;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V

    .line 240
    :goto_1e
    return-void

    .line 239
    :cond_1f
    iget-object v1, p0, Lcom/sprint/smps/activities/EditAddress$3;->this$0:Lcom/sprint/smps/activities/EditAddress;

    const-string v2, "Change"

    const-string v3, "Unable to change address."

    iget-object v4, p0, Lcom/sprint/smps/activities/EditAddress$3;->this$0:Lcom/sprint/smps/activities/EditAddress;

    iget-object v0, p0, Lcom/sprint/smps/activities/EditAddress$3;->this$0:Lcom/sprint/smps/activities/EditAddress;

    invoke-virtual {v0, v5}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #calls: Lcom/sprint/smps/activities/EditAddress;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    invoke-static {v1, v2, v3, v4, v0}, Lcom/sprint/smps/activities/EditAddress;->access$3(Lcom/sprint/smps/activities/EditAddress;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V

    goto :goto_1e
.end method
