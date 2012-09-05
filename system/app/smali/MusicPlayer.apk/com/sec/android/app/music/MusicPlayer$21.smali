.class Lcom/sec/android/app/music/MusicPlayer$21;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;


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
    .line 3048
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer$21;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V
    .registers 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 3057
    if-eqz p3, :cond_e

    .line 3058
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$21;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->showBubble()V

    .line 3059
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$21;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #calls: Lcom/sec/android/app/music/MusicPlayer;->setVolume(I)V
    invoke-static {v0, p2}, Lcom/sec/android/app/music/MusicPlayer;->access$1800(Lcom/sec/android/app/music/MusicPlayer;I)V

    .line 3061
    :cond_e
    return-void
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 4
    .parameter "seekBar"

    .prologue
    .line 3066
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$21;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/music/MusicPlayer;->mIsVolumeTouching:Z

    .line 3067
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$21;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->showBubble()V

    .line 3068
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$21;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v1

    #calls: Lcom/sec/android/app/music/MusicPlayer;->showBubble(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V
    invoke-static {v0, v1, p1}, Lcom/sec/android/app/music/MusicPlayer;->access$1900(Lcom/sec/android/app/music/MusicPlayer;ILcom/sec/android/touchwiz/widget/TwSeekBar;)V

    .line 3069
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 4
    .parameter "seekBar"

    .prologue
    .line 3074
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$21;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/music/MusicPlayer;->mIsVolumeTouching:Z

    .line 3075
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$21;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 3076
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$21;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 3077
    return-void
.end method
