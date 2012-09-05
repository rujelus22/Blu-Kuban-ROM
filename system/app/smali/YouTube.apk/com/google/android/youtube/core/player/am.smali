.class final Lcom/google/android/youtube/core/player/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/al;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/al;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/youtube/core/player/am;->a:Lcom/google/android/youtube/core/player/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/core/player/am;->a:Lcom/google/android/youtube/core/player/al;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/al;->a(Lcom/google/android/youtube/core/player/al;)Lcom/google/android/youtube/core/player/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/am;->a:Lcom/google/android/youtube/core/player/al;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ap;->u()V

    .line 66
    return-void
.end method
