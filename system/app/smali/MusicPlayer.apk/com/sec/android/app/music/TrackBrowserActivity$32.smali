.class Lcom/sec/android/app/music/TrackBrowserActivity$32;
.super Landroid/os/Handler;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2227
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$32;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 2230
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    .line 2244
    :goto_5
    return-void

    .line 2232
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$32;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$500(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_28

    .line 2233
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$32;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity$32;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    #setter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$502(Lcom/sec/android/app/music/TrackBrowserActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 2238
    :goto_1e
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$32;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$500(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 2236
    :cond_28
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$32;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$500(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e

    .line 2230
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method