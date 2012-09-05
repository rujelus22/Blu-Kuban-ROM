.class public Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;
.super Ljava/lang/Object;
.source "MovieTableViewHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/youtube/core/async/Callback;
.implements Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/ui/MovieTableViewHelper$ThumbnailCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/Page",
        "<",
        "Lcom/google/android/youtube/core/model/Video;",
        ">;>;",
        "Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;"
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

.field private currentRequest:Lcom/google/android/youtube/core/async/GDataRequest;

.field private final emptyStatusMessage:I

.field private final inflater:Landroid/view/LayoutInflater;

.field private final itemLayout:I

.field private final maxItems:I

.field private final missingPoster:Landroid/graphics/Bitmap;

.field private final moviePageCallback:Lcom/google/android/youtube/core/async/ActivityCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/ActivityCallback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;"
        }
    .end annotation
.end field

.field private final moviePageRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;"
        }
    .end annotation
.end field

.field private final posterArtRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final posters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final source:Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

.field private final statusHelper:Lcom/google/android/youtube/core/ui/StatusHelper;

.field private final table:Lcom/google/android/youtube/videos/ui/MovieTableView;

.field private userAuth:Lcom/google/android/youtube/core/model/UserAuth;

.field private final viewHelper:Lcom/google/android/youtube/videos/ui/MovieViewHelper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/videos/ui/MovieTableView;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;ILandroid/view/View;ILcom/google/android/youtube/videos/VideosAnalytics;Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;)V
    .registers 12
    .parameter "activity"
    .parameter "table"
    .parameter
    .parameter
    .parameter "itemLayout"
    .parameter "statusView"
    .parameter "emptyStatusMessage"
    .parameter "analytics"
    .parameter "source"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/youtube/videos/ui/MovieTableView;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;I",
            "Landroid/view/View;",
            "I",
            "Lcom/google/android/youtube/videos/VideosAnalytics;",
            "Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    .local p3, moviePageRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    .local p4, posterArtRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->activity:Landroid/app/Activity;

    .line 79
    invoke-static {p8}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/VideosAnalytics;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

    .line 80
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/ui/MovieTableView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->table:Lcom/google/android/youtube/videos/ui/MovieTableView;

    .line 81
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->moviePageRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 82
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    invoke-direct {v0, p1, p0}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->moviePageCallback:Lcom/google/android/youtube/core/async/ActivityCallback;

    .line 83
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->posterArtRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 84
    iput p5, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->itemLayout:I

    .line 85
    iput-object p9, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->source:Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

    .line 86
    invoke-virtual {p2}, Lcom/google/android/youtube/videos/ui/MovieTableView;->getMaxItems()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->maxItems:I

    .line 87
    iput p7, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->emptyStatusMessage:I

    .line 89
    invoke-static {p1, p6, p0}, Lcom/google/android/youtube/core/ui/StatusHelper;->createFromParent(Landroid/content/Context;Landroid/view/View;Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;)Lcom/google/android/youtube/core/ui/StatusHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->statusHelper:Lcom/google/android/youtube/core/ui/StatusHelper;

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->statusHelper:Lcom/google/android/youtube/core/ui/StatusHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/StatusHelper;->init()V

    .line 92
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->inflater:Landroid/view/LayoutInflater;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->posters:Ljava/util/Map;

    .line 94
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020015

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->missingPoster:Landroid/graphics/Bitmap;

    .line 95
    new-instance v0, Lcom/google/android/youtube/videos/ui/MovieViewHelper;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/videos/ui/MovieViewHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->viewHelper:Lcom/google/android/youtube/videos/ui/MovieViewHelper;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;)Lcom/google/android/youtube/videos/ui/MovieViewHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->viewHelper:Lcom/google/android/youtube/videos/ui/MovieViewHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->missingPoster:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private onVideo(Lcom/google/android/youtube/core/model/Video;)V
    .registers 11
    .parameter "video"

    .prologue
    .line 155
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->inflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->itemLayout:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 156
    .local v3, view:Landroid/view/View;
    iget-object v4, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 157
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    new-instance v0, Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;

    invoke-direct {v0, v3}, Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;-><init>(Landroid/view/View;)V

    .line 161
    .local v0, holder:Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;
    iget-object v4, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Video$Movie;->posterUri:Landroid/net/Uri;

    if-nez v4, :cond_4b

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->missingPoster:Landroid/graphics/Bitmap;

    .line 163
    .local v1, poster:Landroid/graphics/Bitmap;
    :goto_1f
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->missingPoster:Landroid/graphics/Bitmap;

    if-ne v1, v4, :cond_59

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 165
    .local v2, posterScaleType:Landroid/widget/ImageView$ScaleType;
    :goto_25
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->viewHelper:Lcom/google/android/youtube/videos/ui/MovieViewHelper;

    invoke-virtual {v4, v0, p1, v1, v2}, Lcom/google/android/youtube/videos/ui/MovieViewHelper;->populateViews(Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;Lcom/google/android/youtube/core/model/Video;Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V

    .line 167
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->table:Lcom/google/android/youtube/videos/ui/MovieTableView;

    invoke-virtual {v4, v3}, Lcom/google/android/youtube/videos/ui/MovieTableView;->addView(Landroid/view/View;)V

    .line 169
    iget-object v4, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Video$Movie;->posterUri:Landroid/net/Uri;

    if-eqz v4, :cond_4a

    .line 170
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->posterArtRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v5, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/Video$Movie;->posterUri:Landroid/net/Uri;

    new-instance v6, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v7, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->activity:Landroid/app/Activity;

    new-instance v8, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper$ThumbnailCallback;

    invoke-direct {v8, p0, p1, v0}, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper$ThumbnailCallback;-><init>(Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;)V

    invoke-direct {v6, v7, v8}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v4, v5, v6}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 174
    :cond_4a
    return-void

    .line 161
    .end local v1           #poster:Landroid/graphics/Bitmap;
    .end local v2           #posterScaleType:Landroid/widget/ImageView$ScaleType;
    :cond_4b
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->posters:Ljava/util/Map;

    iget-object v5, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/Video$Movie;->posterUri:Landroid/net/Uri;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    move-object v1, v4

    goto :goto_1f

    .line 163
    .restart local v1       #poster:Landroid/graphics/Bitmap;
    :cond_59
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_25
.end method

.method private showEmpty()V
    .registers 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->statusHelper:Lcom/google/android/youtube/core/ui/StatusHelper;

    iget v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->emptyStatusMessage:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/ui/StatusHelper;->setMessage(IZ)V

    .line 185
    return-void
.end method


# virtual methods
.method public final init(Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/GDataRequest;)V
    .registers 5
    .parameter "userAuth"
    .parameter "request"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->reset()V

    .line 100
    iput-object p2, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->currentRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 101
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->statusHelper:Lcom/google/android/youtube/core/ui/StatusHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/StatusHelper;->setLoading()V

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->moviePageRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->moviePageCallback:Lcom/google/android/youtube/core/async/ActivityCallback;

    invoke-interface {v0, p2, v1}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 104
    return-void
.end method

.method public final initEmpty()V
    .registers 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->reset()V

    .line 108
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->showEmpty()V

    .line 109
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_18

    .line 178
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->source:Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/VideosAnalytics;->trackToShopEvent(Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;)V

    .line 179
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v1, v0, v2}, Lcom/google/android/youtube/core/utils/ExternalIntents;->startShopForVideoDetails(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 181
    :cond_18
    return-void
.end method

.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .registers 6
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->statusHelper:Lcom/google/android/youtube/core/ui/StatusHelper;

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->activity:Landroid/app/Activity;

    invoke-static {v1, p2}, Lcom/google/android/youtube/core/ErrorHelper;->humanize(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/ui/StatusHelper;->setErrorMessage(Ljava/lang/String;Z)V

    .line 152
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V
    .registers 10
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p2, response:Lcom/google/android/youtube/core/model/Page;,"Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;"
    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->currentRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    if-ne p1, v5, :cond_45

    .line 126
    iget-object v3, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    .line 127
    .local v3, responseEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Video;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    .local v1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/youtube/core/model/Video;>;"
    const/4 v0, 0x0

    .line 130
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3d

    iget v5, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->maxItems:I

    if-ge v0, v5, :cond_3d

    .line 131
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/model/Video;

    .line 134
    .local v4, video:Lcom/google/android/youtube/core/model/Video;
    invoke-virtual {v4}, Lcom/google/android/youtube/core/model/Video;->isMovie()Z

    move-result v5

    if-eqz v5, :cond_3a

    iget-object v5, v4, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v6, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-ne v5, v6, :cond_3a

    iget-object v5, v4, Lcom/google/android/youtube/core/model/Video;->streams:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3a

    .line 135
    invoke-direct {p0, v4}, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->onVideo(Lcom/google/android/youtube/core/model/Video;)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    .line 130
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 140
    .end local v4           #video:Lcom/google/android/youtube/core/model/Video;
    :cond_3d
    if-nez v0, :cond_46

    .line 141
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->showEmpty()V

    .line 146
    :goto_42
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->currentRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 148
    .end local v0           #count:I
    .end local v1           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/youtube/core/model/Video;>;"
    .end local v2           #i:I
    .end local v3           #responseEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Video;>;"
    :cond_45
    return-void

    .line 143
    .restart local v0       #count:I
    .restart local v1       #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/youtube/core/model/Video;>;"
    .restart local v2       #i:I
    .restart local v3       #responseEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Video;>;"
    :cond_46
    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->statusHelper:Lcom/google/android/youtube/core/ui/StatusHelper;

    invoke-virtual {v5}, Lcom/google/android/youtube/core/ui/StatusHelper;->hide()V

    goto :goto_42
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V

    return-void
.end method

.method public onRetry()V
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->currentRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    if-eqz v0, :cond_f

    .line 120
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->currentRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->init(Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 122
    :cond_f
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 113
    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->currentRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->statusHelper:Lcom/google/android/youtube/core/ui/StatusHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/StatusHelper;->hide()V

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->table:Lcom/google/android/youtube/videos/ui/MovieTableView;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/MovieTableView;->clear()V

    .line 116
    return-void
.end method
