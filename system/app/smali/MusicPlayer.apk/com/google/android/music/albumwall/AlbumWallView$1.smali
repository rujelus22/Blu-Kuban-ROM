.class Lcom/google/android/music/albumwall/AlbumWallView$1;
.super Ljava/lang/Object;
.source "AlbumWallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallView;->setCallback(Lcom/google/android/music/albumwall/AlbumWallCallback;Lcom/google/android/music/utils/MusicCallbackHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallView;

.field final synthetic val$callback:Lcom/google/android/music/albumwall/AlbumWallCallback;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/AlbumWallCallback;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallView$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    iput-object p2, p0, Lcom/google/android/music/albumwall/AlbumWallView$1;->val$callback:Lcom/google/android/music/albumwall/AlbumWallCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    #getter for: Lcom/google/android/music/albumwall/AlbumWallView;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;
    invoke-static {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->access$100(Lcom/google/android/music/albumwall/AlbumWallView;)Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallView$1;->val$callback:Lcom/google/android/music/albumwall/AlbumWallCallback;

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallView$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    #getter for: Lcom/google/android/music/albumwall/AlbumWallView;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;
    invoke-static {v3}, Lcom/google/android/music/albumwall/AlbumWallView;->access$000(Lcom/google/android/music/albumwall/AlbumWallView;)Lcom/google/android/music/utils/MusicCallbackHelper;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setCallbacks(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/AlbumWallCallback;Lcom/google/android/music/utils/MusicCallbackHelper;)V

    .line 181
    return-void
.end method
