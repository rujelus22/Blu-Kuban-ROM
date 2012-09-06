.class Lcom/google/android/finsky/layout/SongSnippet$4;
.super Lcom/google/android/finsky/previews/SongSnippetStatusListener;
.source "SongSnippet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/SongSnippet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/SongSnippet;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/SongSnippet;)V
    .registers 2
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/android/finsky/layout/SongSnippet$4;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    invoke-direct {p0}, Lcom/google/android/finsky/previews/SongSnippetStatusListener;-><init>()V

    return-void
.end method

.method private isSameAsSnippetSong()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 282
    iget-object v3, p0, Lcom/google/android/finsky/layout/SongSnippet$4;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    #getter for: Lcom/google/android/finsky/layout/SongSnippet;->mSongDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    invoke-static {v3}, Lcom/google/android/finsky/layout/SongSnippet;->access$200(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v3

    if-nez v3, :cond_a

    .line 289
    :cond_9
    :goto_9
    return v2

    .line 286
    :cond_a
    iget-object v3, p0, Lcom/google/android/finsky/layout/SongSnippet$4;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    #getter for: Lcom/google/android/finsky/layout/SongSnippet;->mConnection:Lcom/google/android/finsky/previews/PreviewController;
    invoke-static {v3}, Lcom/google/android/finsky/layout/SongSnippet;->access$300(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/previews/PreviewController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/previews/PreviewController;->getCurrentTrack()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v1

    .line 288
    .local v1, trackToCheck:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    iget-object v3, p0, Lcom/google/android/finsky/layout/SongSnippet$4;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    #getter for: Lcom/google/android/finsky/layout/SongSnippet;->mSongDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    invoke-static {v3}, Lcom/google/android/finsky/layout/SongSnippet;->access$200(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getPreviewUrl()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, previewUrl:Ljava/lang/String;
    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getPreviewUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v2, 0x1

    goto :goto_9
.end method


# virtual methods
.method protected update(IZ)V
    .registers 5
    .parameter "state"
    .parameter "highlight"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet$4;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/finsky/layout/SongSnippet;->mInitialized:Z
    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/SongSnippet;->access$402(Lcom/google/android/finsky/layout/SongSnippet;Z)Z

    .line 268
    invoke-direct {p0}, Lcom/google/android/finsky/layout/SongSnippet$4;->isSameAsSnippetSong()Z

    move-result v0

    if-nez v0, :cond_12

    .line 269
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet$4;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    #calls: Lcom/google/android/finsky/layout/SongSnippet;->resetUI()V
    invoke-static {v0}, Lcom/google/android/finsky/layout/SongSnippet;->access$500(Lcom/google/android/finsky/layout/SongSnippet;)V

    .line 275
    :goto_11
    return-void

    .line 273
    :cond_12
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet$4;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    #getter for: Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;
    invoke-static {v0}, Lcom/google/android/finsky/layout/SongSnippet;->access$600(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/layout/SongIndex;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/SongIndex;->setState(I)V

    .line 274
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet$4;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    #calls: Lcom/google/android/finsky/layout/SongSnippet;->setHighlighted(Z)V
    invoke-static {v0, p2}, Lcom/google/android/finsky/layout/SongSnippet;->access$700(Lcom/google/android/finsky/layout/SongSnippet;Z)V

    goto :goto_11
.end method
