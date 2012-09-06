.class final Lcom/google/android/youtube/core/transfer/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/transfer/Transfer;

.field final synthetic b:Lcom/google/android/youtube/core/transfer/DownloadService;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/transfer/DownloadService;Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/a;->b:Lcom/google/android/youtube/core/transfer/DownloadService;

    iput-object p2, p0, Lcom/google/android/youtube/core/transfer/a;->a:Lcom/google/android/youtube/core/transfer/Transfer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 57
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/a;->a:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v1, v1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to delete download: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/a;->a:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v1, v1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 61
    :cond_2b
    return-void
.end method
