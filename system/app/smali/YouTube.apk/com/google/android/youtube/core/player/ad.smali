.class final Lcom/google/android/youtube/core/player/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/LiveOverlay;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/LiveOverlay;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/youtube/core/player/ad;->a:Lcom/google/android/youtube/core/player/LiveOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ad;->a:Lcom/google/android/youtube/core/player/LiveOverlay;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/ad;->a:Lcom/google/android/youtube/core/player/LiveOverlay;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/LiveOverlay;->a(Lcom/google/android/youtube/core/player/LiveOverlay;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/LiveOverlay;->a(Lcom/google/android/youtube/core/player/LiveOverlay;Landroid/view/View;)V

    return-void
.end method
