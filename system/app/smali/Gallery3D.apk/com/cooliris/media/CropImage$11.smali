.class Lcom/cooliris/media/CropImage$11;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 591
    iput-object p1, p0, Lcom/cooliris/media/CropImage$11;->this$0:Lcom/cooliris/media/CropImage;

    iput-object p2, p0, Lcom/cooliris/media/CropImage$11;->val$singleButton:Landroid/widget/Button;

    iput-object p3, p0, Lcom/cooliris/media/CropImage$11;->val$multiButton:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 593
    iget-object v1, p0, Lcom/cooliris/media/CropImage$11;->this$0:Lcom/cooliris/media/CropImage;

    iget-object v1, v1, Lcom/cooliris/media/CropImage;->mCrop:Lcom/cooliris/media/HighlightView;

    if-nez v1, :cond_8

    .line 616
    :cond_7
    :goto_7
    return-void

    .line 597
    :cond_8
    iget-object v1, p0, Lcom/cooliris/media/CropImage$11;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mIsMultiBtnSelected:Z
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$800(Lcom/cooliris/media/CropImage;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 598
    iget-object v1, p0, Lcom/cooliris/media/CropImage$11;->this$0:Lcom/cooliris/media/CropImage;

    sget v2, Lcom/cooliris/media/CropImage;->LCD_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    #setter for: Lcom/cooliris/media/CropImage;->mAspectX:I
    invoke-static {v1, v2}, Lcom/cooliris/media/CropImage;->access$902(Lcom/cooliris/media/CropImage;I)I

    .line 599
    iget-object v1, p0, Lcom/cooliris/media/CropImage$11;->this$0:Lcom/cooliris/media/CropImage;

    sget v2, Lcom/cooliris/media/CropImage;->LCD_HEIGHT:I

    #setter for: Lcom/cooliris/media/CropImage;->mAspectY:I
    invoke-static {v1, v2}, Lcom/cooliris/media/CropImage;->access$1002(Lcom/cooliris/media/CropImage;I)I

    .line 600
    iget-object v1, p0, Lcom/cooliris/media/CropImage$11;->this$0:Lcom/cooliris/media/CropImage;

    sget v2, Lcom/cooliris/media/CropImage;->LCD_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    #setter for: Lcom/cooliris/media/CropImage;->mOutputX:I
    invoke-static {v1, v2}, Lcom/cooliris/media/CropImage;->access$1102(Lcom/cooliris/media/CropImage;I)I

    .line 601
    iget-object v1, p0, Lcom/cooliris/media/CropImage$11;->this$0:Lcom/cooliris/media/CropImage;

    sget v2, Lcom/cooliris/media/CropImage;->LCD_HEIGHT:I

    #setter for: Lcom/cooliris/media/CropImage;->mOutputY:I
    invoke-static {v1, v2}, Lcom/cooliris/media/CropImage;->access$1202(Lcom/cooliris/media/CropImage;I)I

    .line 602
    iget-object v1, p0, Lcom/cooliris/media/CropImage$11;->this$0:Lcom/cooliris/media/CropImage;

    #calls: Lcom/cooliris/media/CropImage;->startFaceDetection()V
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$000(Lcom/cooliris/media/CropImage;)V

    .line 603
    const/4 v1, 0x2

    new-array v0, v1, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/cooliris/media/CropImage$11;->this$0:Lcom/cooliris/media/CropImage;

    iget-object v2, v2, Lcom/cooliris/media/CropImage;->mCrop:Lcom/cooliris/media/HighlightView;

    iget-object v2, v2, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    aput v2, v0, v1

    iget-object v1, p0, Lcom/cooliris/media/CropImage$11;->this$0:Lcom/cooliris/media/CropImage;

    iget-object v1, v1, Lcom/cooliris/media/CropImage;->mCrop:Lcom/cooliris/media/HighlightView;

    iget-object v1, v1, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    aput v1, v0, v4

    .line 606
    .local v0, coordinates:[F
    iget-object v1, p0, Lcom/cooliris/media/CropImage$11;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$1300(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/CropImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cooliris/media/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 611
    iget-object v1, p0, Lcom/cooliris/media/CropImage$11;->this$0:Lcom/cooliris/media/CropImage;

    iget-object v2, p0, Lcom/cooliris/media/CropImage$11;->val$singleButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/cooliris/media/CropImage$11;->val$multiButton:Landroid/widget/Button;

    #calls: Lcom/cooliris/media/CropImage;->updateMultiBtnImgToSelected(Landroid/widget/Button;Landroid/widget/Button;)V
    invoke-static {v1, v2, v3}, Lcom/cooliris/media/CropImage;->access$1400(Lcom/cooliris/media/CropImage;Landroid/widget/Button;Landroid/widget/Button;)V

    .line 613
    iget-object v1, p0, Lcom/cooliris/media/CropImage$11;->this$0:Lcom/cooliris/media/CropImage;

    #setter for: Lcom/cooliris/media/CropImage;->mIsMultiBtnSelected:Z
    invoke-static {v1, v4}, Lcom/cooliris/media/CropImage;->access$802(Lcom/cooliris/media/CropImage;Z)Z

    .line 614
    iget-object v1, p0, Lcom/cooliris/media/CropImage$11;->this$0:Lcom/cooliris/media/CropImage;

    #setter for: Lcom/cooliris/media/CropImage;->mIsClick:Z
    invoke-static {v1, v4}, Lcom/cooliris/media/CropImage;->access$1502(Lcom/cooliris/media/CropImage;Z)Z

    goto :goto_7
.end method
