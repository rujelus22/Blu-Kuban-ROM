.class Lcom/sec/android/app/music/MusicBrowserTabActivity$20;
.super Ljava/lang/Object;
.source "MusicBrowserTabActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/MusicBrowserTabActivity;->registerNowPlayingButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1486
    iput-object p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$20;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 1489
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    .line 1505
    :goto_8
    :pswitch_8
    return v3

    .line 1491
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$20;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #setter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mFastforwardLongPress:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$2002(Lcom/sec/android/app/music/MusicBrowserTabActivity;Z)Z

    goto :goto_8

    .line 1496
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$20;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mFastforwardLongPress:Z
    invoke-static {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$2000(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1497
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$20;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.ff.up"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_8

    .line 1499
    :cond_24
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$20;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.next"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_8

    .line 1489
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_9
        :pswitch_f
        :pswitch_8
        :pswitch_f
        :pswitch_8
        :pswitch_8
        :pswitch_f
    .end packed-switch
.end method
