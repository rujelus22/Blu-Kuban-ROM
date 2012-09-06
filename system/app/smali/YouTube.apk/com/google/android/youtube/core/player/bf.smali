.class final Lcom/google/android/youtube/core/player/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/bd;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/bd;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/youtube/core/player/bf;->a:Lcom/google/android/youtube/core/player/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bf;->a:Lcom/google/android/youtube/core/player/bd;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bd;->a(Lcom/google/android/youtube/core/player/bd;)Lcom/google/android/youtube/core/player/bh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/bf;->a:Lcom/google/android/youtube/core/player/bd;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/bh;->w()V

    .line 62
    return-void
.end method
