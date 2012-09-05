.class final Lcom/google/android/youtube/app/ui/cy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/cv;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/cv;)V
    .registers 3
    .parameter

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/ui/cy;-><init>(Lcom/google/android/youtube/app/ui/cv;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/ui/cv;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cy;->a:Lcom/google/android/youtube/app/ui/cv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 271
    const-string v0, "MusicVideosRequester failed"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 271
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/MusicVideo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/google/android/youtube/core/model/MusicVideo;->videoId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is a music video"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cy;->a:Lcom/google/android/youtube/app/ui/cv;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/cv;->a(Lcom/google/android/youtube/app/ui/cv;)Lcom/google/android/youtube/core/a/d;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/a/x;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/MusicVideo;->videoId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/a/x;->a(Ljava/lang/String;)V

    goto :goto_6

    :cond_37
    return-void
.end method
