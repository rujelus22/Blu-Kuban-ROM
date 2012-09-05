.class Lcom/sec/android/app/dlna/usermodel/UserControlModel$1;
.super Ljava/lang/Object;
.source "UserControlModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestPlayOrPause()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/usermodel/UserControlModel;)V
    .registers 2
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$1;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$1;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionLocked:Z

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$1;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    iget-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$1;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    #getter for: Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->access$000(Lcom/sec/android/app/dlna/usermodel/UserControlModel;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/dlna/usermodel/IUserControl;->requestPlayOrPause(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    .line 293
    return-void
.end method
