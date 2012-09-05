.class Lcom/android/browser/PrintSec$SaveImageThread;
.super Ljava/lang/Thread;
.source "PrintSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/PrintSec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveImageThread"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mHandler:Landroid/os/Handler;

.field mPageHeight:I

.field mPicture:Landroid/graphics/Picture;

.field mScale:F

.field mState:I

.field mTotalHeight:I

.field final synthetic this$0:Lcom/android/browser/PrintSec;


# direct methods
.method constructor <init>(Lcom/android/browser/PrintSec;Landroid/os/Handler;)V
    .registers 5
    .parameter
    .parameter "h"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 301
    iput-object p1, p0, Lcom/android/browser/PrintSec$SaveImageThread;->this$0:Lcom/android/browser/PrintSec;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 295
    iput-object v1, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mPicture:Landroid/graphics/Picture;

    .line 296
    iput-object v1, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mBitmap:Landroid/graphics/Bitmap;

    .line 297
    iput v0, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mTotalHeight:I

    .line 298
    iput v0, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mPageHeight:I

    .line 299
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mScale:F

    .line 302
    iput-object p2, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mHandler:Landroid/os/Handler;

    .line 303
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 314
    const-string v5, "PrintSec"

    const-string v6, "start run"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mState:I

    .line 318
    iget-object v5, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mPicture:Landroid/graphics/Picture;

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_16

    iget v5, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mPageHeight:I

    if-nez v5, :cond_54

    .line 319
    :cond_16
    const-string v5, "PrintSec"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "run : data is not set - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mPageHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v5, p0, Lcom/android/browser/PrintSec$SaveImageThread;->this$0:Lcom/android/browser/PrintSec;

    #getter for: Lcom/android/browser/PrintSec;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/browser/PrintSec;->access$100(Lcom/android/browser/PrintSec;)Landroid/app/Activity;

    move-result-object v5

    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/app/Activity;->removeDialog(I)V

    .line 361
    :cond_53
    :goto_53
    return-void

    .line 325
    :cond_54
    iget v5, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mTotalHeight:I

    iget v6, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mPageHeight:I

    div-int v4, v5, v6

    .line 326
    .local v4, pageCount:I
    iget v5, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mTotalHeight:I

    iget v6, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mPageHeight:I

    rem-int/2addr v5, v6

    if-lez v5, :cond_63

    .line 327
    add-int/lit8 v4, v4, 0x1

    .line 330
    :cond_63
    const-string v5, "PrintSec"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rurn : pageCount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mTotalHeight "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mTotalHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mPageHeight "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mPageHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mScale "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mScale:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v1, 0x1

    .line 334
    .local v1, curPage:I
    const/4 v3, 0x0

    .line 335
    .local v3, offsetY:I
    :goto_a1
    iget v5, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mTotalHeight:I

    if-ge v3, v5, :cond_53

    .line 336
    const-string v5, "PrintSec"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Saving files : curPage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", offsetY "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 339
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 340
    const/4 v5, 0x0

    neg-int v6, v3

    int-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 341
    const/high16 v5, 0x3f80

    iget v6, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mScale:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_e7

    .line 342
    iget v5, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mScale:F

    iget v6, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mScale:F

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 345
    :cond_e7
    iget-object v5, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v5, v0}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 346
    const/4 v0, 0x0

    .line 348
    iget-object v5, p0, Lcom/android/browser/PrintSec$SaveImageThread;->this$0:Lcom/android/browser/PrintSec;

    iget-object v6, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mBitmap:Landroid/graphics/Bitmap;

    #calls: Lcom/android/browser/PrintSec;->savePrintFile(Landroid/graphics/Bitmap;)V
    invoke-static {v5, v6}, Lcom/android/browser/PrintSec;->access$400(Lcom/android/browser/PrintSec;Landroid/graphics/Bitmap;)V

    .line 351
    iget-object v5, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 352
    .local v2, msg:Landroid/os/Message;
    int-to-float v5, v1

    int-to-float v6, v4

    div-float/2addr v5, v6

    const/high16 v6, 0x42c8

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 353
    iget-object v5, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 356
    const/4 v5, 0x2

    iget v6, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mState:I

    if-eq v5, v6, :cond_112

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mState:I

    if-ne v5, v6, :cond_11b

    .line 357
    :cond_112
    const-string v5, "PrintSec"

    const-string v6, "Printing is done or cancelled by user"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_53

    .line 335
    :cond_11b
    iget v5, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mPageHeight:I

    add-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_a1
.end method

.method setData(Landroid/graphics/Picture;Landroid/graphics/Bitmap;IIF)V
    .registers 6
    .parameter "picture"
    .parameter "bitmap"
    .parameter "totalHeight"
    .parameter "pageHeight"
    .parameter "scale"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mPicture:Landroid/graphics/Picture;

    .line 307
    iput-object p2, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mBitmap:Landroid/graphics/Bitmap;

    .line 308
    iput p3, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mTotalHeight:I

    .line 309
    iput p4, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mPageHeight:I

    .line 310
    iput p5, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mScale:F

    .line 311
    return-void
.end method

.method public setState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 366
    iput p1, p0, Lcom/android/browser/PrintSec$SaveImageThread;->mState:I

    .line 367
    return-void
.end method
