.class Lcom/sec/android/app/music/MusicPlayer$1;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer$1;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$1;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "MusicPlayer::onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$1;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    iput-object v1, v0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    .line 493
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$1;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayer;->onServicePrepared()V

    .line 494
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$1;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "MusicPlayer::onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$1;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$1;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #calls: Lcom/sec/android/app/music/MusicPlayer;->finishMusicPlayer()V
    invoke-static {v0}, Lcom/sec/android/app/music/MusicPlayer;->access$000(Lcom/sec/android/app/music/MusicPlayer;)V

    .line 501
    return-void
.end method
