.class public Lcom/google/android/finsky/utils/ThumbnailUtils;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFifeUrl(Ljava/lang/String;II)Ljava/lang/String;
    .registers 6
    .parameter "url"
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, result:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 184
    .local v0, hasWidth:Z
    if-lez p1, :cond_12

    .line 185
    const/4 v0, 0x1

    .line 186
    const-string v2, "=w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    :cond_12
    if-lez p2, :cond_24

    .line 189
    if-eqz v0, :cond_29

    .line 190
    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    :goto_1b
    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 192
    :cond_29
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b
.end method

.method private static getBestImage(Ljava/util/List;II)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .registers 12
    .parameter
    .parameter "minWidth"
    .parameter "minHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;II)",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;"
        }
    .end annotation

    .prologue
    .local p0, images:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    const/4 v7, 0x0

    .line 145
    if-nez p0, :cond_5

    move-object v1, v7

    .line 178
    :cond_4
    :goto_4
    return-object v1

    .line 149
    :cond_5
    const v6, 0x7fffffff

    .line 150
    .local v6, selectedWidth:I
    const v4, 0x7fffffff

    .line 151
    .local v4, selectedHeight:I
    const/4 v5, 0x0

    .line 152
    .local v5, selectedImage:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 153
    .local v1, image:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getSupportsFifeUrlOptions()Z

    move-result v8

    if-nez v8, :cond_4

    .line 155
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getDimension()Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 156
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getDimension()Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getWidth()I

    move-result v3

    .line 157
    .local v3, imgWidth:I
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getDimension()Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getHeight()I

    move-result v2

    .line 160
    .local v2, imgHeight:I
    if-lt v3, p1, :cond_10

    if-lt v2, p2, :cond_10

    if-lt v6, v3, :cond_10

    if-lt v4, v2, :cond_10

    .line 162
    move v6, v3

    .line 163
    move v4, v2

    .line 164
    move-object v5, v1

    goto :goto_10

    .line 170
    .end local v1           #image:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .end local v2           #imgHeight:I
    .end local v3           #imgWidth:I
    :cond_44
    if-eqz v5, :cond_48

    move-object v1, v5

    .line 171
    goto :goto_4

    .line 175
    :cond_48
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5c

    .line 176
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-object v1, v7

    goto :goto_4

    :cond_5c
    move-object v1, v7

    .line 178
    goto :goto_4
.end method

.method private static getBestImageUrl(Ljava/util/List;II)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter "minWidth"
    .parameter "minHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, images:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    invoke-static {p0, p1, p2}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getBestImage(Ljava/util/List;II)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-result-object v0

    .line 130
    .local v0, image:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    if-nez v0, :cond_8

    .line 131
    const/4 v1, 0x0

    .line 138
    :goto_7
    return-object v1

    .line 134
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getSupportsFifeUrlOptions()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 135
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/google/android/finsky/utils/ThumbnailUtils;->buildFifeUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 138
    :cond_17
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public static getIconUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;
    .registers 5
    .parameter "document"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 38
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getBestImageUrl(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, url:Ljava/lang/String;
    if-nez v0, :cond_14

    .line 40
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getBestImageUrl(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v0

    .line 42
    :cond_14
    return-object v0
.end method

.method public static varargs getImageFromDocument(Lcom/google/android/finsky/api/model/Document;II[I)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .registers 10
    .parameter "document"
    .parameter "width"
    .parameter "height"
    .parameter "imageTypes"

    .prologue
    .line 47
    move-object v0, p3

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v3, :cond_15

    aget v2, v0, v1

    .line 48
    .local v2, imageType:I
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getBestImage(Ljava/util/List;II)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-result-object v4

    .line 49
    .local v4, result:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    if-eqz v4, :cond_12

    .line 53
    .end local v2           #imageType:I
    .end local v4           #result:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :goto_11
    return-object v4

    .line 47
    .restart local v2       #imageType:I
    .restart local v4       #result:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 53
    .end local v2           #imageType:I
    .end local v4           #result:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_15
    const/4 v4, 0x0

    goto :goto_11
.end method

.method public static getPageHeaderBannerUrlFromDocument(Lcom/google/android/finsky/api/model/Document;ZII)Ljava/lang/String;
    .registers 6
    .parameter "document"
    .parameter "requestWideAssImage"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 94
    if-eqz p1, :cond_d

    const/16 v0, 0x8

    .line 96
    .local v0, imageType:I
    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getBestImageUrl(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 94
    .end local v0           #imageType:I
    :cond_d
    const/16 v0, 0x9

    goto :goto_4
.end method

.method public static getPreviewUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;
    .registers 4
    .parameter "document"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getBestImageUrl(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPromoBitmapUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;
    .registers 4
    .parameter "document"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 80
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getBestImageUrl(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenshotUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;
    .registers 4
    .parameter "document"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 67
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getBestImageUrl(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setImageBitmapWithFade(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 9
    .parameter "imageView"
    .parameter "bitmap"

    .prologue
    .line 209
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 210
    .local v3, oldDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_26

    instance-of v4, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_26

    move-object v2, v3

    .line 211
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 212
    .local v2, oldBd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 213
    .local v1, current:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v1, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 216
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3           #oldDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 217
    .restart local v3       #oldDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    .end local v1           #current:Landroid/graphics/Bitmap;
    .end local v2           #oldBd:Landroid/graphics/drawable/BitmapDrawable;
    :cond_26
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v0, v4, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 220
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    const/16 v4, 0x33

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 221
    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/ThumbnailUtils;->setImageDrawableWithFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 222
    return-void
.end method

.method public static setImageDrawableWithFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .parameter "imageView"
    .parameter "drawable"

    .prologue
    const/4 v4, 0x1

    .line 231
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 232
    .local v1, oldDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_20

    .line 233
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    aput-object p1, v2, v4

    invoke-direct {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 236
    .local v0, newDrawable:Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 237
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    const/16 v2, 0xfa

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 242
    .end local v0           #newDrawable:Landroid/graphics/drawable/TransitionDrawable;
    :goto_1f
    return-void

    .line 240
    :cond_20
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1f
.end method
