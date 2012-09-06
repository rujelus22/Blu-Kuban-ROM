.class Lcom/google/android/music/MediaPlaybackActivity$7;
.super Landroid/os/Handler;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1236
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$7;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 1239
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_56

    .line 1274
    :goto_5
    :pswitch_5
    return-void

    .line 1241
    :pswitch_6
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$7;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->refreshNow()J
    invoke-static {v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$900(Lcom/google/android/music/MediaPlaybackActivity;)J

    move-result-wide v0

    .line 1242
    .local v0, next:J
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$7;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V
    invoke-static {v2, v0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$1000(Lcom/google/android/music/MediaPlaybackActivity;J)V

    goto :goto_5

    .line 1246
    .end local v0           #next:J
    :pswitch_12
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$7;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->updateTrackInfoImpl(Landroid/content/Intent;)V
    invoke-static {v3, v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$1200(Lcom/google/android/music/MediaPlaybackActivity;Landroid/content/Intent;)V

    goto :goto_5

    .line 1250
    :pswitch_1c
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$7;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->updateQueueImpl(Landroid/content/Intent;)V
    invoke-static {v3, v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$1300(Lcom/google/android/music/MediaPlaybackActivity;Landroid/content/Intent;)V

    goto :goto_5

    .line 1256
    :pswitch_26
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$7;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d008f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0090

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0091

    new-instance v4, Lcom/google/android/music/MediaPlaybackActivity$7$1;

    invoke-direct {v4, p0}, Lcom/google/android/music/MediaPlaybackActivity$7$1;-><init>(Lcom/google/android/music/MediaPlaybackActivity$7;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_5

    .line 1269
    :pswitch_50
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$7;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->turnLightsOff()V
    invoke-static {v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$1400(Lcom/google/android/music/MediaPlaybackActivity;)V

    goto :goto_5

    .line 1239
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_6
        :pswitch_26
        :pswitch_5
        :pswitch_5
        :pswitch_12
        :pswitch_1c
        :pswitch_50
    .end packed-switch
.end method
