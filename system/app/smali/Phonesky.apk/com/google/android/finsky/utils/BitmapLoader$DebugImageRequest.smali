.class Lcom/google/android/finsky/utils/BitmapLoader$DebugImageRequest;
.super Lcom/android/volley/toolbox/ImageRequest;
.source "BitmapLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/BitmapLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugImageRequest"
.end annotation


# static fields
.field private static final IDENTITY:Landroid/graphics/Matrix;


# instance fields
.field private mResponseDelivered:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 185
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/BitmapLoader$DebugImageRequest;->IDENTITY:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V
    .registers 7
    .parameter "url"
    .parameter
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "decodeConfig"
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 192
    .local p2, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Landroid/graphics/Bitmap;>;"
    invoke-direct/range {p0 .. p6}, Lcom/android/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V

    .line 193
    return-void
.end method

.method private overlayDebugInfo(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "bitmap"
    .parameter "responseSizeInK"

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 223
    .local v2, newBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 224
    .local v0, canvas:Landroid/graphics/Canvas;
    sget-object v9, Lcom/google/android/finsky/utils/BitmapLoader$DebugImageRequest;->IDENTITY:Landroid/graphics/Matrix;

    const/4 v10, 0x0

    invoke-virtual {v0, p1, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 225
    new-instance v3, Landroid/graphics/Paint;

    const/16 v9, 0x8

    invoke-direct {v3, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 226
    .local v3, paint:Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/google/android/finsky/utils/BitmapLoader$DebugImageRequest;->getUrl()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ggpht.com"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d3

    const v9, -0xff0001

    :goto_31
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    const/high16 v9, 0x4040

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 228
    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 229
    const-string v9, "%dk"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, sizeStr:Ljava/lang/String;
    const-string v9, "%dh"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, heightString:Ljava/lang/String;
    const-string v9, "%dw"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 233
    .local v7, widthString:Ljava/lang/String;
    const/high16 v5, 0x4220

    .line 235
    .local v5, textSize:F
    :goto_78
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 236
    float-to-double v9, v5

    const-wide v11, 0x4008cccccccccccdL

    mul-double/2addr v9, v11

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    int-to-double v11, v11

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_d8

    .line 237
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 239
    .local v6, textWidth:F
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 240
    float-to-double v9, v6

    const-wide v11, 0x3ff199999999999aL

    mul-double/2addr v9, v11

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    int-to-double v11, v11

    cmpg-double v9, v9, v11

    if-gez v9, :cond_d8

    .line 246
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float v8, v9, v5

    .line 247
    .local v8, y:F
    const/high16 v9, 0x4080

    invoke-virtual {v0, v4, v9, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 248
    const/high16 v9, 0x40a0

    add-float/2addr v9, v5

    add-float/2addr v8, v9

    .line 249
    const/high16 v9, 0x4080

    invoke-virtual {v0, v1, v9, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 250
    const/high16 v9, 0x40a0

    add-float/2addr v9, v5

    add-float/2addr v8, v9

    .line 251
    const/high16 v9, 0x4080

    invoke-virtual {v0, v7, v9, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 252
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 253
    return-object v2

    .line 226
    .end local v1           #heightString:Ljava/lang/String;
    .end local v4           #sizeStr:Ljava/lang/String;
    .end local v5           #textSize:F
    .end local v6           #textWidth:F
    .end local v7           #widthString:Ljava/lang/String;
    .end local v8           #y:F
    :cond_d3
    const v9, -0xff01

    goto/16 :goto_31

    .line 244
    .restart local v1       #heightString:Ljava/lang/String;
    .restart local v4       #sizeStr:Ljava/lang/String;
    .restart local v5       #textSize:F
    .restart local v7       #widthString:Ljava/lang/String;
    :cond_d8
    const-wide v9, 0x3fe999999999999aL

    float-to-double v11, v5

    mul-double/2addr v9, v11

    double-to-float v5, v9

    goto :goto_78
.end method


# virtual methods
.method protected deliverResponse(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/google/android/finsky/utils/BitmapLoader$DebugImageRequest;->mResponseDelivered:Z

    if-eqz v0, :cond_5

    .line 218
    :goto_4
    return-void

    .line 216
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/utils/BitmapLoader$DebugImageRequest;->mResponseDelivered:Z

    .line 217
    invoke-super {p0, p1}, Lcom/android/volley/toolbox/ImageRequest;->deliverResponse(Landroid/graphics/Bitmap;)V

    goto :goto_4
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 184
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/BitmapLoader$DebugImageRequest;->deliverResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .registers 6
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/android/volley/toolbox/ImageRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v0

    .line 202
    .local v0, original:Lcom/android/volley/Response;,"Lcom/android/volley/Response<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v0}, Lcom/android/volley/Response;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_18

    sget-object v2, Lcom/google/android/finsky/config/G;->debugImageSizes:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_19

    .line 208
    .end local v0           #original:Lcom/android/volley/Response;,"Lcom/android/volley/Response<Landroid/graphics/Bitmap;>;"
    :cond_18
    :goto_18
    return-object v0

    .line 207
    .restart local v0       #original:Lcom/android/volley/Response;,"Lcom/android/volley/Response<Landroid/graphics/Bitmap;>;"
    :cond_19
    iget-object v2, v0, Lcom/android/volley/Response;->result:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v3, v3

    div-int/lit16 v3, v3, 0x400

    invoke-direct {p0, v2, v3}, Lcom/google/android/finsky/utils/BitmapLoader$DebugImageRequest;->overlayDebugInfo(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 208
    .local v1, overlaid:Landroid/graphics/Bitmap;
    iget-object v2, v0, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    invoke-static {v1, v2}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_18
.end method
