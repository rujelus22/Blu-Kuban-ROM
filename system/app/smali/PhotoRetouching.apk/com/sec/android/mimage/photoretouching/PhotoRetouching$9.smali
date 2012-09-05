.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;
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
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    .line 1763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 22
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1765
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1766
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v2, -0x1

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$13(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 1767
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v2, -0x1

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$36(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 1769
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$16(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getObjroi()Landroid/graphics/Rect;

    move-result-object v12

    .line 1770
    .local v12, objROI:Landroid/graphics/Rect;
    iget v1, v12, Landroid/graphics/Rect;->right:I

    iget v2, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    add-int/lit8 v14, v1, 0x1

    .line 1771
    .local v14, object_width:I
    iget v1, v12, Landroid/graphics/Rect;->bottom:I

    iget v2, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    add-int/lit8 v13, v1, 0x1

    .line 1774
    .local v13, object_height:I
    if-lez v14, :cond_31

    if-gtz v13, :cond_3c

    .line 1775
    :cond_31
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const v2, 0x7f060032

    #calls: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$27(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 1858
    :goto_3b
    return-void

    .line 1779
    :cond_3c
    const/4 v1, 0x3

    move/from16 v0, p2

    if-ne v0, v1, :cond_143

    .line 1781
    mul-int v1, v14, v13

    mul-int/lit8 v1, v1, 0x64

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$19(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$19(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v3

    mul-int/2addr v2, v3

    div-int v8, v1, v2

    .line 1784
    .local v8, area:I
    const/4 v11, 0x0

    .line 1787
    .local v11, numofpixel:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$16(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getBuff()[B

    move-result-object v17

    .line 1789
    .local v17, tmpmask:[B
    const/4 v10, 0x0

    .local v10, i:I
    :goto_6e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$19(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$19(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v2

    mul-int/2addr v1, v2

    if-lt v10, v1, :cond_12c

    .line 1795
    const/16 v17, 0x0

    check-cast v17, [B

    .line 1797
    mul-int/lit8 v1, v11, 0x64

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$19(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$19(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v3

    mul-int/2addr v2, v3

    div-int v11, v1, v2

    .line 1799
    const/16 v1, 0x14

    if-le v8, v1, :cond_143

    .line 1801
    const/16 v1, 0x14

    if-ge v11, v1, :cond_b4

    const/16 v11, 0x14

    .line 1802
    :cond_b4
    const/16 v1, 0x64

    if-le v11, v1, :cond_ba

    const/16 v11, 0x64

    .line 1804
    :cond_ba
    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Ljava/lang/Integer;-><init>(I)V

    .line 1805
    .local v16, tarea:Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const v3, 0x7f06002c

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1806
    .local v15, str:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const v3, 0x7f06002d

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1808
    .local v9, c:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$39(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_137

    .line 1809
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v3, 0x0

    invoke-static {v2, v9, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$40(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Landroid/widget/Toast;)V

    .line 1813
    :goto_11f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$39(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3b

    .line 1791
    .end local v9           #c:Ljava/lang/CharSequence;
    .end local v15           #str:Ljava/lang/String;
    .end local v16           #tarea:Ljava/lang/Integer;
    :cond_12c
    aget-byte v1, v17, v10

    const/4 v2, 0x1

    if-ne v1, v2, :cond_133

    .line 1792
    add-int/lit8 v11, v11, 0x1

    .line 1789
    :cond_133
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6e

    .line 1811
    .restart local v9       #c:Ljava/lang/CharSequence;
    .restart local v15       #str:Ljava/lang/String;
    .restart local v16       #tarea:Ljava/lang/Integer;
    :cond_137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$39(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11f

    .line 1820
    .end local v8           #area:I
    .end local v9           #c:Ljava/lang/CharSequence;
    .end local v10           #i:I
    .end local v11           #numofpixel:I
    .end local v15           #str:Ljava/lang/String;
    .end local v16           #tarea:Ljava/lang/Integer;
    .end local v17           #tmpmask:[B
    :cond_143
    packed-switch p2, :pswitch_data_21c

    goto/16 :goto_3b

    .line 1822
    :pswitch_148
    const/16 v5, 0xa

    .line 1833
    .local v5, type:I
    :goto_14a
    if-nez p2, :cond_189

    .line 1834
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowDialog:[Z
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$37(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)[Z

    move-result-object v1

    const/4 v2, 0x3

    aget-boolean v1, v1, v2

    if-nez v1, :cond_180

    .line 1836
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v2, 0x2

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$36(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 1837
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowTemp:Z
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$38(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Z)V

    .line 1838
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const v2, 0xc002

    const-string v3, "copy_to_another"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILjava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3b

    .line 1824
    .end local v5           #type:I
    :pswitch_177
    const/16 v5, 0xb

    .restart local v5       #type:I
    goto :goto_14a

    .line 1826
    .end local v5           #type:I
    :pswitch_17a
    const/16 v5, 0xc

    .restart local v5       #type:I
    goto :goto_14a

    .line 1828
    .end local v5           #type:I
    :pswitch_17d
    const/16 v5, 0xd

    .restart local v5       #type:I
    goto :goto_14a

    .line 1840
    :cond_180
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->openGalleryforCopy()V

    goto/16 :goto_3b

    .line 1843
    :cond_189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->endAnim()V

    .line 1844
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawMask(Z)V

    .line 1845
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->setImageInfo(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)V

    .line 1846
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$19(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setMainFlag(Z)V

    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    move-object/from16 v18, v0

    new-instance v1, Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$19(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$16(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->submenulistener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/mimage/photoretouching/WorkSpace;-><init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;ILandroid/view/View$OnClickListener;Landroid/os/Handler;)V

    move-object/from16 v0, v18

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$29(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Lcom/sec/android/mimage/photoretouching/WorkSpace;)V

    .line 1849
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iget-boolean v1, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bSubMenu:Z

    if-eqz v1, :cond_216

    .line 1850
    const v1, 0xa004

    sput v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusSub:I

    .line 1854
    :goto_1f7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$18(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->getViewGroup()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->setContentView(Landroid/view/View;)V

    .line 1855
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const v2, 0xa002

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$28(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    goto/16 :goto_3b

    .line 1852
    :cond_216
    const v1, 0xa004

    sput v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusMain:I

    goto :goto_1f7

    .line 1820
    :pswitch_data_21c
    .packed-switch 0x0
        :pswitch_148
        :pswitch_177
        :pswitch_17a
        :pswitch_17d
    .end packed-switch
.end method
