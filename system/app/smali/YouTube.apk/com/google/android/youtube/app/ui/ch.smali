.class final Lcom/google/android/youtube/app/ui/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/cg;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/cg;)V
    .registers 2
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ch;->a:Lcom/google/android/youtube/app/ui/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->a:Lcom/google/android/youtube/app/ui/cg;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cg;->a(Lcom/google/android/youtube/app/ui/cg;)Lcom/google/android/youtube/app/ui/StackButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/StackButton;->setThumbnailMissing()V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 43
    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ch;->a:Lcom/google/android/youtube/app/ui/cg;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cg;->a(Lcom/google/android/youtube/app/ui/cg;)Lcom/google/android/youtube/app/ui/StackButton;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/app/ui/StackButton;->setThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method
