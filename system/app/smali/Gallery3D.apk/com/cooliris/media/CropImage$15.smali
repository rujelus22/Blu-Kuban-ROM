.class Lcom/cooliris/media/CropImage$15;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/CropImage;->initHomeScreenUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/CropImage;

.field final synthetic val$multiButton:Landroid/widget/Button;

.field final synthetic val$singleButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/cooliris/media/CropImage;Landroid/widget/Button;Landroid/widget/Button;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 687
    iput-object p1, p0, Lcom/cooliris/media/CropImage$15;->this$0:Lcom/cooliris/media/CropImage;

    iput-object p2, p0, Lcom/cooliris/media/CropImage$15;->val$singleButton:Landroid/widget/Button;

    iput-object p3, p0, Lcom/cooliris/media/CropImage$15;->val$multiButton:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 9
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 689
    if-eqz p2, :cond_a

    .line 690
    iget-object v1, p0, Lcom/cooliris/media/CropImage$15;->this$0:Lcom/cooliris/media/CropImage;

    iget-object v1, v1, Lcom/cooliris/media/CropImage;->mCrop:Lcom/cooliris/media/HighlightView;

    if-nez v1, :cond_b

    .line 711
    :cond_a
    :goto_a
    return-void

    .line 694
    :cond_b
    iget-object v1, p0, Lcom/cooliris/media/CropImage$15;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mIsMultiBtnSelected:Z
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$800(Lcom/cooliris/media/CropImage;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 695
    iget-object v1, p0, Lcom/cooliris/media/CropImage$15;->this$0:Lcom/cooliris/media/CropImage;

    sget v2, Lcom/cooliris/media/CropImage;->LCD_WIDTH:I

    #setter for: Lcom/cooliris/media/CropImage;->mAspectX:I
    invoke-static {v1, v2}, Lcom/cooliris/media/CropImage;->access$902(Lcom/cooliris/media/CropImage;I)I

    .line 696
    iget-object v1, p0, Lcom/cooliris/media/CropImage$15;->this$0:Lcom/cooliris/media/CropImage;

    sget v2, Lcom/cooliris/media/CropImage;->LCD_HEIGHT:I

    #setter for: Lcom/cooliris/media/CropImage;->mAspectY:I
    invoke-static {v1, v2}, Lcom/cooliris/media/CropImage;->access$1002(Lcom/cooliris/media/CropImage;I)I

    .line 697
    iget-object v1, p0, Lcom/cooliris/media/CropImage$15;->this$0:Lcom/cooliris/media/CropImage;

    sget v2, Lcom/cooliris/media/CropImage;->LCD_WIDTH:I

    #setter for: Lcom/cooliris/media/CropImage;->mOutputX:I
    invoke-static {v1, v2}, Lcom/cooliris/media/CropImage;->access$1102(Lcom/cooliris/media/CropImage;I)I

    .line 698
    iget-object v1, p0, Lcom/cooliris/media/CropImage$15;->this$0:Lcom/cooliris/media/CropImage;

    sget v2, Lcom/cooliris/media/CropImage;->LCD_HEIGHT:I

    #setter for: Lcom/cooliris/media/CropImage;->mOutputY:I
    invoke-static {v1, v2}, Lcom/cooliris/media/CropImage;->access$1202(Lcom/cooliris/media/CropImage;I)I

    .line 699
    iget-object v1, p0, Lcom/cooliris/media/CropImage$15;->this$0:Lcom/cooliris/media/CropImage;

    #calls: Lcom/cooliris/media/CropImage;->startFaceDetection()V
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$000(Lcom/cooliris/media/CropImage;)V

    .line 700
    const/4 v1, 0x2

    new-array v0, v1, [F

    iget-object v1, p0, Lcom/cooliris/media/CropImage$15;->this$0:Lcom/cooliris/media/CropImage;

    iget-object v1, v1, Lcom/cooliris/media/CropImage;->mCrop:Lcom/cooliris/media/HighlightView;

    iget-object v1, v1, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    aput v1, v0, v4

    iget-object v1, p0, Lcom/cooliris/media/CropImage$15;->this$0:Lcom/cooliris/media/CropImage;

    iget-object v1, v1, Lcom/cooliris/media/CropImage;->mCrop:Lcom/cooliris/media/HighlightView;

    iget-object v1, v1, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    aput v1, v0, v5

    .line 703
    .local v0, coordinates:[F
    iget-object v1, p0, Lcom/cooliris/media/CropImage$15;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$1300(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/CropImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cooliris/media/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 705
    iget-object v1, p0, Lcom/cooliris/media/CropImage$15;->this$0:Lcom/cooliris/media/CropImage;

    iget-object v2, p0, Lcom/cooliris/media/CropImage$15;->val$singleButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/cooliris/media/CropImage$15;->val$multiButton:Landroid/widget/Button;

    #calls: Lcom/cooliris/media/CropImage;->updateSingleBtnImgToSelected(Landroid/widget/Button;Landroid/widget/Button;)V
    invoke-static {v1, v2, v3}, Lcom/cooliris/media/CropImage;->access$1600(Lcom/cooliris/media/CropImage;Landroid/widget/Button;Landroid/widget/Button;)V

    .line 707
    iget-object v1, p0, Lcom/cooliris/media/CropImage$15;->this$0:Lcom/cooliris/media/CropImage;

    #setter for: Lcom/cooliris/media/CropImage;->mIsMultiBtnSelected:Z
    invoke-static {v1, v4}, Lcom/cooliris/media/CropImage;->access$802(Lcom/cooliris/media/CropImage;Z)Z

    .line 708
    iget-object v1, p0, Lcom/cooliris/media/CropImage$15;->this$0:Lcom/cooliris/media/CropImage;

    #setter for: Lcom/cooliris/media/CropImage;->mIsClick:Z
    invoke-static {v1, v5}, Lcom/cooliris/media/CropImage;->access$1502(Lcom/cooliris/media/CropImage;Z)Z

    goto :goto_a
.end method
