.class Lcom/infraware/polarisoffice/common/BulletNumberingActivity$1;
.super Ljava/lang/Object;
.source "BulletNumberingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/common/BulletNumberingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$1;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_5e

    .line 204
    :goto_7
    return-void

    .line 188
    :pswitch_8
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 189
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "id_bulletnumbering_mode"

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$1;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mMode:I
    invoke-static {v3}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$0(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$1;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mMode:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$0(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)I

    move-result v2

    if-nez v2, :cond_4b

    .line 191
    const-string v2, "id_current_bulletnumbertype"

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$1;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mCurBullet:I
    invoke-static {v3}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$1(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    :goto_2b
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$1;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    const v3, 0x7f0c005f

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 196
    .local v0, box:Landroid/widget/CheckBox;
    const-string v2, "id_restart_numbering"

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 197
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$1;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->setResult(ILandroid/content/Intent;)V

    .line 198
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$1;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->finish()V

    goto :goto_7

    .line 193
    .end local v0           #box:Landroid/widget/CheckBox;
    :cond_4b
    const-string v2, "id_current_bulletnumbertype"

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$1;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mCurNumbering:I
    invoke-static {v3}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$2(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2b

    .line 201
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_57
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$1;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->finish()V

    goto :goto_7

    .line 185
    nop

    :pswitch_data_5e
    .packed-switch 0x7f0c0060
        :pswitch_8
        :pswitch_57
    .end packed-switch
.end method
