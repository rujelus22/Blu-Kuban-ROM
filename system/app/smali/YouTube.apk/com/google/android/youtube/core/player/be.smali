.class final Lcom/google/android/youtube/core/player/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/bd;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/bd;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/youtube/core/player/be;->a:Lcom/google/android/youtube/core/player/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/core/player/be;->a:Lcom/google/android/youtube/core/player/bd;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bd;->a(Lcom/google/android/youtube/core/player/bd;)Lcom/google/android/youtube/core/player/bh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/be;->a:Lcom/google/android/youtube/core/player/bd;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/bh;->w()V

    .line 67
    return-void
.end method
