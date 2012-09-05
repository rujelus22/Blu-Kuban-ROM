.class Lcom/sec/android/app/music/MusicPlayer$8;
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
    .line 1085
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer$8;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$8;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayer;->doPlay()V

    .line 1089
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$8;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicPlayer;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->getStreamVolume(I)I

    move-result v0

    if-gtz v0, :cond_1b

    .line 1090
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$8;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicPlayer;->mButtonVolume:Landroid/widget/ImageView;

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1094
    :goto_1a
    return-void

    .line 1092
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$8;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicPlayer;->mButtonVolume:Landroid/widget/ImageView;

    const v1, 0x7f020113

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1a
.end method
