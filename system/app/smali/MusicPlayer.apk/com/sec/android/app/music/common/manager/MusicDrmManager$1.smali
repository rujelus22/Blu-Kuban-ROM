.class Lcom/sec/android/app/music/common/manager/MusicDrmManager$1;
.super Ljava/lang/Object;
.source "MusicDrmManager.java"

# interfaces
.implements Landroid/drm/DrmManagerClient$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/manager/MusicDrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/manager/MusicDrmManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/manager/MusicDrmManager;)V
    .registers 2
    .parameter

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$1;->this$0:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V
    .registers 11
    .parameter "client"
    .parameter "event"

    .prologue
    const-wide/16 v6, 0xc8

    const/16 v5, 0x2a

    .line 1133
    invoke-static {}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDrmErrorListeneer event.getType(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/drm/DrmErrorEvent;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v2, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$1;->this$0:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    #getter for: Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->access$100(Lcom/sec/android/app/music/common/manager/MusicDrmManager;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 1137
    iget-object v2, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$1;->this$0:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    #getter for: Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->access$100(Lcom/sec/android/app/music/common/manager/MusicDrmManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1140
    :cond_35
    invoke-virtual {p2}, Landroid/drm/DrmErrorEvent;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_98

    .line 1173
    invoke-static {}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mDrmErrorListeneer Unknown Error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    iget-object v2, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$1;->this$0:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    #getter for: Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->access$100(Lcom/sec/android/app/music/common/manager/MusicDrmManager;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 1177
    iget-object v2, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$1;->this$0:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    #getter for: Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->access$100(Lcom/sec/android/app/music/common/manager/MusicDrmManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1181
    :cond_56
    :goto_56
    return-void

    .line 1149
    :sswitch_57
    invoke-virtual {p2}, Landroid/drm/DrmErrorEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1150
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7d

    .line 1157
    iget-object v2, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$1;->this$0:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    #getter for: Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->access$100(Lcom/sec/android/app/music/common/manager/MusicDrmManager;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 1158
    iget-object v2, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$1;->this$0:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    #getter for: Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->access$100(Lcom/sec/android/app/music/common/manager/MusicDrmManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1159
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$1;->this$0:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    #getter for: Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->access$100(Lcom/sec/android/app/music/common/manager/MusicDrmManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_56

    .line 1163
    .end local v0           #msg:Landroid/os/Message;
    :cond_7d
    invoke-static {}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mDrmErrorListener. event.getMessage() : is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget-object v2, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$1;->this$0:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    #getter for: Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->access$100(Lcom/sec/android/app/music/common/manager/MusicDrmManager;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 1167
    iget-object v2, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$1;->this$0:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    #getter for: Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->access$100(Lcom/sec/android/app/music/common/manager/MusicDrmManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_56

    .line 1140
    :sswitch_data_98
    .sparse-switch
        0x2 -> :sswitch_57
        0x9 -> :sswitch_57
        0x7d1 -> :sswitch_57
        0x7d2 -> :sswitch_57
        0x7d3 -> :sswitch_57
        0x7d4 -> :sswitch_57
        0x7d5 -> :sswitch_57
        0x7d6 -> :sswitch_57
    .end sparse-switch
.end method
