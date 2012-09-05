.class Lcom/google/android/youtube/videos/store/OfflineSubtitles$3;
.super Lcom/google/android/youtube/videos/store/AbstractFileStore;
.source "OfflineSubtitles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/store/OfflineSubtitles;->getSubtitleTracksStore()Lcom/google/android/youtube/videos/store/AbstractFileStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/videos/store/AbstractFileStore",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/youtube/core/model/SubtitleTrack;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/store/OfflineSubtitles;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/store/OfflineSubtitles;)V
    .registers 2
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles$3;->this$0:Lcom/google/android/youtube/videos/store/OfflineSubtitles;

    invoke-direct {p0}, Lcom/google/android/youtube/videos/store/AbstractFileStore;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic generateFilename(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "x0"

    .prologue
    .line 179
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/store/OfflineSubtitles$3;->generateFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected generateFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "key"

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles$3;->this$0:Lcom/google/android/youtube/videos/store/OfflineSubtitles;

    #getter for: Lcom/google/android/youtube/videos/store/OfflineSubtitles;->cachePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->access$400(Lcom/google/android/youtube/videos/store/OfflineSubtitles;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/store/OfflineSubtitles$3;->onResponse(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p2, response:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/SubtitleTrack;>;"
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/youtube/videos/store/OfflineSubtitles$3;->this$0:Lcom/google/android/youtube/videos/store/OfflineSubtitles;

    #getter for: Lcom/google/android/youtube/videos/store/OfflineSubtitles;->cachePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/youtube/videos/store/OfflineSubtitles;->access$500(Lcom/google/android/youtube/videos/store/OfflineSubtitles;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, subtitlesDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_14

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 193
    :cond_14
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/videos/store/AbstractFileStore;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    return-void
.end method
