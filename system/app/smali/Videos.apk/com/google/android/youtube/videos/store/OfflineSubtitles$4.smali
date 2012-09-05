.class Lcom/google/android/youtube/videos/store/OfflineSubtitles$4;
.super Lcom/google/android/youtube/videos/store/AbstractFileStore;
.source "OfflineSubtitles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/store/OfflineSubtitles;->getSubtitleStore()Lcom/google/android/youtube/videos/store/AbstractFileStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/videos/store/AbstractFileStore",
        "<",
        "Lcom/google/android/youtube/core/model/SubtitleTrack;",
        "Lcom/google/android/youtube/core/model/Subtitle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/store/OfflineSubtitles;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/store/OfflineSubtitles;)V
    .registers 2
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles$4;->this$0:Lcom/google/android/youtube/videos/store/OfflineSubtitles;

    invoke-direct {p0}, Lcom/google/android/youtube/videos/store/AbstractFileStore;-><init>()V

    return-void
.end method


# virtual methods
.method protected generateFilename(Lcom/google/android/youtube/core/model/SubtitleTrack;)Ljava/lang/String;
    .registers 4
    .parameter "key"

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles$4;->this$0:Lcom/google/android/youtube/videos/store/OfflineSubtitles;

    #getter for: Lcom/google/android/youtube/videos/store/OfflineSubtitles;->cachePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->access$600(Lcom/google/android/youtube/videos/store/OfflineSubtitles;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateFilename(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "x0"

    .prologue
    .line 199
    check-cast p1, Lcom/google/android/youtube/core/model/SubtitleTrack;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/store/OfflineSubtitles$4;->generateFilename(Lcom/google/android/youtube/core/model/SubtitleTrack;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
