.class Lcom/sprint/smps/activities/AddAddress$3;
.super Ljava/lang/Object;
.source "AddAddress.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/AddAddress;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/AddAddress;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/AddAddress;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/AddAddress$3;->this$0:Lcom/sprint/smps/activities/AddAddress;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 8
    .parameter "dialogInterface"

    .prologue
    const v5, 0x7f080001

    .line 210
    iget-object v0, p0, Lcom/sprint/smps/activities/AddAddress$3;->this$0:Lcom/sprint/smps/activities/AddAddress;

    #getter for: Lcom/sprint/smps/activities/AddAddress;->successful:Z
    invoke-static {v0}, Lcom/sprint/smps/activities/AddAddress;->access$2(Lcom/sprint/smps/activities/AddAddress;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 212
    iget-object v1, p0, Lcom/sprint/smps/activities/AddAddress$3;->this$0:Lcom/sprint/smps/activities/AddAddress;

    const-string v2, "Add"

    const-string v3, "Address successfully added."

    iget-object v4, p0, Lcom/sprint/smps/activities/AddAddress$3;->this$0:Lcom/sprint/smps/activities/AddAddress;

    iget-object v0, p0, Lcom/sprint/smps/activities/AddAddress$3;->this$0:Lcom/sprint/smps/activities/AddAddress;

    invoke-virtual {v0, v5}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #calls: Lcom/sprint/smps/activities/AddAddress;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    invoke-static {v1, v2, v3, v4, v0}, Lcom/sprint/smps/activities/AddAddress;->access$3(Lcom/sprint/smps/activities/AddAddress;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V

    .line 216
    :goto_1e
    return-void

    .line 215
    :cond_1f
    iget-object v1, p0, Lcom/sprint/smps/activities/AddAddress$3;->this$0:Lcom/sprint/smps/activities/AddAddress;

    const-string v2, "Add"

    const-string v3, "Unable to add address."

    iget-object v4, p0, Lcom/sprint/smps/activities/AddAddress$3;->this$0:Lcom/sprint/smps/activities/AddAddress;

    iget-object v0, p0, Lcom/sprint/smps/activities/AddAddress$3;->this$0:Lcom/sprint/smps/activities/AddAddress;

    invoke-virtual {v0, v5}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #calls: Lcom/sprint/smps/activities/AddAddress;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    invoke-static {v1, v2, v3, v4, v0}, Lcom/sprint/smps/activities/AddAddress;->access$3(Lcom/sprint/smps/activities/AddAddress;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V

    goto :goto_1e
.end method
