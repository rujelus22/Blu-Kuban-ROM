.class Lcom/google/android/apps/plus/service/ImageCache$2;
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
        "Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;",
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
    .line 335
    iput-object p1, p0, Lcom/google/android/apps/plus/service/ImageCache$2;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Lcom/google/android/apps/plus/content/ImageRequest;Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;)I
    .registers 4
    .parameter "request"
    .parameter "value"

    .prologue
    .line 339
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->size()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 335
    check-cast p1, Lcom/google/android/apps/plus/content/ImageRequest;

    .end local p1
    check-cast p2, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/service/ImageCache$2;->sizeOf(Lcom/google/android/apps/plus/content/ImageRequest;Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;)I

    move-result v0

    return v0
.end method
