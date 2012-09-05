.class public Lcom/google/android/youtube/videos/async/OfflineStreamRequester;
.super Ljava/lang/Object;
.source "OfflineStreamRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Requester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Requester",
        "<",
        "Landroid/util/Pair",
        "<",
        "Lcom/google/android/youtube/core/model/Purchase;",
        "Lcom/google/android/youtube/core/model/UserAuth;",
        ">;",
        "Landroid/util/Pair",
        "<",
        "Lcom/google/android/youtube/core/model/Stream;",
        "Lcom/google/android/youtube/videos/DrmManager$Identifiers;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final videosPlatformUtil:Lcom/google/android/youtube/videos/VideosPlatformUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/videos/VideosPlatformUtil;)V
    .registers 4
    .parameter "context"
    .parameter "videosPlatformUtil"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester;->context:Landroid/content/Context;

    .line 54
    const-string v0, "videosPlatformUtil cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/VideosPlatformUtil;

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester;->videosPlatformUtil:Lcom/google/android/youtube/videos/VideosPlatformUtil;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/async/OfflineStreamRequester;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/async/OfflineStreamRequester;)Lcom/google/android/youtube/videos/VideosPlatformUtil;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester;->videosPlatformUtil:Lcom/google/android/youtube/videos/VideosPlatformUtil;

    return-object v0
.end method


# virtual methods
.method public request(Landroid/util/Pair;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            ">;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            ">;",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/youtube/core/model/Stream;",
            "Lcom/google/android/youtube/videos/DrmManager$Identifiers;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, request:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/model/UserAuth;>;"
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Landroid/util/Pair<Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/model/UserAuth;>;Landroid/util/Pair<Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/videos/DrmManager$Identifiers;>;>;"
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/youtube/core/model/Purchase;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    .line 62
    .local v0, videoId:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/youtube/videos/async/OfflineStreamRequester;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/youtube/videos/transfer/VideoDownloadService;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/google/android/youtube/videos/async/OfflineStreamRequester$ServiceCallback;-><init>(Lcom/google/android/youtube/videos/async/OfflineStreamRequester;Ljava/lang/String;Landroid/util/Pair;Lcom/google/android/youtube/core/async/Callback;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 66
    return-void
.end method

.method public bridge synthetic request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    check-cast p1, Landroid/util/Pair;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/async/OfflineStreamRequester;->request(Landroid/util/Pair;Lcom/google/android/youtube/core/async/Callback;)V

    return-void
.end method
