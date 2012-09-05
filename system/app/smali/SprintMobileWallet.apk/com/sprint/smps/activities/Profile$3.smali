.class Lcom/sprint/smps/activities/Profile$3;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/Profile;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/Profile;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/Profile;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/Profile$3;->this$0:Lcom/sprint/smps/activities/Profile;

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 8
    .parameter "dialogInterface"

    .prologue
    const v5, 0x7f080001

    .line 334
    iget-object v0, p0, Lcom/sprint/smps/activities/Profile$3;->this$0:Lcom/sprint/smps/activities/Profile;

    #getter for: Lcom/sprint/smps/activities/Profile;->successful:Z
    invoke-static {v0}, Lcom/sprint/smps/activities/Profile;->access$6(Lcom/sprint/smps/activities/Profile;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 336
    iget-object v1, p0, Lcom/sprint/smps/activities/Profile$3;->this$0:Lcom/sprint/smps/activities/Profile;

    const-string v2, "Profile"

    const-string v3, "Profile was successfully updated."

    iget-object v4, p0, Lcom/sprint/smps/activities/Profile$3;->this$0:Lcom/sprint/smps/activities/Profile;

    iget-object v0, p0, Lcom/sprint/smps/activities/Profile$3;->this$0:Lcom/sprint/smps/activities/Profile;

    invoke-virtual {v0, v5}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #calls: Lcom/sprint/smps/activities/Profile;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    invoke-static {v1, v2, v3, v4, v0}, Lcom/sprint/smps/activities/Profile;->access$7(Lcom/sprint/smps/activities/Profile;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V

    .line 340
    :goto_1e
    return-void

    .line 339
    :cond_1f
    iget-object v1, p0, Lcom/sprint/smps/activities/Profile$3;->this$0:Lcom/sprint/smps/activities/Profile;

    const-string v2, "Profile"

    const-string v3, "Unable to update your profile."

    iget-object v4, p0, Lcom/sprint/smps/activities/Profile$3;->this$0:Lcom/sprint/smps/activities/Profile;

    iget-object v0, p0, Lcom/sprint/smps/activities/Profile$3;->this$0:Lcom/sprint/smps/activities/Profile;

    invoke-virtual {v0, v5}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #calls: Lcom/sprint/smps/activities/Profile;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    invoke-static {v1, v2, v3, v4, v0}, Lcom/sprint/smps/activities/Profile;->access$7(Lcom/sprint/smps/activities/Profile;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V

    goto :goto_1e
.end method
