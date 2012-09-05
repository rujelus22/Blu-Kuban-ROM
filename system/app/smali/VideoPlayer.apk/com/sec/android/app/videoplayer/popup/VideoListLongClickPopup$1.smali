.class Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$1;
.super Ljava/lang/Object;
.source "VideoListLongClickPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 68
    packed-switch p2, :pswitch_data_aa

    .line 96
    :goto_3
    return-void

    .line 72
    :pswitch_4
    const-string v2, "VideoListLongClickPopup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Share via mVideoID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mVideoID:J
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->access$000(Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->access$100(Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mUri:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->access$200(Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 75
    const-string v2, "LongClick"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->access$100(Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 80
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_4c
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->access$100(Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, deletePopup:Landroid/content/Intent;
    const-string v2, "VideoID"

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mVideoID:J
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->access$000(Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 82
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->access$100(Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 87
    .end local v0           #deletePopup:Landroid/content/Intent;
    :pswitch_6e
    const-string v2, "VideoListLongClickPopup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detail mVideoID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mVideoID:J
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->access$000(Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mVideoID:J
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->access$000(Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setCurPlayingId(J)V

    .line 89
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->access$300(Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;)Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->clearAllDialog()V

    .line 90
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->access$300(Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;)Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->show(I)V

    goto/16 :goto_3

    .line 68
    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4c
        :pswitch_6e
    .end packed-switch
.end method
