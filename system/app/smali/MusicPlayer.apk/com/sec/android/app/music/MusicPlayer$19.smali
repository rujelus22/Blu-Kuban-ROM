.class Lcom/sec/android/app/music/MusicPlayer$19;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/MusicPlayer;->createListButton()V
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
    .line 2795
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer$19;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    .line 2799
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$19;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-boolean v0, v0, Lcom/sec/android/app/music/MusicPlayer;->mPause:Z

    if-nez v0, :cond_51

    .line 2800
    new-instance v4, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$19;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

    const-class v1, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2803
    const/4 v2, -0x1

    .line 2804
    const/4 v3, 0x0

    .line 2805
    const/4 v0, 0x0

    .line 2807
    :try_start_14
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$19;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v1, v1, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v1}, Lcom/sec/android/app/music/ICorePlayerService;->getTabFrom()I

    move-result v2

    .line 2808
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$19;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v1, v1, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v1}, Lcom/sec/android/app/music/ICorePlayerService;->getIndexOfPlayList()I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_52

    move-result v1

    .line 2809
    :try_start_24
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$19;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v3}, Lcom/sec/android/app/music/ICorePlayerService;->getKeyWord()Ljava/lang/String;
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2b} :catch_5a

    move-result-object v0

    .line 2813
    :goto_2c
    const-string v3, "tabFrom"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2814
    const-string v2, "listfocus"

    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2815
    const-string v1, "keyword"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2816
    const-string v0, "nowPlaying"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2817
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$19;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/music/MusicPlayer;->startActivity(Landroid/content/Intent;)V

    .line 2818
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$19;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const v1, 0x7f040007

    const v2, 0x7f040008

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/music/MusicPlayer;->overridePendingTransition(II)V

    .line 2820
    :cond_51
    return-void

    .line 2810
    :catch_52
    move-exception v1

    move-object v5, v1

    move v1, v3

    move-object v3, v5

    .line 2811
    :goto_56
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2c

    .line 2810
    :catch_5a
    move-exception v3

    goto :goto_56
.end method
