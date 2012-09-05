.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$7;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$7;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    .line 1607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v7, 0xa004

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1609
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1610
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$7;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$13(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 1611
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$7;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$36(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 1613
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$7;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawMask(Z)V

    .line 1614
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$7;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->endAnim()V

    .line 1616
    packed-switch p2, :pswitch_data_78

    .line 1641
    :goto_27
    return-void

    .line 1618
    :pswitch_28
    const/4 v4, 0x0

    .line 1629
    .local v4, type:I
    :goto_29
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$7;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$19(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setMainFlag(Z)V

    .line 1630
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$7;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$7;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$7;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$19(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$7;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$16(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$7;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->submenulistener:Landroid/view/View$OnClickListener;

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/WorkSpace;-><init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;ILandroid/view/View$OnClickListener;)V

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v6, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$29(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Lcom/sec/android/mimage/photoretouching/WorkSpace;)V

    .line 1631
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$7;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bSubMenu:Z

    if-eqz v0, :cond_74

    .line 1632
    sput v7, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusSub:I

    .line 1637
    :goto_56
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$7;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$7;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$18(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->getViewGroup()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->setContentView(Landroid/view/View;)V

    .line 1639
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$7;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const v1, 0xa002

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$28(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    goto :goto_27

    .line 1620
    .end local v4           #type:I
    :pswitch_6e
    const/4 v4, 0x1

    .restart local v4       #type:I
    goto :goto_29

    .line 1622
    .end local v4           #type:I
    :pswitch_70
    const/4 v4, 0x2

    .restart local v4       #type:I
    goto :goto_29

    .line 1624
    .end local v4           #type:I
    :pswitch_72
    const/4 v4, 0x3

    .restart local v4       #type:I
    goto :goto_29

    .line 1634
    :cond_74
    sput v7, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusMain:I

    goto :goto_56

    .line 1616
    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_28
        :pswitch_6e
        :pswitch_70
        :pswitch_72
    .end packed-switch
.end method
