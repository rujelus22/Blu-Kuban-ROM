.class Lcom/cooliris/media/Gallery$ThumbKicker;
.super Ljava/lang/Object;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThumbKicker"
.end annotation


# instance fields
.field private final mThumbSuspendKicker:Ljava/lang/Runnable;

.field private final mThumbSuspendKickerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/cooliris/media/Gallery;


# direct methods
.method constructor <init>(Lcom/cooliris/media/Gallery;)V
    .registers 3
    .parameter

    .prologue
    .line 1863
    iput-object p1, p0, Lcom/cooliris/media/Gallery$ThumbKicker;->this$0:Lcom/cooliris/media/Gallery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1866
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/Gallery$ThumbKicker;->mThumbSuspendKickerHandler:Landroid/os/Handler;

    .line 1868
    new-instance v0, Lcom/cooliris/media/Gallery$ThumbKicker$1;

    invoke-direct {v0, p0}, Lcom/cooliris/media/Gallery$ThumbKicker$1;-><init>(Lcom/cooliris/media/Gallery$ThumbKicker;)V

    iput-object v0, p0, Lcom/cooliris/media/Gallery$ThumbKicker;->mThumbSuspendKicker:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$2300(Lcom/cooliris/media/Gallery$ThumbKicker;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/cooliris/media/Gallery$ThumbKicker;->mThumbSuspendKicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/cooliris/media/Gallery$ThumbKicker;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/cooliris/media/Gallery$ThumbKicker;->mThumbSuspendKickerHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public stopKickThumbSuspend()V
    .registers 4

    .prologue
    .line 1887
    const-string v1, "Gallery"

    const-string v2, "stopKickThumbSuspend"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    iget-object v1, p0, Lcom/cooliris/media/Gallery$ThumbKicker;->mThumbSuspendKickerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/cooliris/media/Gallery$ThumbKicker;->mThumbSuspendKicker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1889
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_THUMBWORKER_RESUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1890
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cooliris/media/Gallery$ThumbKicker;->this$0:Lcom/cooliris/media/Gallery;

    invoke-virtual {v1, v0}, Lcom/cooliris/media/Gallery;->sendBroadcast(Landroid/content/Intent;)V

    .line 1891
    return-void
.end method

.method public suspendThumbWork()V
    .registers 6

    .prologue
    .line 1880
    const-string v1, "Gallery"

    const-string v2, "suspendThumbWork"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_THUMBWORKER_SUSPEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1882
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cooliris/media/Gallery$ThumbKicker;->this$0:Lcom/cooliris/media/Gallery;

    invoke-virtual {v1, v0}, Lcom/cooliris/media/Gallery;->sendBroadcast(Landroid/content/Intent;)V

    .line 1883
    iget-object v1, p0, Lcom/cooliris/media/Gallery$ThumbKicker;->mThumbSuspendKickerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/cooliris/media/Gallery$ThumbKicker;->mThumbSuspendKicker:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1884
    return-void
.end method
