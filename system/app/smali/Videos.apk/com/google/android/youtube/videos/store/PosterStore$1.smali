.class Lcom/google/android/youtube/videos/store/PosterStore$1;
.super Ljava/lang/Object;
.source "PosterStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/store/PosterStore;->getStoredPosterBytes(Ljava/lang/String;Lcom/google/android/youtube/core/async/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/store/PosterStore;

.field final synthetic val$callback:Lcom/google/android/youtube/core/async/Callback;

.field final synthetic val$videoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/store/PosterStore;Ljava/lang/String;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/youtube/videos/store/PosterStore$1;->this$0:Lcom/google/android/youtube/videos/store/PosterStore;

    iput-object p2, p0, Lcom/google/android/youtube/videos/store/PosterStore$1;->val$videoId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/youtube/videos/store/PosterStore$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 73
    iget-object v2, p0, Lcom/google/android/youtube/videos/store/PosterStore$1;->this$0:Lcom/google/android/youtube/videos/store/PosterStore;

    iget-object v3, p0, Lcom/google/android/youtube/videos/store/PosterStore$1;->val$videoId:Ljava/lang/String;

    #calls: Lcom/google/android/youtube/videos/store/PosterStore;->toFile(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v2, v3}, Lcom/google/android/youtube/videos/store/PosterStore;->access$000(Lcom/google/android/youtube/videos/store/PosterStore;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 74
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 75
    iget-object v2, p0, Lcom/google/android/youtube/videos/store/PosterStore$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v3, p0, Lcom/google/android/youtube/videos/store/PosterStore$1;->val$videoId:Ljava/lang/String;

    new-instance v4, Lcom/google/android/youtube/videos/store/PosterStore$NoStoredPosterException;

    iget-object v5, p0, Lcom/google/android/youtube/videos/store/PosterStore$1;->val$videoId:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/google/android/youtube/videos/store/PosterStore$NoStoredPosterException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 84
    :goto_1c
    return-void

    .line 80
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/google/android/youtube/videos/store/PosterStore$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v3, p0, Lcom/google/android/youtube/videos/store/PosterStore$1;->val$videoId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/videos/store/PosterStore$1;->this$0:Lcom/google/android/youtube/videos/store/PosterStore;

    invoke-virtual {v4, v1}, Lcom/google/android/youtube/videos/store/PosterStore;->getStoredBytes(Ljava/io/File;)[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2a} :catch_2b

    goto :goto_1c

    .line 81
    :catch_2b
    move-exception v0

    .line 82
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/android/youtube/videos/store/PosterStore$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v3, p0, Lcom/google/android/youtube/videos/store/PosterStore$1;->val$videoId:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_1c
.end method
