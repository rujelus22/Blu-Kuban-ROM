.class final Lcom/google/android/youtube/app/ui/cr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/model/Video;

.field final synthetic b:Lcom/google/android/youtube/app/ui/cq;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/cq;Lcom/google/android/youtube/core/model/Video;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cr;->b:Lcom/google/android/youtube/app/ui/cq;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/cr;->a:Lcom/google/android/youtube/core/model/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 224
    const-string v0, "Error downloading thumbnai"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cr;->b:Lcom/google/android/youtube/app/ui/cq;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/cq;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cj;->b(Lcom/google/android/youtube/app/ui/cj;)Lcom/google/android/youtube/app/ui/cl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cr;->a:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/cr;->a:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/youtube/app/ui/cl;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 224
    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cr;->b:Lcom/google/android/youtube/app/ui/cq;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/cq;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cj;->b(Lcom/google/android/youtube/app/ui/cj;)Lcom/google/android/youtube/app/ui/cl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cr;->a:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/cr;->a:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/youtube/app/ui/cl;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
