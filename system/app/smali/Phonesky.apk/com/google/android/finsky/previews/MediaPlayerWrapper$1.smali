.class Lcom/google/android/finsky/previews/MediaPlayerWrapper$1;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/previews/MediaPlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/previews/MediaPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/previews/MediaPlayerWrapper;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper$1;->this$0:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper$1;->this$0:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    #calls: Lcom/google/android/finsky/previews/MediaPlayerWrapper;->releaseWakeLock()V
    invoke-static {v0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->access$000(Lcom/google/android/finsky/previews/MediaPlayerWrapper;)V

    .line 50
    return-void
.end method
