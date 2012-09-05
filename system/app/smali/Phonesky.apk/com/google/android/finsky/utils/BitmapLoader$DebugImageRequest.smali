.class Lcom/google/android/finsky/utils/BitmapLoader$DebugImageRequest;
.super Lcom/android/volley/toolbox/ImageRequest;
.source "BitmapLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/BitmapLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DebugImageRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/BitmapLoader;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V
    .registers 15
    .parameter
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
    .line 183
    .local p3, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/google/android/finsky/utils/BitmapLoader$DebugImageRequest;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 184
    invoke-direct/range {v0 .. v6}, Lcom/android/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V

    .line 185
    return-void
.end method

.method private overlayDebugInfo(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "bitmap"
    .parameter "responseSizeInK"

    .prologue
    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "k"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, sizeStr:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 207
    .local v1, newBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 208
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v0, p1, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 209
    new-instance v2, Landroid/graphics/Paint;

    const/16 v4, 0x8

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 210
    .local v2, paint:Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/google/android/finsky/utils/BitmapLoader$DebugImageRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ggpht.com"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_69

    const v4, -0xff0001

    :goto_47
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    const/high16 v4, 0x4220

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 212
    const/high16 v4, 0x4040

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 213
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 214
    const/high16 v4, 0x4080

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    int-to-float v5, v5

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 216
    return-object v1

    .line 210
    :cond_69
    const v4, -0xff01

    goto :goto_47
.end method


# virtual methods
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
    .line 190
    invoke-super {p0, p1}, Lcom/android/volley/toolbox/ImageRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v0

    .line 194
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

    .line 200
    .end local v0           #original:Lcom/android/volley/Response;,"Lcom/android/volley/Response<Landroid/graphics/Bitmap;>;"
    :cond_18
    :goto_18
    return-object v0

    .line 199
    .restart local v0       #original:Lcom/android/volley/Response;,"Lcom/android/volley/Response<Landroid/graphics/Bitmap;>;"
    :cond_19
    iget-object v2, v0, Lcom/android/volley/Response;->result:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v3, v3

    div-int/lit16 v3, v3, 0x400

    invoke-direct {p0, v2, v3}, Lcom/google/android/finsky/utils/BitmapLoader$DebugImageRequest;->overlayDebugInfo(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 200
    .local v1, overlaid:Landroid/graphics/Bitmap;
    iget-object v2, v0, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    invoke-static {v1, v2}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_18
.end method
