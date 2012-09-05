.class Lcom/sec/android/app/music/MusicPlayer$12;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/MusicPlayer;->initializeControls()V
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
    .line 1182
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer$12;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 1185
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$12;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1187
    :try_start_b
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$12;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v0, :cond_1e

    .line 1188
    const-string v0, "playing_uri"

    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer$12;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v2, v2, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v2}, Lcom/sec/android/app/music/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1e} :catch_2f

    .line 1194
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$12;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicPlayer;->startActivity(Landroid/content/Intent;)V

    .line 1195
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$12;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const v1, 0x7f040009

    const v2, 0x7f04000a

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/music/MusicPlayer;->overridePendingTransition(II)V

    .line 1196
    return-void

    .line 1190
    :catch_2f
    move-exception v0

    .line 1191
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer$12;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v2, v2, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException occured 28 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method
