.class public Lcom/google/android/apps/unveil/env/Viewport;
.super Ljava/lang/Object;
.source "Viewport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/Viewport$1;,
        Lcom/google/android/apps/unveil/env/Viewport$ParcelCreator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/unveil/env/Viewport;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private latestBarcodeQueryCrop:Landroid/graphics/Rect;

.field private latestBarcodeQueryRotation:I

.field private naturalOrientation:I

.field private previewSize:Lcom/google/android/apps/unveil/env/Size;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/env/Viewport;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 25
    new-instance v0, Lcom/google/android/apps/unveil/env/Viewport$ParcelCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/unveil/env/Viewport$ParcelCreator;-><init>(Lcom/google/android/apps/unveil/env/Viewport$1;)V

    sput-object v0, Lcom/google/android/apps/unveil/env/Viewport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "deviceNaturalOrientation"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/unveil/env/Viewport;->naturalOrientation:I

    .line 53
    iput p1, p0, Lcom/google/android/apps/unveil/env/Viewport;->naturalOrientation:I

    .line 54
    return-void
.end method

.method public static computeNaturalOrientation(Landroid/content/Context;)I
    .registers 12
    .parameter "context"

    .prologue
    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 80
    const/4 v3, 0x1

    .line 81
    .local v3, orientation:I
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 86
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v2

    .line 87
    .local v2, displayRotation:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v0, v4, Landroid/content/res/Configuration;->orientation:I

    .line 88
    .local v0, currentOrientation:I
    if-eq v0, v6, :cond_4a

    if-eq v0, v5, :cond_4a

    .line 90
    sget-object v4, Lcom/google/android/apps/unveil/env/Viewport;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v7, "Current orientation is neither landscape nor portrait! Fallback as portrait"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v8}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :goto_2c
    sget-object v7, Lcom/google/android/apps/unveil/env/Viewport;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v8, "Current orientation %s, screen rotated %d counter-clockwisely ==> natural orientation %s"

    new-array v9, v9, [Ljava/lang/Object;

    if-ne v0, v6, :cond_56

    const-string v4, "landscape"

    :goto_36
    aput-object v4, v9, v10

    mul-int/lit8 v4, v2, 0x5a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v5

    if-ne v3, v6, :cond_59

    const-string v4, "landscape."

    :goto_44
    aput-object v4, v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    return v3

    .line 92
    :cond_4a
    if-eq v2, v5, :cond_4e

    if-ne v2, v9, :cond_54

    .line 93
    :cond_4e
    if-ne v0, v6, :cond_52

    move v3, v5

    :goto_51
    goto :goto_2c

    :cond_52
    move v3, v6

    goto :goto_51

    .line 96
    :cond_54
    move v3, v0

    goto :goto_2c

    .line 98
    :cond_56
    const-string v4, "portrait"

    goto :goto_36

    :cond_59
    const-string v4, "portrait."

    goto :goto_44
.end method

.method static expandToSquare(Landroid/graphics/Rect;Lcom/google/android/apps/unveil/env/Size;)Landroid/graphics/Rect;
    .registers 5
    .parameter "rect"
    .parameter "containerSize"

    .prologue
    .line 353
    if-eqz p1, :cond_4

    if-nez p0, :cond_a

    .line 354
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 356
    :cond_a
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 357
    .local v0, square:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v1, v2, :cond_37

    .line 359
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget v2, p1, Lcom/google/android/apps/unveil/env/Size;->height:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_2d

    .line 361
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 376
    :goto_2c
    return-object v0

    .line 364
    :cond_2d
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2c

    .line 368
    :cond_37
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget v2, p1, Lcom/google/android/apps/unveil/env/Size;->width:I

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_4b

    .line 370
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2c

    .line 373
    :cond_4b
    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2c
.end method


# virtual methods
.method public computeImageRotationDegree(Landroid/content/Context;Lcom/google/android/apps/unveil/env/Picture;)I
    .registers 5
    .parameter "context"
    .parameter "picture"

    .prologue
    .line 308
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/unveil/env/Viewport;->computeRotationToLandscape(Landroid/content/Context;Lcom/google/android/apps/unveil/env/Picture;)I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/apps/unveil/env/Picture;->getOrientation()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public computeRotationToLandscape(Landroid/content/Context;Lcom/google/android/apps/unveil/env/Picture;)I
    .registers 9
    .parameter "context"
    .parameter "picture"

    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/env/Viewport;->getNaturalOrientation(Landroid/content/Context;)I

    move-result v3

    .line 321
    .local v3, naturalOrientation:I
    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 323
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v2

    .line 326
    .local v2, displayRotation:I
    packed-switch v2, :pswitch_data_2e

    .line 337
    const/4 v0, 0x0

    .line 340
    .local v0, degree:I
    :goto_18
    invoke-virtual {p2}, Lcom/google/android/apps/unveil/env/Picture;->getSource()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_24

    const/4 v4, 0x1

    if-ne v3, v4, :cond_24

    .line 342
    add-int/lit8 v0, v0, 0x5a

    .line 345
    :cond_24
    return v0

    .line 328
    .end local v0           #degree:I
    :pswitch_25
    const/16 v0, -0xb4

    .line 329
    .restart local v0       #degree:I
    goto :goto_18

    .line 331
    .end local v0           #degree:I
    :pswitch_28
    const/16 v0, -0x10e

    .line 332
    .restart local v0       #degree:I
    goto :goto_18

    .line 334
    .end local v0           #degree:I
    :pswitch_2b
    const/16 v0, -0x5a

    .line 335
    .restart local v0       #degree:I
    goto :goto_18

    .line 326
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_25
        :pswitch_28
    .end packed-switch
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method public deviceRotationToCameraRotation(I)I
    .registers 4
    .parameter "deviceRotation"

    .prologue
    .line 150
    iget v0, p0, Lcom/google/android/apps/unveil/env/Viewport;->naturalOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 151
    add-int/lit8 v0, p1, 0x5a

    rem-int/lit16 p1, v0, 0x168

    .line 153
    .end local p1
    :cond_9
    return p1
.end method

.method public getLatestBarcodeQueryCrop()Landroid/graphics/Rect;
    .registers 3

    .prologue
    .line 175
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/Viewport;->latestBarcodeQueryCrop:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getLatestBarcodeQueryRotation()I
    .registers 2

    .prologue
    .line 167
    iget v0, p0, Lcom/google/android/apps/unveil/env/Viewport;->latestBarcodeQueryRotation:I

    return v0
.end method

.method public getNaturalOrientation(Landroid/content/Context;)I
    .registers 3
    .parameter "context"

    .prologue
    .line 63
    iget v0, p0, Lcom/google/android/apps/unveil/env/Viewport;->naturalOrientation:I

    return v0
.end method

.method getPreviewSize()Lcom/google/android/apps/unveil/env/Size;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/Viewport;->previewSize:Lcom/google/android/apps/unveil/env/Size;

    return-object v0
.end method

.method public getRotatedBarcodeQueryCropSize(I)Lcom/google/android/apps/unveil/env/Size;
    .registers 5
    .parameter "rotation"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/Viewport;->latestBarcodeQueryCrop:Landroid/graphics/Rect;

    if-nez v0, :cond_6

    .line 139
    const/4 v0, 0x0

    .line 141
    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Lcom/google/android/apps/unveil/env/Size;

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/Viewport;->latestBarcodeQueryCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/Viewport;->latestBarcodeQueryCrop:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    invoke-static {v0, p1}, Lcom/google/android/apps/unveil/env/Size;->getRotatedSize(Lcom/google/android/apps/unveil/env/Size;I)Lcom/google/android/apps/unveil/env/Size;

    move-result-object v0

    goto :goto_5
.end method

.method public getRotatedPreviewSize(I)Lcom/google/android/apps/unveil/env/Size;
    .registers 3
    .parameter "rotation"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/Viewport;->previewSize:Lcom/google/android/apps/unveil/env/Size;

    if-nez v0, :cond_6

    .line 122
    const/4 v0, 0x0

    .line 129
    :goto_5
    return-object v0

    .line 125
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/Viewport;->latestBarcodeQueryCrop:Landroid/graphics/Rect;

    if-eqz v0, :cond_f

    .line 126
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/env/Viewport;->getRotatedBarcodeQueryCropSize(I)Lcom/google/android/apps/unveil/env/Size;

    move-result-object v0

    goto :goto_5

    .line 129
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/Viewport;->previewSize:Lcom/google/android/apps/unveil/env/Size;

    invoke-static {v0, p1}, Lcom/google/android/apps/unveil/env/Size;->getRotatedSize(Lcom/google/android/apps/unveil/env/Size;I)Lcom/google/android/apps/unveil/env/Size;

    move-result-object v0

    goto :goto_5
.end method

.method public isBarcodeBoxGood(Landroid/graphics/Rect;)Z
    .registers 8
    .parameter "boundingBox"

    .prologue
    const/4 v2, 0x0

    .line 290
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/Viewport;->previewSize:Lcom/google/android/apps/unveil/env/Size;

    if-nez v3, :cond_f

    .line 291
    sget-object v3, Lcom/google/android/apps/unveil/env/Viewport;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Cannot determine barcode box goodness without a preview size."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    :goto_e
    return v2

    .line 295
    :cond_f
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/Viewport;->previewSize:Lcom/google/android/apps/unveil/env/Size;

    invoke-static {p1, v2}, Lcom/google/android/apps/unveil/env/Viewport;->expandToSquare(Landroid/graphics/Rect;Lcom/google/android/apps/unveil/env/Size;)Landroid/graphics/Rect;

    move-result-object v1

    .line 298
    .local v1, square:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 299
    .local v0, delta:I
    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 300
    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 301
    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 302
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 304
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/Viewport;->previewSize:Lcom/google/android/apps/unveil/env/Size;

    iget v2, v2, Lcom/google/android/apps/unveil/env/Size;->width:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/unveil/env/Viewport;->previewSize:Lcom/google/android/apps/unveil/env/Size;

    iget v3, v3, Lcom/google/android/apps/unveil/env/Size;->height:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    goto :goto_e
.end method

.method public rotateAndScaleBarcodeBox(Landroid/graphics/Rect;ILcom/google/android/apps/unveil/env/Size;)Landroid/graphics/Rect;
    .registers 11
    .parameter "boundingBox"
    .parameter "rotation"
    .parameter "destinationImageSize"

    .prologue
    .line 254
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/Viewport;->previewSize:Lcom/google/android/apps/unveil/env/Size;

    if-nez v3, :cond_12

    .line 255
    sget-object v3, Lcom/google/android/apps/unveil/env/Viewport;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Failed to rotate and scale bounding box %s because we don\'t have a preview size"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    .end local p1
    :goto_11
    return-object p1

    .line 262
    .restart local p1
    :cond_12
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/unveil/env/Viewport;->rotateBarcodeBox(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v0

    .line 267
    .local v0, modifiedBox:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/Viewport;->latestBarcodeQueryCrop:Landroid/graphics/Rect;

    if-eqz v3, :cond_44

    invoke-virtual {p0, p2}, Lcom/google/android/apps/unveil/env/Viewport;->getRotatedBarcodeQueryCropSize(I)Lcom/google/android/apps/unveil/env/Size;

    move-result-object v3

    iget v1, v3, Lcom/google/android/apps/unveil/env/Size;->width:I

    .line 269
    .local v1, originalWidth:I
    :goto_20
    iget v3, p3, Lcom/google/android/apps/unveil/env/Size;->width:I

    int-to-float v3, v3

    int-to-float v4, v1

    div-float v2, v3, v4

    .line 270
    .local v2, scale:F
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 271
    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 272
    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 273
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object p1, v0

    .line 274
    goto :goto_11

    .line 267
    .end local v1           #originalWidth:I
    .end local v2           #scale:F
    :cond_44
    invoke-virtual {p0, p2}, Lcom/google/android/apps/unveil/env/Viewport;->getRotatedPreviewSize(I)Lcom/google/android/apps/unveil/env/Size;

    move-result-object v3

    iget v1, v3, Lcom/google/android/apps/unveil/env/Size;->width:I

    goto :goto_20
.end method

.method public rotateBarcodeBox(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .registers 14
    .parameter "boundingBox"
    .parameter "rotation"

    .prologue
    .line 188
    iget-object v8, p0, Lcom/google/android/apps/unveil/env/Viewport;->previewSize:Lcom/google/android/apps/unveil/env/Size;

    if-nez v8, :cond_f

    .line 189
    sget-object v8, Lcom/google/android/apps/unveil/env/Viewport;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v9, "Tried to rotate a box without setting the preview size. Bailing out on rotation."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    .end local p1
    :goto_e
    return-object p1

    .line 193
    .restart local p1
    :cond_f
    const/4 v7, 0x0

    .line 194
    .local v7, verticalOffset:I
    const/4 v1, 0x0

    .line 195
    .local v1, horizontalOffset:I
    iget-object v8, p0, Lcom/google/android/apps/unveil/env/Viewport;->previewSize:Lcom/google/android/apps/unveil/env/Size;

    iget v4, v8, Lcom/google/android/apps/unveil/env/Size;->width:I

    .line 196
    .local v4, regionWidth:I
    iget-object v8, p0, Lcom/google/android/apps/unveil/env/Viewport;->previewSize:Lcom/google/android/apps/unveil/env/Size;

    iget v3, v8, Lcom/google/android/apps/unveil/env/Size;->height:I

    .line 198
    .local v3, regionHeight:I
    iget-object v8, p0, Lcom/google/android/apps/unveil/env/Viewport;->latestBarcodeQueryCrop:Landroid/graphics/Rect;

    if-eqz v8, :cond_31

    .line 199
    iget-object v8, p0, Lcom/google/android/apps/unveil/env/Viewport;->latestBarcodeQueryCrop:Landroid/graphics/Rect;

    iget v7, v8, Landroid/graphics/Rect;->top:I

    .line 200
    iget-object v8, p0, Lcom/google/android/apps/unveil/env/Viewport;->latestBarcodeQueryCrop:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Rect;->left:I

    .line 201
    iget-object v8, p0, Lcom/google/android/apps/unveil/env/Viewport;->latestBarcodeQueryCrop:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 202
    iget-object v8, p0, Lcom/google/android/apps/unveil/env/Viewport;->latestBarcodeQueryCrop:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 205
    :cond_31
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int v6, v8, v7

    .line 206
    .local v6, top:I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v7

    .line 207
    .local v0, bottom:I
    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int v2, v8, v1

    .line 208
    .local v2, left:I
    iget v8, p1, Landroid/graphics/Rect;->right:I

    sub-int v5, v8, v1

    .line 210
    .local v5, right:I
    sparse-switch p2, :sswitch_data_96

    .line 235
    :goto_44
    new-instance p1, Landroid/graphics/Rect;

    .end local p1
    invoke-direct {p1, v2, v6, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_e

    .line 213
    .restart local p1
    :sswitch_4a
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v3, v8

    add-int v6, v8, v7

    .line 214
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int v0, v6, v8

    .line 215
    iget v8, p1, Landroid/graphics/Rect;->right:I

    sub-int v8, v4, v8

    add-int v2, v8, v1

    .line 216
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int v5, v2, v8

    .line 217
    goto :goto_44

    .line 221
    :sswitch_63
    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int v6, v8, v1

    .line 222
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int v0, v6, v8

    .line 223
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int v8, v3, v8

    add-int/2addr v8, v7

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int v2, v8, v9

    .line 224
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int v5, v2, v8

    .line 225
    goto :goto_44

    .line 229
    :sswitch_7f
    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int v8, v4, v8

    add-int v0, v8, v1

    .line 230
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int v6, v0, v8

    .line 231
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int v2, v8, v7

    .line 232
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int v5, v2, v8

    goto :goto_44

    .line 210
    :sswitch_data_96
    .sparse-switch
        0x5a -> :sswitch_63
        0xb4 -> :sswitch_4a
        0x10e -> :sswitch_7f
    .end sparse-switch
.end method

.method public setLatestBarcodeQueryCrop(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "rect"

    .prologue
    .line 171
    if-nez p1, :cond_6

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Lcom/google/android/apps/unveil/env/Viewport;->latestBarcodeQueryCrop:Landroid/graphics/Rect;

    .line 172
    return-void

    .line 171
    :cond_6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_3
.end method

.method public setLatestBarcodeQueryRotation(I)V
    .registers 2
    .parameter "rotation"

    .prologue
    .line 163
    iput p1, p0, Lcom/google/android/apps/unveil/env/Viewport;->latestBarcodeQueryRotation:I

    .line 164
    return-void
.end method

.method public setPreviewSize(Lcom/google/android/apps/unveil/env/Size;)V
    .registers 2
    .parameter "size"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/Viewport;->previewSize:Lcom/google/android/apps/unveil/env/Size;

    .line 108
    return-void
.end method

.method public updateNaturalOrientation(I)V
    .registers 2
    .parameter "naturalOrientation"

    .prologue
    .line 73
    iput p1, p0, Lcom/google/android/apps/unveil/env/Viewport;->naturalOrientation:I

    .line 74
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 405
    iget v0, p0, Lcom/google/android/apps/unveil/env/Viewport;->naturalOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/Viewport;->latestBarcodeQueryCrop:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 407
    iget v0, p0, Lcom/google/android/apps/unveil/env/Viewport;->latestBarcodeQueryRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/Viewport;->previewSize:Lcom/google/android/apps/unveil/env/Size;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 409
    return-void
.end method
