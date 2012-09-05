.class Lcom/sec/android/app/music/MusicPlayer$13;
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
    .line 1200
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer$13;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$13;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mIsShownVolumeBar:Z
    invoke-static {v0}, Lcom/sec/android/app/music/MusicPlayer;->access$600(Lcom/sec/android/app/music/MusicPlayer;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1204
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$13;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayer;->hideVolumePanel()V

    .line 1208
    :goto_d
    return-void

    .line 1206
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$13;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/music/MusicPlayer;->changeVolume(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/music/MusicPlayer;->access$700(Lcom/sec/android/app/music/MusicPlayer;I)V

    goto :goto_d
.end method
