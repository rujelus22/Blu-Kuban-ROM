.class Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$2;
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
    .line 100
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$2;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 102
    packed-switch p2, :pswitch_data_62

    .line 118
    :goto_3
    return-void

    .line 104
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$2;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->access$100(Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v0, deletePopup:Landroid/content/Intent;
    const-string v1, "VideoID"

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$2;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mVideoID:J
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->access$000(Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 106
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$2;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->access$100(Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 110
    .end local v0           #deletePopup:Landroid/content/Intent;
    :pswitch_26
    const-string v1, "VideoListLongClickPopup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detail mVideoID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$2;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mVideoID:J
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->access$000(Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$2;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mVideoID:J
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->access$000(Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setCurPlayingId(J)V

    .line 112
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$2;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->access$300(Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;)Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->clearAllDialog()V

    .line 113
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup$2;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;->access$300(Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;)Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->show(I)V

    goto :goto_3

    .line 102
    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_4
        :pswitch_26
    .end packed-switch
.end method
