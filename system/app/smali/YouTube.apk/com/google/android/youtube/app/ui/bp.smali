.class final Lcom/google/android/youtube/app/ui/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/bn;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/bn;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bp;->a:Lcom/google/android/youtube/app/ui/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 64
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 64
    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bp;->a:Lcom/google/android/youtube/app/ui/bn;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bn;->c(Lcom/google/android/youtube/app/ui/bn;)Lcom/google/android/youtube/app/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bp;->a:Lcom/google/android/youtube/app/ui/bn;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/bn;->b(Lcom/google/android/youtube/app/ui/bn;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/youtube/app/a/i;->a(ILandroid/graphics/Bitmap;)V

    return-void
.end method
