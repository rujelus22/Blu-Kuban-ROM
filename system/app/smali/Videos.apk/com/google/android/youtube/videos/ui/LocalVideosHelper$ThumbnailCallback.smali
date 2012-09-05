.class Lcom/google/android/youtube/videos/ui/LocalVideosHelper$ThumbnailCallback;
.super Ljava/lang/Object;
.source "LocalVideosHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/ui/LocalVideosHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/videos/LocalVideo;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$ThumbnailCallback;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$ThumbnailCallback;-><init>(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/videos/LocalVideo;Ljava/lang/Exception;)V
    .registers 3
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 195
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    check-cast p1, Lcom/google/android/youtube/videos/LocalVideo;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$ThumbnailCallback;->onError(Lcom/google/android/youtube/videos/LocalVideo;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/videos/LocalVideo;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "request"
    .parameter "response"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$ThumbnailCallback;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    #getter for: Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->adapter:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;
    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$200(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;->setThumbnail(Lcom/google/android/youtube/videos/LocalVideo;Landroid/graphics/Bitmap;)V

    .line 191
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    check-cast p1, Lcom/google/android/youtube/videos/LocalVideo;

    .end local p1
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$ThumbnailCallback;->onResponse(Lcom/google/android/youtube/videos/LocalVideo;Landroid/graphics/Bitmap;)V

    return-void
.end method
