.class final Lcom/google/android/youtube/app/honeycomb/tablet/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/ag;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)V
    .registers 2
    .parameter

    .prologue
    .line 811
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ak;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 813
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ak;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->f(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 814
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ak;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->e(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Lcom/google/android/youtube/core/player/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->e()V

    .line 816
    :cond_11
    return-void
.end method
