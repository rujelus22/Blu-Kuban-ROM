.class Lcom/google/android/youtube/videos/store/OfflineSubtitles$2;
.super Ljava/lang/Object;
.source "OfflineSubtitles.java"

# interfaces
.implements Lcom/google/android/youtube/core/client/SubtitlesClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/store/OfflineSubtitles;->createStoringSubtitlesClient()Lcom/google/android/youtube/core/client/SubtitlesClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/store/OfflineSubtitles;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/store/OfflineSubtitles;)V
    .registers 2
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles$2;->this$0:Lcom/google/android/youtube/videos/store/OfflineSubtitles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestSubtitle(Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 4
    .parameter "subtitleTrack"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            "Lcom/google/android/youtube/core/model/Subtitle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/model/Subtitle;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles$2;->this$0:Lcom/google/android/youtube/videos/store/OfflineSubtitles;

    #getter for: Lcom/google/android/youtube/videos/store/OfflineSubtitles;->subtitleStorer:Lcom/google/android/youtube/core/async/Requester;
    invoke-static {v0}, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->access$200(Lcom/google/android/youtube/videos/store/OfflineSubtitles;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 169
    return-void
.end method

.method public requestSubtitleTracks(Ljava/lang/String;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 4
    .parameter "videoId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Ljava/lang/String;Ljava/util/List<Lcom/google/android/youtube/core/model/SubtitleTrack;>;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles$2;->this$0:Lcom/google/android/youtube/videos/store/OfflineSubtitles;

    #getter for: Lcom/google/android/youtube/videos/store/OfflineSubtitles;->subtitleTracksStorer:Lcom/google/android/youtube/core/async/Requester;
    invoke-static {v0}, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->access$300(Lcom/google/android/youtube/videos/store/OfflineSubtitles;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 174
    return-void
.end method
