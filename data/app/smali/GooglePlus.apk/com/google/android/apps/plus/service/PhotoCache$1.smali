.class Lcom/google/android/apps/plus/service/PhotoCache$1;
.super Landroid/support/v4/util/LruCache;
.source "PhotoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/PhotoCache;-><init>(Lcom/google/android/apps/plus/service/PhotoCache$CacheListener;Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<TE;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/service/PhotoCache;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/PhotoCache;I)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 92
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$1;,"Lcom/google/android/apps/plus/service/PhotoCache.1;"
    iput-object p1, p0, Lcom/google/android/apps/plus/service/PhotoCache$1;->this$0:Lcom/google/android/apps/plus/service/PhotoCache;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Ljava/lang/Object;Landroid/graphics/Bitmap;)I
    .registers 6
    .parameter
    .parameter "image"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Landroid/graphics/Bitmap;",
            ")I"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$1;,"Lcom/google/android/apps/plus/service/PhotoCache.1;"
    .local p1, key:Ljava/lang/Object;,"TE;"
    if-nez p2, :cond_4

    const/4 v0, 0x0

    .line 96
    .local v0, byteCount:I
    :goto_3
    return v0

    .line 95
    .end local v0           #byteCount:I
    :cond_4
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v0, v1, v2

    goto :goto_3
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$1;,"Lcom/google/android/apps/plus/service/PhotoCache.1;"
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/service/PhotoCache$1;->sizeOf(Ljava/lang/Object;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
