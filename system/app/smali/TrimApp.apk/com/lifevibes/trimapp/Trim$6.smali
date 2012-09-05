.class Lcom/lifevibes/trimapp/Trim$6;
.super Landroid/os/Handler;
.source "Trim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/trimapp/Trim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lifevibes/trimapp/Trim;


# direct methods
.method constructor <init>(Lcom/lifevibes/trimapp/Trim;)V
    .registers 2
    .parameter

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/lifevibes/trimapp/Trim$6;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$6;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mIsActivityFinishing:Z
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$1800(Lcom/lifevibes/trimapp/Trim;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1157
    :cond_8
    :goto_8
    return-void

    .line 1142
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3c

    goto :goto_8

    .line 1145
    :pswitch_f
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$6;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mThumbnailTask:Lcom/lifevibes/trimapp/Trim$ThumbnailTask;
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$1100(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/Trim$ThumbnailTask;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1146
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$6;->this$0:Lcom/lifevibes/trimapp/Trim;

    new-instance v1, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;

    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$6;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-direct {v1, v2}, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;-><init>(Lcom/lifevibes/trimapp/Trim;)V

    #setter for: Lcom/lifevibes/trimapp/Trim;->mThumbnailTask:Lcom/lifevibes/trimapp/Trim$ThumbnailTask;
    invoke-static {v0, v1}, Lcom/lifevibes/trimapp/Trim;->access$1102(Lcom/lifevibes/trimapp/Trim;Lcom/lifevibes/trimapp/Trim$ThumbnailTask;)Lcom/lifevibes/trimapp/Trim$ThumbnailTask;

    .line 1147
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$6;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mThumbnailTask:Lcom/lifevibes/trimapp/Trim$ThumbnailTask;
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$1100(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/Trim$ThumbnailTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_8

    .line 1151
    :pswitch_30
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$6;->this$0:Lcom/lifevibes/trimapp/Trim;

    #calls: Lcom/lifevibes/trimapp/Trim;->doTrimmingAction()V
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$2800(Lcom/lifevibes/trimapp/Trim;)V

    goto :goto_8

    .line 1154
    :pswitch_36
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$6;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-virtual {v0}, Lcom/lifevibes/trimapp/Trim;->doPlayPauseAction()V

    goto :goto_8

    .line 1142
    :pswitch_data_3c
    .packed-switch 0x7d0
        :pswitch_f
        :pswitch_30
        :pswitch_36
    .end packed-switch
.end method
