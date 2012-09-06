.class public abstract Lcom/google/android/apps/unveil/env/Picture;
.super Ljava/lang/Object;
.source "Picture.java"


# static fields
.field public static final SOURCE_CAMERA:I = 0x1

.field public static final SOURCE_SHARED:I = 0x2

.field public static final SOURCE_UNKNOWN:I = -0x1


# instance fields
.field private cropArea:Landroid/graphics/Rect;

.field private final id:J

.field private orientation:I

.field private volatile recycled:Z

.field protected final source:I


# direct methods
.method protected constructor <init>(I)V
    .registers 3
    .parameter "orientation"

    .prologue
    .line 51
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/unveil/env/Picture;-><init>(II)V

    .line 52
    return-void
.end method

.method protected constructor <init>(II)V
    .registers 5
    .parameter "orientation"
    .parameter "source"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/env/Picture;->recycled:Z

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/env/Picture;->id:J

    .line 46
    iput p1, p0, Lcom/google/android/apps/unveil/env/Picture;->orientation:I

    .line 47
    iput p2, p0, Lcom/google/android/apps/unveil/env/Picture;->source:I

    .line 48
    return-void
.end method


# virtual methods
.method protected final checkNotRecycled()V
    .registers 5

    .prologue
    .line 165
    iget-boolean v1, p0, Lcom/google/android/apps/unveil/env/Picture;->recycled:Z

    if-eqz v1, :cond_18

    .line 167
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_a} :catch_a

    .line 168
    :catch_a
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/RuntimeException;
    new-instance v1, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v1}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    const-string v2, "Exception!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_18
    return-void
.end method

.method public abstract getByteSize()I
.end method

.method public final getCopyOfBitmap()Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/Picture;->peekBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 127
    .local v0, ourBitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_7
.end method

.method public getCropArea()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/Picture;->cropArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method public abstract getCroppedPicture()Lcom/google/android/apps/unveil/env/Picture;
.end method

.method public abstract getDrawable()Landroid/graphics/drawable/BitmapDrawable;
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/android/apps/unveil/env/Picture;->id:J

    return-wide v0
.end method

.method public abstract getJpegData()[B
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/google/android/apps/unveil/env/Picture;->orientation:I

    return v0
.end method

.method public abstract getSize()Lcom/google/android/apps/unveil/env/Size;
.end method

.method public final getSource()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Lcom/google/android/apps/unveil/env/Picture;->source:I

    return v0
.end method

.method public abstract getYuvData()[B
.end method

.method public final isRecycled()Z
    .registers 2

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/env/Picture;->recycled:Z

    return v0
.end method

.method public abstract peekBitmap()Landroid/graphics/Bitmap;
.end method

.method public final populateWithBitmap(Landroid/widget/ImageView;)V
    .registers 3
    .parameter "imageView"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/Picture;->peekBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    sget v0, Lcom/google/android/apps/unveil/R$id;->image_view_bitmap:I

    invoke-virtual {p1, v0, p0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 137
    return-void
.end method

.method public recycle()V
    .registers 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/Picture;->checkNotRecycled()V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/env/Picture;->recycled:Z

    .line 158
    return-void
.end method

.method public setCropArea(Landroid/graphics/Rect;)V
    .registers 4
    .parameter "cropArea"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/Picture;->cropArea:Landroid/graphics/Rect;

    if-eqz v0, :cond_c

    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Crop area already set!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_c
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/Picture;->cropArea:Landroid/graphics/Rect;

    .line 64
    return-void
.end method

.method public setOrientation(I)V
    .registers 2
    .parameter "orientation"

    .prologue
    .line 71
    iput p1, p0, Lcom/google/android/apps/unveil/env/Picture;->orientation:I

    .line 72
    return-void
.end method
