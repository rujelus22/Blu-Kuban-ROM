.class final Lcom/google/android/apps/plus/service/EsService$2;
.super Ljava/lang/Object;
.source "EsService.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/ImagesCache$ImageLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/EsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/plus/service/ImagesCache$ImageLoader",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadImageBytesFromStorage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;II)[B
    .registers 12
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 328
    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService$2;->loadImageBytesFromStorage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public loadImageBytesFromStorage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;II)[B
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "url"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 332
    invoke-static {p1, p2, p3}, Lcom/google/android/apps/plus/content/EsPostsData;->getMediaThumbnailBytes(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
