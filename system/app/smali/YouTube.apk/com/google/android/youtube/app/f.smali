.class final Lcom/google/android/youtube/app/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/YouTubeApplication;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 2
    .parameter

    .prologue
    .line 619
    iput-object p1, p0, Lcom/google/android/youtube/app/f;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 621
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 622
    iget-object v0, p0, Lcom/google/android/youtube/app/f;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_19

    aget-object v3, v1, v0

    .line 623
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 625
    :cond_19
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 626
    return-void
.end method
