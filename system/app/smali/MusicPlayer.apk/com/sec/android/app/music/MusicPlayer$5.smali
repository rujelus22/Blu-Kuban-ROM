.class Lcom/sec/android/app/music/MusicPlayer$5;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 989
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer$5;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 992
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 993
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    sub-long v1, v5, v7

    .line 994
    .local v1, pressdTime:J
    packed-switch v0, :pswitch_data_3c

    :cond_13
    :goto_13
    :pswitch_13
    move v3, v4

    .line 1012
    :cond_14
    return v3

    .line 996
    :pswitch_15
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$5;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mIsFlingNow:Z
    invoke-static {v5}, Lcom/sec/android/app/music/MusicPlayer;->access$200(Lcom/sec/android/app/music/MusicPlayer;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 998
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$5;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #setter for: Lcom/sec/android/app/music/MusicPlayer;->bPressedFF:Z
    invoke-static {v5, v3}, Lcom/sec/android/app/music/MusicPlayer;->access$302(Lcom/sec/android/app/music/MusicPlayer;Z)Z

    .line 999
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$5;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/music/MusicPlayer;->onFFDown()V

    goto :goto_13

    .line 1004
    :pswitch_28
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$5;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->bPressedFF:Z
    invoke-static {v3}, Lcom/sec/android/app/music/MusicPlayer;->access$300(Lcom/sec/android/app/music/MusicPlayer;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1005
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$5;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #setter for: Lcom/sec/android/app/music/MusicPlayer;->bPressedFF:Z
    invoke-static {v3, v4}, Lcom/sec/android/app/music/MusicPlayer;->access$302(Lcom/sec/android/app/music/MusicPlayer;Z)Z

    .line 1006
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$5;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v3, v1, v2}, Lcom/sec/android/app/music/MusicPlayer;->onFFUp(J)V

    goto :goto_13

    .line 994
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_15
        :pswitch_28
        :pswitch_13
        :pswitch_28
        :pswitch_13
        :pswitch_13
        :pswitch_28
    .end packed-switch
.end method