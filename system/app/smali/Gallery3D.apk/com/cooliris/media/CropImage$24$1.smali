.class Lcom/cooliris/media/CropImage$24$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/CropImage$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cooliris/media/CropImage$24;


# direct methods
.method constructor <init>(Lcom/cooliris/media/CropImage$24;)V
    .registers 2
    .parameter

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/cooliris/media/CropImage$24$1;->this$1:Lcom/cooliris/media/CropImage$24;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1364
    iget-object v2, p0, Lcom/cooliris/media/CropImage$24$1;->this$1:Lcom/cooliris/media/CropImage$24;

    iget-object v5, v2, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    iget-object v2, p0, Lcom/cooliris/media/CropImage$24$1;->this$1:Lcom/cooliris/media/CropImage$24;

    iget v2, v2, Lcom/cooliris/media/CropImage$24;->mNumFaces:I

    if-le v2, v3, :cond_2a

    move v2, v3

    :goto_d
    iput-boolean v2, v5, Lcom/cooliris/media/CropImage;->mWaitingToPick:Z

    .line 1365
    iget-object v2, p0, Lcom/cooliris/media/CropImage$24$1;->this$1:Lcom/cooliris/media/CropImage$24;

    iget v2, v2, Lcom/cooliris/media/CropImage$24;->mNumFaces:I

    if-lez v2, :cond_2c

    .line 1366
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    iget-object v2, p0, Lcom/cooliris/media/CropImage$24$1;->this$1:Lcom/cooliris/media/CropImage$24;

    iget v2, v2, Lcom/cooliris/media/CropImage$24;->mNumFaces:I

    if-ge v0, v2, :cond_31

    .line 1367
    iget-object v2, p0, Lcom/cooliris/media/CropImage$24$1;->this$1:Lcom/cooliris/media/CropImage$24;

    iget-object v5, p0, Lcom/cooliris/media/CropImage$24$1;->this$1:Lcom/cooliris/media/CropImage$24;

    iget-object v5, v5, Lcom/cooliris/media/CropImage$24;->mFaces:[Landroid/media/FaceDetector$Face;

    aget-object v5, v5, v0

    #calls: Lcom/cooliris/media/CropImage$24;->handleFace(Landroid/media/FaceDetector$Face;)V
    invoke-static {v2, v5}, Lcom/cooliris/media/CropImage$24;->access$2700(Lcom/cooliris/media/CropImage$24;Landroid/media/FaceDetector$Face;)V

    .line 1366
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .end local v0           #i:I
    :cond_2a
    move v2, v4

    .line 1364
    goto :goto_d

    .line 1370
    :cond_2c
    iget-object v2, p0, Lcom/cooliris/media/CropImage$24$1;->this$1:Lcom/cooliris/media/CropImage$24;

    #calls: Lcom/cooliris/media/CropImage$24;->makeDefault()V
    invoke-static {v2}, Lcom/cooliris/media/CropImage$24;->access$2800(Lcom/cooliris/media/CropImage$24;)V

    .line 1372
    :cond_31
    iget-object v2, p0, Lcom/cooliris/media/CropImage$24$1;->this$1:Lcom/cooliris/media/CropImage$24;

    iget-object v2, v2, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;
    invoke-static {v2}, Lcom/cooliris/media/CropImage;->access$1300(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/CropImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cooliris/media/CropImageView;->invalidate()V

    .line 1373
    iget-object v2, p0, Lcom/cooliris/media/CropImage$24$1;->this$1:Lcom/cooliris/media/CropImage$24;

    iget-object v2, v2, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;
    invoke-static {v2}, Lcom/cooliris/media/CropImage;->access$1300(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/CropImageView;

    move-result-object v2

    iget-object v2, v2, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_6b

    .line 1374
    iget-object v2, p0, Lcom/cooliris/media/CropImage$24$1;->this$1:Lcom/cooliris/media/CropImage$24;

    iget-object v5, v2, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    iget-object v2, p0, Lcom/cooliris/media/CropImage$24$1;->this$1:Lcom/cooliris/media/CropImage$24;

    iget-object v2, v2, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;
    invoke-static {v2}, Lcom/cooliris/media/CropImage;->access$1300(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/CropImageView;

    move-result-object v2

    iget-object v2, v2, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/HighlightView;

    iput-object v2, v5, Lcom/cooliris/media/CropImage;->mCrop:Lcom/cooliris/media/HighlightView;

    .line 1375
    iget-object v2, p0, Lcom/cooliris/media/CropImage$24$1;->this$1:Lcom/cooliris/media/CropImage$24;

    iget-object v2, v2, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    iget-object v2, v2, Lcom/cooliris/media/CropImage;->mCrop:Lcom/cooliris/media/HighlightView;

    invoke-virtual {v2, v3}, Lcom/cooliris/media/HighlightView;->setFocus(Z)V

    .line 1378
    :cond_6b
    iget-object v2, p0, Lcom/cooliris/media/CropImage$24$1;->this$1:Lcom/cooliris/media/CropImage$24;

    iget v2, v2, Lcom/cooliris/media/CropImage$24;->mNumFaces:I

    if-le v2, v3, :cond_81

    .line 1381
    iget-object v2, p0, Lcom/cooliris/media/CropImage$24$1;->this$1:Lcom/cooliris/media/CropImage$24;

    iget-object v2, v2, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    sget-object v3, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v3, 0x7f06000f

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 1383
    .local v1, t:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1385
    .end local v1           #t:Landroid/widget/Toast;
    :cond_81
    return-void
.end method
