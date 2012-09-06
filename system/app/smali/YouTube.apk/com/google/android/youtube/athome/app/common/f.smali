.class final Lcom/google/android/youtube/athome/app/common/f;
.super Lcom/google/android/youtube/athome/common/c;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/youtube/athome/common/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/youtube/athome/common/d;)Landroid/support/place/rpc/Flattenable;
    .registers 4
    .parameter

    .prologue
    .line 41
    new-instance v0, Lcom/google/android/youtube/athome/app/common/g;

    invoke-direct {v0}, Lcom/google/android/youtube/athome/app/common/g;-><init>()V

    const-string v1, "videoId"

    invoke-virtual {p1, v1}, Lcom/google/android/youtube/athome/common/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/athome/app/common/g;->a(Ljava/lang/String;)Lcom/google/android/youtube/athome/app/common/g;

    move-result-object v0

    const-string v1, "languageCode"

    invoke-virtual {p1, v1}, Lcom/google/android/youtube/athome/common/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/athome/app/common/g;->b(Ljava/lang/String;)Lcom/google/android/youtube/athome/app/common/g;

    move-result-object v0

    const-string v1, "trackName"

    invoke-virtual {p1, v1}, Lcom/google/android/youtube/athome/common/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/athome/app/common/g;->c(Ljava/lang/String;)Lcom/google/android/youtube/athome/app/common/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/athome/app/common/g;->a()Lcom/google/android/youtube/athome/app/common/AtHomeSubtitleTrack;

    move-result-object v0

    return-object v0
.end method
