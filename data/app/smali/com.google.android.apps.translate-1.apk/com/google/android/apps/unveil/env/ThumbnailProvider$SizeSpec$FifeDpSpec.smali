.class Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeDpSpec;
.super Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeSpec;
.source "ThumbnailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FifeDpSpec"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeSpec;-><init>(II)V

    .line 138
    return-void
.end method


# virtual methods
.method public getSizedUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "c"
    .parameter "baseUrl"

    .prologue
    .line 142
    iget v0, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeDpSpec;->width:I

    int-to-float v0, v0

    invoke-static {v0, p1}, Lcom/google/android/apps/unveil/env/PixelUtils;->dipToPix(FLandroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeDpSpec;->height:I

    int-to-float v1, v1

    invoke-static {v1, p1}, Lcom/google/android/apps/unveil/env/PixelUtils;->dipToPix(FLandroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p2, v0, v1, v2}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeSpec;->getSizedUrl(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
