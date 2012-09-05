.class public Lcom/android/facelockutil/Preview;
.super Landroid/view/ViewGroup;
.source "Preview.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraInfo:Landroid/hardware/Camera$CameraInfo;

.field private mContext:Landroid/content/Context;

.field private mFade:Landroid/animation/ObjectAnimator;

.field private mLock:Ljava/lang/Object;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewSize:Landroid/hardware/Camera$Size;

.field private mRotation:I

.field private mSupportedPreviewSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceAvailable:Z

.field private mTextureView:Landroid/view/TextureView;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const-string v0, "Preview"

    iput-object v0, p0, Lcom/android/facelockutil/Preview;->TAG:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/facelockutil/Preview;->mLock:Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Lcom/android/facelockutil/Preview;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/facelockutil/Preview;->mTextureView:Landroid/view/TextureView;

    .line 73
    iget-object v0, p0, Lcom/android/facelockutil/Preview;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 74
    iget-object v0, p0, Lcom/android/facelockutil/Preview;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Lcom/android/facelockutil/Preview;->addView(Landroid/view/View;)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/facelockutil/Preview;->mSurfaceAvailable:Z

    .line 79
    iget-object v0, p0, Lcom/android/facelockutil/Preview;->mTextureView:Landroid/view/TextureView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_46

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/facelockutil/Preview;->mFade:Landroid/animation/ObjectAnimator;

    .line 80
    iget-object v0, p0, Lcom/android/facelockutil/Preview;->mFade:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 81
    iget-object v0, p0, Lcom/android/facelockutil/Preview;->mFade:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 82
    return-void

    .line 79
    :array_46
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private getOptimalPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .registers 13
    .parameter
    .parameter "w"
    .parameter "h"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;II)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct {p0}, Lcom/android/facelockutil/Preview;->isPortraitMode()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 282
    move v6, p2

    .line 283
    .local v6, temp:I
    move p2, p3

    .line 284
    move p3, v6

    .line 287
    .end local v6           #temp:I
    :cond_9
    if-nez p1, :cond_d

    const/4 v4, 0x0

    .line 304
    :cond_c
    return-object v4

    .line 289
    :cond_d
    const/4 v4, 0x0

    .line 290
    .local v4, optimalSize:Landroid/hardware/Camera$Size;
    const-wide v2, 0x7fefffffffffffffL

    .line 294
    .local v2, minDiff:D
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 295
    .local v5, size:Landroid/hardware/Camera$Size;
    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v7, p2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v8, p3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int v0, v7, v8

    .line 296
    .local v0, diff:I
    int-to-double v7, v0

    cmpg-double v7, v7, v2

    if-gez v7, :cond_17

    .line 297
    move-object v4, v5

    .line 298
    int-to-double v2, v0

    goto :goto_17
.end method

.method private isPortraitMode()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 308
    invoke-virtual {p0}, Lcom/android/facelockutil/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    .line 309
    .local v0, orientation:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_10

    .line 316
    :cond_f
    :goto_f
    return v1

    .line 311
    :cond_10
    if-ne v0, v2, :cond_f

    move v1, v2

    .line 312
    goto :goto_f
.end method


# virtual methods
.method public fade()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/facelockutil/Preview;->mFade:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 87
    return-void
.end method

.method public getPreviewRotation()I
    .registers 2

    .prologue
    .line 324
    iget v0, p0, Lcom/android/facelockutil/Preview;->mRotation:I

    return v0
.end method

.method public getPreviewSize()Landroid/hardware/Camera$Size;
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/facelockutil/Preview;->mPreviewSize:Landroid/hardware/Camera$Size;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 18
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 129
    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Lcom/android/facelockutil/Preview;->getChildCount()I

    move-result v10

    if-lez v10, :cond_3a

    .line 131
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/facelockutil/Preview;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, child:Landroid/view/View;
    sub-int v9, p4, p2

    .line 134
    .local v9, width:I
    sub-int v2, p5, p3

    .line 136
    .local v2, height:I
    move v4, v9

    .line 137
    .local v4, previewWidth:I
    move v3, v2

    .line 138
    .local v3, previewHeight:I
    iget-object v10, p0, Lcom/android/facelockutil/Preview;->mPreviewSize:Landroid/hardware/Camera$Size;

    if-eqz v10, :cond_1f

    .line 139
    iget-object v10, p0, Lcom/android/facelockutil/Preview;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v4, v10, Landroid/hardware/Camera$Size;->width:I

    .line 140
    iget-object v10, p0, Lcom/android/facelockutil/Preview;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v3, v10, Landroid/hardware/Camera$Size;->height:I

    .line 144
    :cond_1f
    invoke-direct {p0}, Lcom/android/facelockutil/Preview;->isPortraitMode()Z

    move-result v10

    if-eqz v10, :cond_28

    .line 146
    move v7, v4

    .line 147
    .local v7, tmp:I
    move v4, v3

    .line 148
    move v3, v7

    .line 153
    .end local v7           #tmp:I
    :cond_28
    mul-int v10, v9, v3

    mul-int v11, v2, v4

    if-le v10, v11, :cond_3b

    .line 156
    mul-int v10, v9, v3

    div-int v5, v10, v4

    .line 165
    .local v5, scaledChildHeight:I
    sub-int v8, v2, v5

    .line 166
    .local v8, topCropAmount:I
    const/4 v10, 0x0

    add-int v11, v5, v8

    invoke-virtual {v0, v10, v8, v9, v11}, Landroid/view/View;->layout(IIII)V

    .line 180
    .end local v0           #child:Landroid/view/View;
    .end local v2           #height:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    .end local v5           #scaledChildHeight:I
    .end local v8           #topCropAmount:I
    .end local v9           #width:I
    :cond_3a
    :goto_3a
    return-void

    .line 172
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #height:I
    .restart local v3       #previewHeight:I
    .restart local v4       #previewWidth:I
    .restart local v9       #width:I
    :cond_3b
    mul-int v10, v2, v4

    div-int v6, v10, v3

    .line 173
    .local v6, scaledChildWidth:I
    sub-int v10, v9, v6

    div-int/lit8 v1, v10, 0x2

    .line 174
    .local v1, cropAmount:I
    const/4 v10, 0x0

    add-int v11, v6, v1

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_3a
.end method

.method protected onMeasure(II)V
    .registers 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/facelockutil/Preview;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v2, p1}, Lcom/android/facelockutil/Preview;->resolveSize(II)I

    move-result v1

    .line 118
    .local v1, width:I
    invoke-virtual {p0}, Lcom/android/facelockutil/Preview;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v2, p2}, Lcom/android/facelockutil/Preview;->resolveSize(II)I

    move-result v0

    .line 119
    .local v0, height:I
    invoke-virtual {p0, v1, v0}, Lcom/android/facelockutil/Preview;->setMeasuredDimension(II)V

    .line 122
    iget-object v2, p0, Lcom/android/facelockutil/Preview;->mSupportedPreviewSizes:Ljava/util/List;

    if-eqz v2, :cond_1f

    .line 123
    iget-object v2, p0, Lcom/android/facelockutil/Preview;->mSupportedPreviewSizes:Ljava/util/List;

    invoke-direct {p0, v2, v1, v0}, Lcom/android/facelockutil/Preview;->getOptimalPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v2

    iput-object v2, p0, Lcom/android/facelockutil/Preview;->mPreviewSize:Landroid/hardware/Camera$Size;

    .line 125
    :cond_1f
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 6
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/facelockutil/Preview;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/facelockutil/Preview;->mSurfaceAvailable:Z

    .line 185
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 186
    invoke-virtual {p0}, Lcom/android/facelockutil/Preview;->start()V

    .line 187
    return-void

    .line 185
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 5
    .parameter "surface"

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v1, p0, Lcom/android/facelockutil/Preview;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 208
    :try_start_4
    iget-object v0, p0, Lcom/android/facelockutil/Preview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_d

    .line 209
    iget-object v0, p0, Lcom/android/facelockutil/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 211
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/facelockutil/Preview;->mSurfaceAvailable:Z

    .line 212
    monitor-exit v1

    .line 214
    return v2

    .line 212
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 275
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .parameter "surface"

    .prologue
    .line 220
    return-void
.end method

.method public setCamera(Landroid/hardware/Camera;)V
    .registers 3
    .parameter "camera"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/facelockutil/Preview;->mCamera:Landroid/hardware/Camera;

    .line 96
    iget-object v0, p0, Lcom/android/facelockutil/Preview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_15

    .line 97
    iget-object v0, p0, Lcom/android/facelockutil/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/facelockutil/Preview;->mSupportedPreviewSizes:Ljava/util/List;

    .line 98
    invoke-virtual {p0}, Lcom/android/facelockutil/Preview;->requestLayout()V

    .line 100
    :cond_15
    return-void
.end method

.method public setCameraInfo(Landroid/hardware/Camera$CameraInfo;)V
    .registers 2
    .parameter "cameraInfo"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/facelockutil/Preview;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 104
    return-void
.end method

.method public setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 4
    .parameter "previewCallback"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/facelockutil/Preview;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 108
    iget-object v0, p0, Lcom/android/facelockutil/Preview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_d

    .line 109
    iget-object v0, p0, Lcom/android/facelockutil/Preview;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/facelockutil/Preview;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 111
    :cond_d
    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;)V
    .registers 2
    .parameter "windowManager"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/facelockutil/Preview;->mWindowManager:Landroid/view/WindowManager;

    .line 92
    return-void
.end method

.method public setupPreview()V
    .registers 15

    .prologue
    const/16 v13, 0xc8

    const/4 v12, 0x1

    const/16 v10, -0xc8

    .line 223
    iget-object v8, p0, Lcom/android/facelockutil/Preview;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 225
    .local v4, display:Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v7

    .line 226
    .local v7, rotation:I
    const/4 v3, 0x0

    .line 227
    .local v3, degrees:I
    packed-switch v7, :pswitch_data_9c

    .line 241
    const-string v8, "Preview"

    const-string v9, "Bad rotation value in setupPreview()"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_1a
    iget-object v8, p0, Lcom/android/facelockutil/Preview;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v8, v8, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v8, v3

    rem-int/lit16 v0, v8, 0x168

    .line 246
    .local v0, angle:I
    iget-object v8, p0, Lcom/android/facelockutil/Preview;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v8, v8, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v8, v12, :cond_2b

    .line 247
    rsub-int v8, v0, 0x168

    rem-int/lit16 v0, v8, 0x168

    .line 250
    :cond_2b
    iget-object v8, p0, Lcom/android/facelockutil/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v8, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 251
    div-int/lit8 v8, v0, 0x5a

    iput v8, p0, Lcom/android/facelockutil/Preview;->mRotation:I

    .line 253
    iget-object v8, p0, Lcom/android/facelockutil/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 254
    .local v6, parameters:Landroid/hardware/Camera$Parameters;
    iget-object v8, p0, Lcom/android/facelockutil/Preview;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v8, v8, Landroid/hardware/Camera$Size;->width:I

    iget-object v9, p0, Lcom/android/facelockutil/Preview;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v9, v9, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v8, v9}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 256
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v8

    if-lez v8, :cond_7e

    .line 257
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v5, meteringAreas:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    iget-object v8, p0, Lcom/android/facelockutil/Preview;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 259
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/graphics/Rect;

    const-string v8, "facelock_metering_area_x1"

    invoke-static {v2, v8, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const-string v9, "facelock_metering_area_y1"

    invoke-static {v2, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const-string v10, "facelock_metering_area_x2"

    invoke-static {v2, v10, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const-string v11, "facelock_metering_area_y2"

    invoke-static {v2, v11, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-direct {v1, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 264
    .local v1, area:Landroid/graphics/Rect;
    new-instance v8, Landroid/hardware/Camera$Area;

    invoke-direct {v8, v1, v12}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {v6, v5}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 268
    .end local v1           #area:Landroid/graphics/Rect;
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v5           #meteringAreas:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :cond_7e
    iget-object v8, p0, Lcom/android/facelockutil/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v8, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 269
    iget-object v8, p0, Lcom/android/facelockutil/Preview;->mCamera:Landroid/hardware/Camera;

    iget-object v9, p0, Lcom/android/facelockutil/Preview;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v8, v9}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 270
    iget-object v8, p0, Lcom/android/facelockutil/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v8}, Landroid/hardware/Camera;->startPreview()V

    .line 271
    return-void

    .line 229
    .end local v0           #angle:I
    .end local v6           #parameters:Landroid/hardware/Camera$Parameters;
    :pswitch_90
    const/4 v3, 0x0

    .line 230
    goto :goto_1a

    .line 232
    :pswitch_92
    const/16 v3, 0x5a

    .line 233
    goto :goto_1a

    .line 235
    :pswitch_95
    const/16 v3, 0xb4

    .line 236
    goto :goto_1a

    .line 238
    :pswitch_98
    const/16 v3, 0x10e

    .line 239
    goto :goto_1a

    .line 227
    nop

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_90
        :pswitch_92
        :pswitch_95
        :pswitch_98
    .end packed-switch
.end method

.method public start()V
    .registers 5

    .prologue
    .line 190
    iget-object v2, p0, Lcom/android/facelockutil/Preview;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 191
    :try_start_3
    iget-boolean v1, p0, Lcom/android/facelockutil/Preview;->mSurfaceAvailable:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_24

    if-eqz v1, :cond_19

    .line 194
    :try_start_7
    iget-object v1, p0, Lcom/android/facelockutil/Preview;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_19

    .line 195
    iget-object v1, p0, Lcom/android/facelockutil/Preview;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/android/facelockutil/Preview;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/facelockutil/Preview;->setupPreview()V
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_24
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_19} :catch_1b

    .line 202
    :cond_19
    :goto_19
    :try_start_19
    monitor-exit v2

    .line 203
    return-void

    .line 198
    :catch_1b
    move-exception v0

    .line 199
    .local v0, exception:Ljava/io/IOException;
    const-string v1, "Preview"

    const-string v3, "IOException caused by onSurfaceTextureAvailable()"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 202
    .end local v0           #exception:Ljava/io/IOException;
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_24

    throw v1
.end method
