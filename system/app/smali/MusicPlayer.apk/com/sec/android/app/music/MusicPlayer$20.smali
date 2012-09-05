.class Lcom/sec/android/app/music/MusicPlayer$20;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 2987
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer$20;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v4, 0x12c

    const-wide/16 v2, 0x0

    .line 2995
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2d

    .line 2997
    packed-switch p2, :pswitch_data_56

    .line 3044
    :cond_d
    :goto_d
    const/4 v0, 0x0

    return v0

    .line 2999
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$20;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4, v5}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V

    .line 3002
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$20;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const-string v1, "rewind_down"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicPlayer;->notifySeekChange(Ljava/lang/String;)V

    goto :goto_d

    .line 3007
    :pswitch_1e
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$20;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v4, v5}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V

    .line 3010
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$20;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const-string v1, "fastforward_down"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicPlayer;->notifySeekChange(Ljava/lang/String;)V

    goto :goto_d

    .line 3019
    :cond_2d
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 3020
    packed-switch p2, :pswitch_data_5e

    goto :goto_d

    .line 3022
    :pswitch_38
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$20;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V

    .line 3025
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$20;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const-string v1, "rewind_up"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicPlayer;->notifySeekChange(Ljava/lang/String;)V

    goto :goto_d

    .line 3031
    :pswitch_47
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$20;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V

    .line 3034
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$20;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const-string v1, "fastforward_up"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicPlayer;->notifySeekChange(Ljava/lang/String;)V

    goto :goto_d

    .line 2997
    :pswitch_data_56
    .packed-switch 0x15
        :pswitch_f
        :pswitch_1e
    .end packed-switch

    .line 3020
    :pswitch_data_5e
    .packed-switch 0x15
        :pswitch_38
        :pswitch_47
    .end packed-switch
.end method
