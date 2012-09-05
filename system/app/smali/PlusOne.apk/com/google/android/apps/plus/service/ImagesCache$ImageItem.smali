.class Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;
.super Ljava/lang/Object;
.source "ImagesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/ImagesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mBitmapRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mBytes:[B

.field private final mKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private mUsageCount:I


# direct methods
.method constructor <init>(Ljava/lang/Object;[BLandroid/graphics/Bitmap;)V
    .registers 5
    .parameter
    .parameter "bytes"
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;[B",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;,"Lcom/google/android/apps/plus/service/ImagesCache$ImageItem<TE;>;"
    .local p1, key:Ljava/lang/Object;,"TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->mKey:Ljava/lang/Object;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->mUsageCount:I

    .line 67
    iput-object p2, p0, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->mBytes:[B

    .line 68
    invoke-virtual {p0, p3}, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 69
    return-void
.end method


# virtual methods
.method getBitmap()Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;,"Lcom/google/android/apps/plus/service/ImagesCache$ImageItem<TE;>;"
    const/4 v1, 0x0

    .line 103
    iget-object v2, p0, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->mBytes:[B

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->mBytes:[B

    array-length v2, v2

    if-nez v2, :cond_c

    :cond_a
    move-object v0, v1

    .line 114
    :cond_b
    :goto_b
    return-object v0

    .line 108
    :cond_c
    iget-object v2, p0, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->mBitmapRef:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_1a

    .line 109
    iget-object v2, p0, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->mBitmapRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 110
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_b

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1a
    move-object v0, v1

    .line 114
    goto :goto_b
.end method

.method getBytes()[B
    .registers 2

    .prologue
    .line 96
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;,"Lcom/google/android/apps/plus/service/ImagesCache$ImageItem<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->mBytes:[B

    return-object v0
.end method

.method getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;,"Lcom/google/android/apps/plus/service/ImagesCache$ImageItem<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->mKey:Ljava/lang/Object;

    return-object v0
.end method

.method getUsageCount()I
    .registers 2

    .prologue
    .line 82
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;,"Lcom/google/android/apps/plus/service/ImagesCache$ImageItem<TE;>;"
    iget v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->mUsageCount:I

    return v0
.end method

.method incrUsageCount()V
    .registers 2

    .prologue
    .line 89
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;,"Lcom/google/android/apps/plus/service/ImagesCache$ImageItem<TE;>;"
    iget v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->mUsageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->mUsageCount:I

    .line 90
    return-void
.end method

.method setBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"

    .prologue
    .line 121
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;,"Lcom/google/android/apps/plus/service/ImagesCache$ImageItem<TE;>;"
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->mBitmapRef:Ljava/lang/ref/SoftReference;

    .line 122
    return-void
.end method
