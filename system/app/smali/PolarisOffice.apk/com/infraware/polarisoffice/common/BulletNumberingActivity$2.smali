.class Lcom/infraware/polarisoffice/common/BulletNumberingActivity$2;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$2;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 253
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$2;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #setter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mMode:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$3(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;I)V

    .line 254
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$2;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet0:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$4(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 255
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$2;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$5(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 256
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$2;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$6(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 257
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$2;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$7(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 258
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$2;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet4:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$8(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 259
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$2;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet5:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$9(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_a4

    .line 294
    :goto_44
    :pswitch_44
    return-void

    .line 264
    :pswitch_45
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$2;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet0:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$4(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 265
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$2;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    const/4 v1, -0x1

    #setter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mCurBullet:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$10(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;I)V

    goto :goto_44

    .line 269
    :pswitch_55
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$2;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$5(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 270
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$2;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #setter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mCurBullet:I
    invoke-static {v0, v2}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$10(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;I)V

    goto :goto_44

    .line 274
    :pswitch_64
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$2;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$6(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 275
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$2;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    const/4 v1, 0x2

    #setter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mCurBullet:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$10(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;I)V

    goto :goto_44

    .line 279
    :pswitch_74
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$2;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$7(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 280
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$2;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    const/4 v1, 0x3

    #setter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mCurBullet:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$10(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;I)V

    goto :goto_44

    .line 284
    :pswitch_84
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$2;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet4:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$8(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 285
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$2;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    const/4 v1, 0x4

    #setter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mCurBullet:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$10(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;I)V

    goto :goto_44

    .line 289
    :pswitch_94
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$2;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    #getter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet5:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$9(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 290
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$2;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    const/4 v1, 0x5

    #setter for: Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mCurBullet:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->access$10(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;I)V

    goto :goto_44

    .line 261
    :pswitch_data_a4
    .packed-switch 0x7f0c004f
        :pswitch_45
        :pswitch_55
        :pswitch_64
        :pswitch_44
        :pswitch_74
        :pswitch_84
        :pswitch_94
    .end packed-switch
.end method
