.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;
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
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    .line 1892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1894
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->hasSelection()Z

    move-result v0

    .line 1896
    .local v0, flag:Z
    packed-switch p2, :pswitch_data_16c

    .line 1958
    :cond_e
    :goto_e
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->inst:Landroid/app/Instrumentation;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$15(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    .line 1961
    return-void

    .line 1898
    :pswitch_18
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1899
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$13(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 1900
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowDialog:[Z
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$37(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)[Z

    move-result-object v1

    aget-boolean v1, v1, v4

    if-nez v1, :cond_3e

    .line 1902
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I
    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$36(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 1903
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowTemp:Z
    invoke-static {v1, v4}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$38(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Z)V

    .line 1904
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const v2, 0xc002

    const-string v3, "new_selection"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILjava/lang/String;)Landroid/app/Dialog;

    .line 1906
    :cond_3e
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$16(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getBuff()[B

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$16(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$16(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getHeight()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->reset_objectsel([BII)V

    .line 1907
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->invalidate()V

    .line 1908
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_move:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$1(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1909
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_adddel:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$5(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1910
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$41(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/Brush;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->setActionType(I)V

    .line 1911
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #calls: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->changeSelModeBtn(I)V
    invoke-static {v1, v6}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$42(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    goto :goto_e

    .line 1914
    :pswitch_89
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1915
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$13(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 1916
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_move:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$1(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1917
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_adddel:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$5(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1918
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$41(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/Brush;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->setActionType(I)V

    .line 1919
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #calls: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->changeSelModeBtn(I)V
    invoke-static {v1, v6}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$42(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    goto/16 :goto_e

    .line 1922
    :pswitch_b3
    if-eqz v0, :cond_e

    .line 1923
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1924
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$13(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 1925
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_move:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$1(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1926
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_adddel:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$5(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1927
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$41(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/Brush;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->setActionType(I)V

    .line 1928
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #calls: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->changeSelModeBtn(I)V
    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$42(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    goto/16 :goto_e

    .line 1932
    :pswitch_df
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1933
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$13(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 1934
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mStackModeButtonAction:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$43(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 1935
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mStackModeButtonAction:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$43(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_e

    .line 1938
    :pswitch_fa
    if-eqz v0, :cond_e

    .line 1939
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1940
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$13(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 1941
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$16(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getBuff()[B

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$16(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$16(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getHeight()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->reset_objectsel([BII)V

    .line 1942
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->invalidate()V

    .line 1943
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getScale()F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_147

    .line 1944
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_move:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$1(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1946
    :cond_147
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_adddel:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$5(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1947
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$41(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/Brush;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->setActionType(I)V

    .line 1948
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #calls: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->changeSelModeBtn(I)V
    invoke-static {v1, v4}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$42(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    goto/16 :goto_e

    .line 1953
    :pswitch_160
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$41(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/Brush;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->changeMode()V

    goto/16 :goto_e

    .line 1896
    nop

    :pswitch_data_16c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_89
        :pswitch_b3
        :pswitch_df
        :pswitch_fa
        :pswitch_160
    .end packed-switch
.end method
