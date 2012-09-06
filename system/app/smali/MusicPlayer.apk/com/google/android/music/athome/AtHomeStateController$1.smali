.class Lcom/google/android/music/athome/AtHomeStateController$1;
.super Ljava/lang/Object;
.source "AtHomeStateController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeStateController;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeStateController;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeStateController$1;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "name"
    .parameter "service"

    .prologue
    .line 131
    invoke-static {}, Lcom/google/android/music/athome/AtHomeStateController;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 132
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeStateController;->access$002(Z)Z

    .line 136
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v2, :cond_1c

    .line 137
    const/4 v1, 0x0

    .line 139
    .local v1, groupId:Ljava/lang/String;
    :try_start_f
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->getAtHomeGroupId()Ljava/lang/String;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_2a

    move-result-object v1

    .line 144
    :goto_15
    if-eqz v1, :cond_1c

    .line 145
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeStateController$1;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    invoke-virtual {v2, v1}, Lcom/google/android/music/athome/AtHomeStateController;->selectGroupWhenReady(Ljava/lang/String;)V

    .line 150
    .end local v1           #groupId:Ljava/lang/String;
    :cond_1c
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeStateController$1;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    #getter for: Lcom/google/android/music/athome/AtHomeStateController;->mUpdatePlaybackPending:Z
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeStateController;->access$100(Lcom/google/android/music/athome/AtHomeStateController;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 153
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeStateController$1;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    #calls: Lcom/google/android/music/athome/AtHomeStateController;->updatePlaybackForSelectedRoute()V
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeStateController;->access$200(Lcom/google/android/music/athome/AtHomeStateController;)V

    .line 159
    :goto_29
    return-void

    .line 140
    .restart local v1       #groupId:Ljava/lang/String;
    :catch_2a
    move-exception v0

    .line 141
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "aah.Music"

    const-string v3, "unable to get AtHome group ID"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 157
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #groupId:Ljava/lang/String;
    :cond_33
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeStateController$1;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    #calls: Lcom/google/android/music/athome/AtHomeStateController;->switchToLocalOnFatalError()V
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeStateController;->access$300(Lcom/google/android/music/athome/AtHomeStateController;)V

    goto :goto_29
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 162
    return-void
.end method
