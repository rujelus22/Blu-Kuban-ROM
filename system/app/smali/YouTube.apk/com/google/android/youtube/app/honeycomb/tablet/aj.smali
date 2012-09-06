.class final Lcom/google/android/youtube/app/honeycomb/tablet/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/ag;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)V
    .registers 2
    .parameter

    .prologue
    .line 802
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/aj;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter

    .prologue
    .line 804
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/aj;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/aj;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->e(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Lcom/google/android/youtube/core/player/bi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/bi;->c()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->a(Lcom/google/android/youtube/app/honeycomb/tablet/ag;Z)Z

    .line 805
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/aj;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->f(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 806
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/aj;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->e(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Lcom/google/android/youtube/core/player/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->f()V

    .line 808
    :cond_20
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/aj;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->g(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Lcom/google/android/youtube/app/ui/bt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/aj;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->e(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Lcom/google/android/youtube/core/player/bi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/bi;->d()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/ui/bt;->a(J)V

    .line 809
    return-void
.end method
