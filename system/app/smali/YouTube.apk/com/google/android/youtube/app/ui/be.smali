.class final Lcom/google/android/youtube/app/ui/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/bd;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/bd;)V
    .registers 2
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/be;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 170
    check-cast p1, Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error loading thumbnail [request="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 170
    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/be;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bd;->a(Lcom/google/android/youtube/app/ui/bd;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/be;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bd;->a(Lcom/google/android/youtube/app/ui/bd;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_13
    return-void
.end method
