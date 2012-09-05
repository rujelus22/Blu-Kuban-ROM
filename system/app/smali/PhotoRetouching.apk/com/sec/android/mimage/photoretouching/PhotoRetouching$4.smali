.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
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
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    .line 2035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;)Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
    .registers 2
    .parameter

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "arg0"

    .prologue
    const/4 v7, 0x0

    const/16 v3, 0xd

    const v6, 0xa001

    const/4 v5, 0x1

    .line 2037
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$18(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->isClickOK()Z

    move-result v2

    if-eqz v2, :cond_165

    .line 2039
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$18(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    if-ne v2, v3, :cond_95

    .line 2040
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$16(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getBuff()[B

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$16(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$16(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getHeight()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->reset_objectsel([BII)V

    .line 2055
    :cond_3e
    :goto_3e
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4$1;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4$1;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2091
    .local v1, worker:Ljava/lang/Thread;
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->GetExternalStorageMount()Z

    move-result v2

    if-eqz v2, :cond_13d

    .line 2093
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const v3, 0x7f060036

    #calls: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V
    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$27(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 2094
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawMask(Z)V

    .line 2095
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$19(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setMainFlag(Z)V

    .line 2097
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startView()V

    .line 2098
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I
    invoke-static {v2, v6}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$28(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 2099
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iget-boolean v2, v2, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bSubMenu:Z

    if-eqz v2, :cond_139

    .line 2100
    sput v6, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusSub:I

    .line 2105
    :goto_7a
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iput-boolean v5, v2, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bEdit:Z

    .line 2107
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$18(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v2

    if-eqz v2, :cond_8f

    .line 2108
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$18(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->clear()V

    .line 2109
    :cond_8f
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v2, v7}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$29(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Lcom/sec/android/mimage/photoretouching/WorkSpace;)V

    .line 2147
    .end local v1           #worker:Ljava/lang/Thread;
    :goto_94
    return-void

    .line 2042
    :cond_95
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$18(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_ed

    .line 2044
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$18(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->Rotate()Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 2045
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$16(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$19(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$19(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->SetWidthHeight(II)Z

    .line 2047
    :cond_ca
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$16(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getBuff()[B

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$16(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$16(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getHeight()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->reset_objectsel([BII)V

    goto/16 :goto_3e

    .line 2049
    :cond_ed
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$18(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_3e

    .line 2051
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$16(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$19(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$19(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->SetWidthHeight(II)Z

    .line 2052
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$16(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getBuff()[B

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$16(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$16(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getHeight()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->reset_objectsel([BII)V

    goto/16 :goto_3e

    .line 2102
    .restart local v1       #worker:Ljava/lang/Thread;
    :cond_139
    sput v6, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusMain:I

    goto/16 :goto_7a

    .line 2113
    :cond_13d
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const v3, 0xa003

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I
    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$28(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 2115
    invoke-virtual {v1, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 2116
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2117
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2118
    .local v0, msg2:Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2120
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iput-boolean v5, v2, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bEdit:Z

    goto/16 :goto_94

    .line 2124
    .end local v0           #msg2:Landroid/os/Message;
    .end local v1           #worker:Ljava/lang/Thread;
    :cond_165
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$18(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    if-ne v2, v3, :cond_178

    .line 2125
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$18(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->ApplyCancel()V

    .line 2128
    :cond_178
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawMask(Z)V

    .line 2129
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$19(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setMainFlag(Z)V

    .line 2131
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startView()V

    .line 2132
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I
    invoke-static {v2, v6}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$28(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 2134
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iget-boolean v2, v2, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bSubMenu:Z

    if-eqz v2, :cond_1b9

    .line 2135
    sput v6, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusSub:I

    .line 2140
    :goto_19c
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$18(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v2

    if-eqz v2, :cond_1ad

    .line 2141
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$18(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->clear()V

    .line 2142
    :cond_1ad
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v2, v7}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$29(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Lcom/sec/android/mimage/photoretouching/WorkSpace;)V

    .line 2144
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v2, v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->SetEnableButton(Z)V

    goto/16 :goto_94

    .line 2137
    :cond_1b9
    sput v6, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusMain:I

    goto :goto_19c
.end method
