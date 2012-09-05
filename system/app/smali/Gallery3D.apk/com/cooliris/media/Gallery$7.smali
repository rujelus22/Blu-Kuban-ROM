.class Lcom/cooliris/media/Gallery$7;
.super Landroid/content/BroadcastReceiver;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/Gallery;


# direct methods
.method constructor <init>(Lcom/cooliris/media/Gallery;)V
    .registers 2
    .parameter

    .prologue
    .line 1512
    iput-object p1, p0, Lcom/cooliris/media/Gallery$7;->this$0:Lcom/cooliris/media/Gallery;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 1515
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1516
    .local v0, action:Ljava/lang/String;
    const-string v1, "Gallery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMediaReceiver: action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    if-nez v0, :cond_20

    .line 1593
    :cond_1f
    :goto_1f
    return-void

    .line 1521
    :cond_20
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1522
    const-string v1, "Gallery"

    const-string v2, "ACTION_MEDIA_MOUNTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    iget-object v1, p0, Lcom/cooliris/media/Gallery$7;->this$0:Lcom/cooliris/media/Gallery;

    iget-object v2, p0, Lcom/cooliris/media/Gallery$7;->this$0:Lcom/cooliris/media/Gallery;

    invoke-virtual {v2}, Lcom/cooliris/media/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/cooliris/media/Gallery$7;->this$0:Lcom/cooliris/media/Gallery;

    invoke-virtual {v5}, Lcom/cooliris/media/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f06

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/cooliris/media/Gallery;->toastFinish(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/cooliris/media/Gallery;->access$1300(Lcom/cooliris/media/Gallery;Ljava/lang/String;)V

    goto :goto_1f

    .line 1538
    :cond_57
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 1545
    :cond_6f
    iget-object v1, p0, Lcom/cooliris/media/Gallery$7;->this$0:Lcom/cooliris/media/Gallery;

    invoke-virtual {v1}, Lcom/cooliris/media/Gallery;->finish()V

    goto :goto_1f

    .line 1547
    :cond_75
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1549
    const-string v1, "Gallery"

    const-string v2, "ACTION_MEDIA_SCANNER_STARTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    iget-object v1, p0, Lcom/cooliris/media/Gallery$7;->this$0:Lcom/cooliris/media/Gallery;

    #setter for: Lcom/cooliris/media/Gallery;->mMediaScannerRunning:Z
    invoke-static {v1, v4}, Lcom/cooliris/media/Gallery;->access$1402(Lcom/cooliris/media/Gallery;Z)Z

    .line 1553
    iget-object v1, p0, Lcom/cooliris/media/Gallery$7;->this$0:Lcom/cooliris/media/Gallery;

    iget-object v2, p0, Lcom/cooliris/media/Gallery$7;->this$0:Lcom/cooliris/media/Gallery;

    invoke-virtual {v2}, Lcom/cooliris/media/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/cooliris/media/Gallery;->toastFinish(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/cooliris/media/Gallery;->access$1300(Lcom/cooliris/media/Gallery;Ljava/lang/String;)V

    goto :goto_1f
.end method
