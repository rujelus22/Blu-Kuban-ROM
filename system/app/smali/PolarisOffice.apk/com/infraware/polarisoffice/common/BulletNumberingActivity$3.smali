.class Lcom/infraware/polarisoffice/common/BulletNumberingActivity$3;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$3;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 300
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$3;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #setter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mMode:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$3(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;I)V

    .line 301
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$3;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering0:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$11(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 302
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$3;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$12(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 303
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$3;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$13(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 304
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$3;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$14(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 305
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$3;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering4:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$15(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 306
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$3;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering5:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$16(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_a4

    .line 341
    :goto_44
    :pswitch_44
    return-void

    .line 311
    :pswitch_45
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$3;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering0:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$11(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 312
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$3;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    const/4 v1, -0x1

    #setter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mCurNumbering:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$17(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;I)V

    goto :goto_44

    .line 316
    :pswitch_55
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$3;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$12(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 317
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$3;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #setter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mCurNumbering:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$17(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;I)V

    goto :goto_44

    .line 321
    :pswitch_64
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$3;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$13(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 322
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$3;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    const/4 v1, 0x2

    #setter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mCurNumbering:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$17(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;I)V

    goto :goto_44

    .line 326
    :pswitch_74
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$3;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$14(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 327
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$3;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    const/4 v1, 0x3

    #setter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mCurNumbering:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$17(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;I)V

    goto :goto_44

    .line 331
    :pswitch_84
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$3;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering4:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$15(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 332
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$3;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    const/4 v1, 0x4

    #setter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mCurNumbering:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$17(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;I)V

    goto :goto_44

    .line 336
    :pswitch_94
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$3;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering5:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$16(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 337
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$3;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    const/4 v1, 0x5

    #setter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mCurNumbering:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$17(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;I)V

    goto :goto_44

    .line 308
    :pswitch_data_a4
    .packed-switch 0x7f0c0058
        :pswitch_45
        :pswitch_55
        :pswitch_64
        :pswitch_44
        :pswitch_74
        :pswitch_84
        :pswitch_94
    .end packed-switch
.end method
