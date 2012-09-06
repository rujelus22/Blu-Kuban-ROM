.class Lcom/google/android/finsky/previews/PreviewPlayer$5;
.super Ljava/lang/Object;
.source "PreviewPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/previews/PreviewPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/previews/PreviewPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/previews/PreviewPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/google/android/finsky/previews/PreviewPlayer$5;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3
    .parameter "mp"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer$5;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    #getter for: Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;
    invoke-static {v0}, Lcom/google/android/finsky/previews/PreviewPlayer;->access$400(Lcom/google/android/finsky/previews/PreviewPlayer;)Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->start()V

    .line 401
    return-void
.end method
