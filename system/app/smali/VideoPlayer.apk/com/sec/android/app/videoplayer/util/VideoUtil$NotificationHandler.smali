.class Lcom/sec/android/app/videoplayer/util/VideoUtil$NotificationHandler;
.super Landroid/os/Handler;
.source "VideoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/util/VideoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1531
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/videoplayer/util/VideoUtil$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1531
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoUtil$NotificationHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 1533
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_b

    .line 1534
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/sec/android/app/videoplayer/util/VideoUtil;->handleNotification(II)V
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->access$100(II)V

    .line 1536
    :cond_b
    return-void
.end method
