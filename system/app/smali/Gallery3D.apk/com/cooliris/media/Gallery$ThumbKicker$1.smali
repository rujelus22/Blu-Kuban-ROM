.class Lcom/cooliris/media/Gallery$ThumbKicker$1;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/Gallery$ThumbKicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cooliris/media/Gallery$ThumbKicker;


# direct methods
.method constructor <init>(Lcom/cooliris/media/Gallery$ThumbKicker;)V
    .registers 2
    .parameter

    .prologue
    .line 1868
    iput-object p1, p0, Lcom/cooliris/media/Gallery$ThumbKicker$1;->this$1:Lcom/cooliris/media/Gallery$ThumbKicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1871
    const-string v1, "Gallery"

    const-string v2, "mThumbSuspendKicker.run()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_THUMBWORKER_SUSPEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1873
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cooliris/media/Gallery$ThumbKicker$1;->this$1:Lcom/cooliris/media/Gallery$ThumbKicker;

    iget-object v1, v1, Lcom/cooliris/media/Gallery$ThumbKicker;->this$0:Lcom/cooliris/media/Gallery;

    invoke-virtual {v1, v0}, Lcom/cooliris/media/Gallery;->sendBroadcast(Landroid/content/Intent;)V

    .line 1874
    iget-object v1, p0, Lcom/cooliris/media/Gallery$ThumbKicker$1;->this$1:Lcom/cooliris/media/Gallery$ThumbKicker;

    #getter for: Lcom/cooliris/media/Gallery$ThumbKicker;->mThumbSuspendKickerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cooliris/media/Gallery$ThumbKicker;->access$2400(Lcom/cooliris/media/Gallery$ThumbKicker;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/media/Gallery$ThumbKicker$1;->this$1:Lcom/cooliris/media/Gallery$ThumbKicker;

    #getter for: Lcom/cooliris/media/Gallery$ThumbKicker;->mThumbSuspendKicker:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/cooliris/media/Gallery$ThumbKicker;->access$2300(Lcom/cooliris/media/Gallery$ThumbKicker;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1876
    return-void
.end method
