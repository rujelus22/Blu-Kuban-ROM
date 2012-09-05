.class public Lcom/google/android/opengl/carousel/CarouselViewHelper;
.super Ljava/lang/Object;
.source "CarouselViewHelper.java"

# interfaces
.implements Lcom/google/android/opengl/carousel/CarouselCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/opengl/carousel/CarouselViewHelper$SyncHandler;,
        Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;,
        Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;,
        Lcom/google/android/opengl/carousel/CarouselViewHelper$TextureParameters;
    }
.end annotation


# static fields
.field public static final sNoOpRecycler:Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;

.field public static final sSimpleRecycler:Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;


# instance fields
.field private DBG:Z

.field private HOLDOFF_DELAY:J

.field private mAsyncHandler:Landroid/os/Handler;

.field private mCardBitmapPool:Lcom/google/android/opengl/common/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/opengl/common/Pool",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCarouselView:Lcom/google/android/opengl/carousel/CarouselView;

.field protected mContext:Landroid/content/Context;

.field public final mDefaultRecycler:Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;

.field private mDetailBitmapPool:Lcom/google/android/opengl/common/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/opengl/common/Pool",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mSyncHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselViewHelper$2;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/CarouselViewHelper$2;-><init>()V

    sput-object v0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->sSimpleRecycler:Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;

    .line 86
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselViewHelper$3;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/CarouselViewHelper$3;-><init>()V

    sput-object v0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->sNoOpRecycler:Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->DBG:Z

    .line 41
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->HOLDOFF_DELAY:J

    .line 56
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselViewHelper$1;

    invoke-direct {v0, p0}, Lcom/google/android/opengl/carousel/CarouselViewHelper$1;-><init>(Lcom/google/android/opengl/carousel/CarouselViewHelper;)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mDefaultRecycler:Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;

    .line 218
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mContext:Landroid/content/Context;

    .line 220
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CarouselViewHelper.handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 221
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 223
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;-><init>(Lcom/google/android/opengl/carousel/CarouselViewHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    .line 224
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselViewHelper$SyncHandler;

    invoke-direct {v0, p0}, Lcom/google/android/opengl/carousel/CarouselViewHelper$SyncHandler;-><init>(Lcom/google/android/opengl/carousel/CarouselViewHelper;)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/opengl/carousel/CarouselView;)V
    .registers 7
    .parameter "context"
    .parameter "carouselView"

    .prologue
    const/16 v3, 0x80

    .line 206
    invoke-direct {p0, p1}, Lcom/google/android/opengl/carousel/CarouselViewHelper;-><init>(Landroid/content/Context;)V

    .line 207
    invoke-virtual {p0, p2}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->setCarouselView(Lcom/google/android/opengl/carousel/CarouselView;)V

    .line 210
    const/4 v0, 0x1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v0, v3, v3, v1}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->createBitmapPool(IIILandroid/graphics/Bitmap$Config;)V

    .line 212
    const/4 v0, 0x2

    const/16 v1, 0x40

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->createBitmapPool(IIILandroid/graphics/Bitmap$Config;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mDefaultRecycler:Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;

    invoke-virtual {p2, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setRecycler(Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;)V

    .line 215
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/opengl/carousel/CarouselViewHelper;)Lcom/google/android/opengl/common/Pool;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mCardBitmapPool:Lcom/google/android/opengl/common/Pool;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/opengl/carousel/CarouselViewHelper;)Lcom/google/android/opengl/common/Pool;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mDetailBitmapPool:Lcom/google/android/opengl/common/Pool;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/opengl/carousel/CarouselViewHelper;)Lcom/google/android/opengl/carousel/CarouselView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mCarouselView:Lcom/google/android/opengl/carousel/CarouselView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/opengl/carousel/CarouselViewHelper;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public clearAllMessages(I)V
    .registers 6
    .parameter "maxId"

    .prologue
    .line 247
    iget-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->DBG:Z

    if-eqz v1, :cond_1c

    .line 248
    const-string v1, "CarouselViewHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearAllMessages up to id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_1c
    const/4 v0, 0x0

    .local v0, id:I
    :goto_1d
    if-ge v0, p1, :cond_34

    .line 251
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    const v2, 0xf4240

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 252
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    const v2, 0x1e8480

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 255
    :cond_34
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 259
    return-void
.end method

.method public createBitmapPool(IIILandroid/graphics/Bitmap$Config;)V
    .registers 8
    .parameter "type"
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 429
    new-instance v0, Lcom/google/android/opengl/common/Pool;

    const/16 v1, 0xf

    new-instance v2, Lcom/google/android/opengl/carousel/CarouselViewHelper$4;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/google/android/opengl/carousel/CarouselViewHelper$4;-><init>(Lcom/google/android/opengl/carousel/CarouselViewHelper;IILandroid/graphics/Bitmap$Config;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/opengl/common/Pool;-><init>(ILcom/google/android/opengl/common/Pool$Allocator;)V

    .line 446
    .local v0, bitmapPool:Lcom/google/android/opengl/common/Pool;,"Lcom/google/android/opengl/common/Pool<Landroid/graphics/Bitmap;>;"
    packed-switch p1, :pswitch_data_16

    .line 456
    :goto_f
    return-void

    .line 448
    :pswitch_10
    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mCardBitmapPool:Lcom/google/android/opengl/common/Pool;

    goto :goto_f

    .line 451
    :pswitch_13
    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mDetailBitmapPool:Lcom/google/android/opengl/common/Pool;

    goto :goto_f

    .line 446
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_10
        :pswitch_13
    .end packed-switch
.end method

.method public getDetailTexture(I)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "id"

    .prologue
    .line 269
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDetailTextureParameters(I)Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;
    .registers 3
    .parameter "id"

    .prologue
    .line 315
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGeometry(I)Lcom/google/android/opengl/carousel/Mesh;
    .registers 3
    .parameter "id"

    .prologue
    .line 302
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTalkBackText(I)Ljava/lang/String;
    .registers 3
    .parameter "id"

    .prologue
    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTexture(I)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "id"

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextureParameters(I)Lcom/google/android/opengl/carousel/CarouselViewHelper$TextureParameters;
    .registers 3
    .parameter "id"

    .prologue
    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAnimationFinished(F)V
    .registers 5
    .parameter "angle"

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->DBG:Z

    if-eqz v0, :cond_22

    .line 378
    const-string v0, "CarouselViewHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationFinished("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_22
    return-void
.end method

.method public onAnimationStarted()V
    .registers 1

    .prologue
    .line 374
    return-void
.end method

.method public onCardLongPress(I[ILandroid/graphics/Rect;)V
    .registers 7
    .parameter "n"
    .parameter "touchPosition"
    .parameter "detailCoordinates"

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->DBG:Z

    if-eqz v0, :cond_36

    const-string v0, "CarouselViewHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCardLongPress("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_36
    return-void
.end method

.method public onCardSelected(I)V
    .registers 5
    .parameter "n"

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->DBG:Z

    if-eqz v0, :cond_22

    .line 365
    const-string v0, "CarouselViewHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCardSelected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_22
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 391
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 409
    return-void
.end method

.method public onDetailSelected(III)V
    .registers 4
    .parameter "id"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 419
    return-void
.end method

.method public onInvalidateDetailTexture(I)V
    .registers 5
    .parameter "id"

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->DBG:Z

    if-eqz v0, :cond_22

    .line 359
    const-string v0, "CarouselViewHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInvalidateDetailTexture("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_22
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    const v1, 0x1e8480

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 361
    return-void
.end method

.method public onInvalidateTexture(I)V
    .registers 5
    .parameter "id"

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->DBG:Z

    if-eqz v0, :cond_22

    .line 332
    const-string v0, "CarouselViewHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInvalidateTexture("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_22
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    const v1, 0xf4240

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 334
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mCarouselView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselView;->onPause()V

    .line 387
    return-void
.end method

.method public onRequestDetailTexture(I)V
    .registers 7
    .parameter "id"

    .prologue
    const v4, 0x1e8480

    .line 350
    iget-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->DBG:Z

    if-eqz v1, :cond_25

    .line 351
    const-string v1, "CarouselViewHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRequestDetailTexture("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_25
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    add-int v2, v4, p1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 353
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    add-int v2, v4, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 354
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->HOLDOFF_DELAY:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 355
    return-void
.end method

.method public onRequestTexture(I)V
    .registers 7
    .parameter "id"

    .prologue
    const v4, 0xf4240

    .line 323
    iget-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->DBG:Z

    if-eqz v1, :cond_25

    .line 324
    const-string v1, "CarouselViewHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRequestTexture("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_25
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    add-int v2, v4, p1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 326
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    add-int v2, v4, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 327
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->HOLDOFF_DELAY:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 328
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mCarouselView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselView;->onResume()V

    .line 383
    return-void
.end method

.method public setCarouselView(Lcom/google/android/opengl/carousel/CarouselView;)V
    .registers 3
    .parameter "carouselView"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mCarouselView:Lcom/google/android/opengl/carousel/CarouselView;

    .line 202
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper;->mCarouselView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v0, p0}, Lcom/google/android/opengl/carousel/CarouselView;->setCallback(Lcom/google/android/opengl/carousel/CarouselCallback;)V

    .line 203
    return-void
.end method
