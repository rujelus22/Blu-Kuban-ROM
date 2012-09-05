.class Lcom/sec/android/app/dlna/service/DmsLocalService$5;
.super Landroid/os/Handler;
.source "DmsLocalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/service/DmsLocalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/service/DmsLocalService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/service/DmsLocalService;)V
    .registers 2
    .parameter

    .prologue
    .line 673
    iput-object p1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService$5;->this$0:Lcom/sec/android/app/dlna/service/DmsLocalService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 675
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_2e

    .line 689
    :goto_6
    return-void

    .line 677
    :sswitch_7
    const-string v0, "DLNA"

    const-string v1, "AUDIO_UPDATING_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService$5;->this$0:Lcom/sec/android/app/dlna/service/DmsLocalService;

    #setter for: Lcom/sec/android/app/dlna/service/DmsLocalService;->isAudioUpdating:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/dlna/service/DmsLocalService;->access$202(Lcom/sec/android/app/dlna/service/DmsLocalService;Z)Z

    goto :goto_6

    .line 681
    :sswitch_14
    const-string v0, "DLNA"

    const-string v1, "IMAGE_UPDATING_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService$5;->this$0:Lcom/sec/android/app/dlna/service/DmsLocalService;

    #setter for: Lcom/sec/android/app/dlna/service/DmsLocalService;->isImageUpdating:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/dlna/service/DmsLocalService;->access$302(Lcom/sec/android/app/dlna/service/DmsLocalService;Z)Z

    goto :goto_6

    .line 685
    :sswitch_21
    const-string v0, "DLNA"

    const-string v1, "VIDEO_UPDATING_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService$5;->this$0:Lcom/sec/android/app/dlna/service/DmsLocalService;

    #setter for: Lcom/sec/android/app/dlna/service/DmsLocalService;->isVideoUpdating:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/dlna/service/DmsLocalService;->access$402(Lcom/sec/android/app/dlna/service/DmsLocalService;Z)Z

    goto :goto_6

    .line 675
    :sswitch_data_2e
    .sparse-switch
        0x64 -> :sswitch_7
        0xc8 -> :sswitch_14
        0x12c -> :sswitch_21
    .end sparse-switch
.end method
