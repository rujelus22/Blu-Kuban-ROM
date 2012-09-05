.class Lcom/sec/android/app/videoplayer/view/VideoLockCtrl$1;
.super Landroid/os/Handler;
.source "VideoLockCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 81
    :goto_5
    return-void

    .line 76
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->hideLockIcon()V

    goto :goto_5

    .line 74
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
