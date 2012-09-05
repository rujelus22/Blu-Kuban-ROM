.class final Lcom/google/android/youtube/core/player/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/z;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/z;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/youtube/core/player/aa;->a:Lcom/google/android/youtube/core/player/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aa;->a:Lcom/google/android/youtube/core/player/z;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/aa;->a:Lcom/google/android/youtube/core/player/z;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/z;->a(Lcom/google/android/youtube/core/player/z;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/z;->a(Lcom/google/android/youtube/core/player/z;Landroid/view/View;)V

    return-void
.end method
