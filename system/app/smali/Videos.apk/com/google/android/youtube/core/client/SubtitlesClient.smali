.class public interface abstract Lcom/google/android/youtube/core/client/SubtitlesClient;
.super Ljava/lang/Object;
.source "SubtitlesClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/client/SubtitlesClient$Provider;
    }
.end annotation


# virtual methods
.method public abstract requestSubtitle(Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/async/Callback;)V
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
.end method

.method public abstract requestSubtitleTracks(Ljava/lang/String;Lcom/google/android/youtube/core/async/Callback;)V
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
.end method
