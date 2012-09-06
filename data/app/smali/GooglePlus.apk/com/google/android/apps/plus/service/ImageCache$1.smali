.class Lcom/google/android/apps/plus/service/ImageCache$1;
.super Landroid/support/v4/util/LruCache;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/ImageCache;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Lcom/google/android/apps/plus/content/ImageRequest;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/service/ImageCache;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/ImageCache;I)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/google/android/apps/plus/service/ImageCache$1;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Lcom/google/android/apps/plus/content/ImageRequest;Ljava/lang/Object;)I
    .registers 7
    .parameter "key"
    .parameter "value"

    .prologue
    .line 322
    instance-of v2, p2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_11

    move-object v0, p2

    .line 323
    check-cast v0, Landroid/graphics/Bitmap;

    .line 324
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    .line 330
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_10
    return v2

    .line 325
    :cond_11
    instance-of v2, p2, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_24

    move-object v1, p2

    .line 326
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 328
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0xa

    goto :goto_10

    .line 330
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_24
    const/4 v2, 0x0

    goto :goto_10
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 318
    check-cast p1, Lcom/google/android/apps/plus/content/ImageRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/service/ImageCache$1;->sizeOf(Lcom/google/android/apps/plus/content/ImageRequest;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
