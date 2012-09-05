.class public Lcom/infraware/office/baseframe/EvContentView;
.super Landroid/view/SurfaceView;
.source "EvContentView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/office/baseframe/EvContentView$OnContentCreateListener;,
        Lcom/infraware/office/baseframe/EvContentView$Renderer;
    }
.end annotation


# static fields
.field protected static final SCREEN_SIZE_MISMATCH:I

.field static final USE_RENDER_THREAD:Z


# instance fields
.field private final LOG_CAT:Ljava/lang/String;

.field protected bSurfaceCreated:Z

.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mCanvas:Landroid/graphics/Canvas;

.field protected mCreateListener:Lcom/infraware/office/baseframe/EvContentView$OnContentCreateListener;

.field protected final mHandler:Landroid/os/Handler;

.field protected mHeight:I

.field protected mRenderThread:Lcom/infraware/office/baseframe/EvContentView$Renderer;

.field protected mSurfaceHolder:Landroid/view/SurfaceHolder;

.field protected mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/infraware/office/baseframe/EvContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/infraware/office/baseframe/EvContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const-string v0, "FreeDrawContentView"

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvContentView;->LOG_CAT:Ljava/lang/String;

    .line 22
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvContentView;->bSurfaceCreated:Z

    .line 27
    iput v1, p0, Lcom/infraware/office/baseframe/EvContentView;->mWidth:I

    .line 28
    iput v1, p0, Lcom/infraware/office/baseframe/EvContentView;->mHeight:I

    .line 29
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvContentView;->mBitmap:Landroid/graphics/Bitmap;

    .line 30
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvContentView;->mCreateListener:Lcom/infraware/office/baseframe/EvContentView$OnContentCreateListener;

    .line 33
    new-instance v0, Lcom/infraware/office/baseframe/EvContentView$1;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/EvContentView$1;-><init>(Lcom/infraware/office/baseframe/EvContentView;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvContentView;->mHandler:Landroid/os/Handler;

    .line 79
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvContentView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvContentView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 80
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvContentView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 81
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvContentView;->bSurfaceCreated:Z

    .line 82
    return-void
.end method


# virtual methods
.method protected changeScreenSize()V
    .registers 5

    .prologue
    .line 56
    :try_start_0
    const-string v1, "FreeDrawContentView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Oops!! bitmap sizes are different mWidth="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/infraware/office/baseframe/EvContentView;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/infraware/office/baseframe/EvContentView;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bitmapW="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/infraware/office/baseframe/EvContentView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bitmapH="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/infraware/office/baseframe/EvContentView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_42} :catch_61

    .line 59
    :goto_42
    const/4 v0, 0x0

    .line 60
    .local v0, bLandScape:I
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_51

    .line 61
    const/4 v0, 0x1

    .line 64
    :cond_51
    iget v1, p0, Lcom/infraware/office/baseframe/EvContentView;->mHeight:I

    if-lez v1, :cond_60

    .line 65
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v1

    iget v2, p0, Lcom/infraware/office/baseframe/EvContentView;->mWidth:I

    iget v3, p0, Lcom/infraware/office/baseframe/EvContentView;->mHeight:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/infraware/office/evengine/EvInterface;->IChangeScreen(III)V

    .line 66
    :cond_60
    return-void

    .line 57
    .end local v0           #bLandScape:I
    :catch_61
    move-exception v1

    goto :goto_42
.end method

.method public destory()V
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvContentView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 126
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvContentView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvContentView;->mBitmap:Landroid/graphics/Bitmap;

    .line 129
    :cond_c
    return-void
.end method

.method public drawAllContents()V
    .registers 4

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, canvas:Landroid/graphics/Canvas;
    :try_start_1
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvContentView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_24
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_4} :catch_1b

    .line 156
    :try_start_4
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvContentView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_f

    .line 158
    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvContentView;->onDraw(Landroid/graphics/Canvas;)V

    .line 155
    :cond_f
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_18

    .line 164
    if-eqz v0, :cond_17

    .line 165
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvContentView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 168
    :cond_17
    :goto_17
    return-void

    .line 155
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    :try_start_1a
    throw v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_24
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1b} :catch_1b

    .line 160
    :catch_1b
    move-exception v1

    .line 164
    if-eqz v0, :cond_17

    .line 165
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvContentView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_17

    .line 163
    :catchall_24
    move-exception v1

    .line 164
    if-eqz v0, :cond_2c

    .line 165
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvContentView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 166
    :cond_2c
    throw v1
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "aScreenWidth"
    .parameter "aScreenHeight"

    .prologue
    .line 133
    iget v0, p0, Lcom/infraware/office/baseframe/EvContentView;->mWidth:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/infraware/office/baseframe/EvContentView;->mHeight:I

    if-eq v0, p2, :cond_e

    .line 134
    :cond_8
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvContentView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 136
    :cond_e
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvContentView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvContentView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_22

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvContentView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_36

    .line 138
    :cond_22
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvContentView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2e

    .line 139
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvContentView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvContentView;->mBitmap:Landroid/graphics/Bitmap;

    .line 143
    :cond_2e
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvContentView;->mBitmap:Landroid/graphics/Bitmap;

    .line 145
    :cond_36
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvContentView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvContentView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_8} :catch_9

    .line 176
    :goto_8
    return-void

    .line 175
    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method public setOnContentCreateListener(Lcom/infraware/office/baseframe/EvContentView$OnContentCreateListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvContentView;->mCreateListener:Lcom/infraware/office/baseframe/EvContentView$OnContentCreateListener;

    .line 52
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 8
    .parameter "arg0"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/EvContentView;->bSurfaceCreated:Z

    if-nez v0, :cond_32

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvContentView;->bSurfaceCreated:Z

    .line 183
    const-string v0, "FreeDrawContentView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "surfaceChanged width="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvContentView;->mCreateListener:Lcom/infraware/office/baseframe/EvContentView$OnContentCreateListener;

    if-eqz v0, :cond_2e

    .line 185
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvContentView;->mCreateListener:Lcom/infraware/office/baseframe/EvContentView$OnContentCreateListener;

    invoke-interface {v0, p3, p4}, Lcom/infraware/office/baseframe/EvContentView$OnContentCreateListener;->onContentCreated(II)V

    .line 194
    :cond_2e
    :goto_2e
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvContentView;->drawAllContents()V

    .line 195
    return-void

    .line 187
    :cond_32
    const-string v0, "FreeDrawContentView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "surfaceChanged width="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget v0, p0, Lcom/infraware/office/baseframe/EvContentView;->mWidth:I

    if-ne v0, p3, :cond_58

    iget v0, p0, Lcom/infraware/office/baseframe/EvContentView;->mHeight:I

    if-eq v0, p4, :cond_2e

    .line 189
    :cond_58
    iput p3, p0, Lcom/infraware/office/baseframe/EvContentView;->mWidth:I

    iput p4, p0, Lcom/infraware/office/baseframe/EvContentView;->mHeight:I

    .line 190
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvContentView;->changeScreenSize()V

    goto :goto_2e
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 199
    const-string v0, "FreeDrawContentView"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 210
    const-string v0, "FreeDrawContentView"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method
