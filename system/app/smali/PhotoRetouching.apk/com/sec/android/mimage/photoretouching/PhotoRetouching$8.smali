.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;
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
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    .line 1668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 14
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v5, 0xc002

    const v10, 0xa004

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1670
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1671
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$13(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 1672
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$36(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 1674
    const/4 v0, 0x3

    if-le p2, v0, :cond_3e

    .line 1675
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$16(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getObjroi()Landroid/graphics/Rect;

    move-result-object v6

    .line 1676
    .local v6, objROI:Landroid/graphics/Rect;
    iget v0, v6, Landroid/graphics/Rect;->right:I

    iget v1, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    add-int/lit8 v8, v0, 0x1

    .line 1677
    .local v8, object_width:I
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    iget v1, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    add-int/lit8 v7, v0, 0x1

    .line 1680
    .local v7, object_height:I
    if-lez v8, :cond_35

    if-gtz v7, :cond_3e

    .line 1681
    :cond_35
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const v1, 0x7f060032

    #calls: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$27(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 1736
    .end local v6           #objROI:Landroid/graphics/Rect;
    .end local v7           #object_height:I
    .end local v8           #object_width:I
    :goto_3d
    return-void

    .line 1688
    :cond_3e
    packed-switch p2, :pswitch_data_ea

    goto :goto_3d

    .line 1690
    :pswitch_42
    const/4 v4, 0x4

    .line 1705
    .local v4, type:I
    :goto_43
    const/4 v0, 0x4

    if-ne p2, v0, :cond_6e

    .line 1706
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowDialog:[Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$37(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)[Z

    move-result-object v0

    aget-boolean v0, v0, v3

    if-nez v0, :cond_8e

    .line 1708
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$36(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 1709
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowTemp:Z
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$38(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Z)V

    .line 1710
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const-string v1, "ghost_effect"

    invoke-virtual {v0, v5, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILjava/lang/String;)Landroid/app/Dialog;

    goto :goto_3d

    .line 1692
    .end local v4           #type:I
    :pswitch_62
    const/4 v4, 0x5

    .restart local v4       #type:I
    goto :goto_43

    .line 1694
    .end local v4           #type:I
    :pswitch_64
    const/4 v4, 0x6

    .restart local v4       #type:I
    goto :goto_43

    .line 1696
    .end local v4           #type:I
    :pswitch_66
    const/4 v4, 0x7

    .restart local v4       #type:I
    goto :goto_43

    .line 1698
    .end local v4           #type:I
    :pswitch_68
    const/16 v4, 0x8

    .restart local v4       #type:I
    goto :goto_43

    .line 1700
    .end local v4           #type:I
    :pswitch_6b
    const/16 v4, 0x9

    .restart local v4       #type:I
    goto :goto_43

    .line 1713
    :cond_6e
    const/4 v0, 0x5

    if-ne p2, v0, :cond_8e

    .line 1714
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowDialog:[Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$37(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-nez v0, :cond_8e

    .line 1716
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I
    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$36(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 1717
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowTemp:Z
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$38(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Z)V

    .line 1718
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const-string v1, "speedline_effect"

    invoke-virtual {v0, v5, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILjava/lang/String;)Landroid/app/Dialog;

    goto :goto_3d

    .line 1722
    :cond_8e
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->endAnim()V

    .line 1723
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawMask(Z)V

    .line 1724
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$19(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setMainFlag(Z)V

    .line 1726
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$19(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$16(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->submenulistener:Landroid/view/View$OnClickListener;

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/WorkSpace;-><init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;ILandroid/view/View$OnClickListener;)V

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v9, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$29(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Lcom/sec/android/mimage/photoretouching/WorkSpace;)V

    .line 1727
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bSubMenu:Z

    if-eqz v0, :cond_e6

    .line 1728
    sput v10, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusSub:I

    .line 1732
    :goto_cd
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$18(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->getViewGroup()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->setContentView(Landroid/view/View;)V

    .line 1733
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const v1, 0xa002

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$28(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    goto/16 :goto_3d

    .line 1730
    :cond_e6
    sput v10, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusMain:I

    goto :goto_cd

    .line 1688
    nop

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_42
        :pswitch_62
        :pswitch_64
        :pswitch_66
        :pswitch_68
        :pswitch_6b
    .end packed-switch
.end method
