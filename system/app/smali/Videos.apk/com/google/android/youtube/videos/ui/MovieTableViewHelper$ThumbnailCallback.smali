.class Lcom/google/android/youtube/videos/ui/MovieTableViewHelper$ThumbnailCallback;
.super Ljava/lang/Object;
.source "MovieTableViewHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;
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
        "Landroid/net/Uri;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;

.field private video:Lcom/google/android/youtube/core/model/Video;

.field private viewHolder:Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;)V
    .registers 4
    .parameter
    .parameter "video"
    .parameter "viewHolder"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper$ThumbnailCallback;->this$0:Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p2, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper$ThumbnailCallback;->video:Lcom/google/android/youtube/core/model/Video;

    .line 194
    iput-object p3, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper$ThumbnailCallback;->viewHolder:Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;

    .line 195
    return-void
.end method


# virtual methods
.method public onError(Landroid/net/Uri;Ljava/lang/Exception;)V
    .registers 8
    .parameter "uri"
    .parameter "exception"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper$ThumbnailCallback;->this$0:Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;

    #getter for: Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->viewHelper:Lcom/google/android/youtube/videos/ui/MovieViewHelper;
    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->access$000(Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;)Lcom/google/android/youtube/videos/ui/MovieViewHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper$ThumbnailCallback;->viewHolder:Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;

    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper$ThumbnailCallback;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v3, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper$ThumbnailCallback;->this$0:Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;

    #getter for: Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->missingPoster:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->access$100(Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/videos/ui/MovieViewHelper;->populateViews(Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;Lcom/google/android/youtube/core/model/Video;Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V

    .line 203
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper$ThumbnailCallback;->onError(Landroid/net/Uri;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .registers 7
    .parameter "uri"
    .parameter "response"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper$ThumbnailCallback;->this$0:Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;

    #getter for: Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->viewHelper:Lcom/google/android/youtube/videos/ui/MovieViewHelper;
    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->access$000(Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;)Lcom/google/android/youtube/videos/ui/MovieViewHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper$ThumbnailCallback;->viewHolder:Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;

    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper$ThumbnailCallback;->video:Lcom/google/android/youtube/core/model/Video;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/google/android/youtube/videos/ui/MovieViewHelper;->populateViews(Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;Lcom/google/android/youtube/core/model/Video;Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V

    .line 199
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    check-cast p1, Landroid/net/Uri;

    .end local p1
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper$ThumbnailCallback;->onResponse(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method
