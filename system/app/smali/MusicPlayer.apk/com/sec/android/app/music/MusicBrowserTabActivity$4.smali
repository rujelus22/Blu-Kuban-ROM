.class Lcom/sec/android/app/music/MusicBrowserTabActivity$4;
.super Landroid/os/Handler;
.source "MusicBrowserTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicBrowserTabActivity;
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
    .line 249
    iput-object p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$4;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 252
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    .line 266
    :goto_5
    return-void

    .line 254
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$4;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$700(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_28

    .line 255
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$4;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    iget-object v2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$4;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    #setter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$702(Lcom/sec/android/app/music/MusicBrowserTabActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 260
    :goto_1e
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$4;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$700(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 258
    :cond_28
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$4;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$700(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e

    .line 252
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
