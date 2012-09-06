.class final Lcom/google/android/youtube/app/ui/di;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/dh;

.field private final b:Lcom/google/android/youtube/core/transfer/Transfer;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/ui/dh;Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/di;->a:Lcom/google/android/youtube/app/ui/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/di;->b:Lcom/google/android/youtube/core/transfer/Transfer;

    .line 225
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/dh;Lcom/google/android/youtube/core/transfer/Transfer;B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/ui/di;-><init>(Lcom/google/android/youtube/app/ui/dh;Lcom/google/android/youtube/core/transfer/Transfer;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to fetch video for the transfer of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/di;->b:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v1, v1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/di;->b:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v1, v1, Lcom/google/android/youtube/core/transfer/Transfer;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 219
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/di;->a:Lcom/google/android/youtube/app/ui/dh;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/di;->b:Lcom/google/android/youtube/core/transfer/Transfer;

    invoke-static {v0, p2, v1}, Lcom/google/android/youtube/app/ui/dh;->a(Lcom/google/android/youtube/app/ui/dh;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/transfer/Transfer;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/di;->a:Lcom/google/android/youtube/app/ui/dh;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/dh;->a(Lcom/google/android/youtube/app/ui/dh;)Lcom/google/android/youtube/app/adapter/br;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/di;->b:Lcom/google/android/youtube/core/transfer/Transfer;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/youtube/app/adapter/br;->a(Lcom/google/android/youtube/core/transfer/Transfer;Lcom/google/android/youtube/core/model/Video;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/di;->a:Lcom/google/android/youtube/app/ui/dh;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    invoke-static {v1, v0}, Lcom/google/android/youtube/app/ui/dh;->a(Lcom/google/android/youtube/app/ui/dh;Landroid/net/Uri;)V

    return-void
.end method
