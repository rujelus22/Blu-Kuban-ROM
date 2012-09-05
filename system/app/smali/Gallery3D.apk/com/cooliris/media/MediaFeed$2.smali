.class Lcom/cooliris/media/MediaFeed$2;
.super Ljava/lang/Object;
.source "MediaFeed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/MediaFeed;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/MediaFeed;


# direct methods
.method constructor <init>(Lcom/cooliris/media/MediaFeed;)V
    .registers 2
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/cooliris/media/MediaFeed$2;->this$0:Lcom/cooliris/media/MediaFeed;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 562
    iget-object v2, p0, Lcom/cooliris/media/MediaFeed$2;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/MediaFeed;->access$000(Lcom/cooliris/media/MediaFeed;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_a

    .line 608
    :cond_9
    :goto_9
    return-void

    .line 565
    :cond_a
    sget-boolean v2, Lcom/cooliris/media/Utils;->mUseDualCore:Z

    if-eqz v2, :cond_57

    .line 566
    const/4 v2, -0x2

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 570
    :goto_12
    iget-object v2, p0, Lcom/cooliris/media/MediaFeed$2;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mDataSource:Lcom/cooliris/media/DataSource;
    invoke-static {v2}, Lcom/cooliris/media/MediaFeed;->access$300(Lcom/cooliris/media/MediaFeed;)Lcom/cooliris/media/DataSource;

    move-result-object v0

    .line 573
    .local v0, dataSource:Lcom/cooliris/media/DataSource;
    if-eqz v0, :cond_1f

    .line 574
    iget-object v2, p0, Lcom/cooliris/media/MediaFeed$2;->this$0:Lcom/cooliris/media/MediaFeed;

    #calls: Lcom/cooliris/media/MediaFeed;->loadMediaSets()V
    invoke-static {v2}, Lcom/cooliris/media/MediaFeed;->access$500(Lcom/cooliris/media/MediaFeed;)V

    .line 576
    :cond_1f
    iget-object v2, p0, Lcom/cooliris/media/MediaFeed$2;->this$0:Lcom/cooliris/media/MediaFeed;

    #setter for: Lcom/cooliris/media/MediaFeed;->mWaitingForMediaScanner:Z
    invoke-static {v2, v4}, Lcom/cooliris/media/MediaFeed;->access$602(Lcom/cooliris/media/MediaFeed;Z)Z

    .line 577
    :goto_24
    iget-object v2, p0, Lcom/cooliris/media/MediaFeed$2;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/MediaFeed;->access$000(Lcom/cooliris/media/MediaFeed;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/cooliris/media/ImageManager;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 579
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_9

    .line 583
    iget-object v2, p0, Lcom/cooliris/media/MediaFeed$2;->this$0:Lcom/cooliris/media/MediaFeed;

    const/4 v3, 0x1

    #setter for: Lcom/cooliris/media/MediaFeed;->mWaitingForMediaScanner:Z
    invoke-static {v2, v3}, Lcom/cooliris/media/MediaFeed;->access$602(Lcom/cooliris/media/MediaFeed;Z)Z

    .line 585
    :try_start_40
    iget-object v2, p0, Lcom/cooliris/media/MediaFeed$2;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/MediaFeed;->access$000(Lcom/cooliris/media/MediaFeed;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 591
    if-eqz v0, :cond_4f

    .line 592
    iget-object v2, p0, Lcom/cooliris/media/MediaFeed$2;->this$0:Lcom/cooliris/media/MediaFeed;

    #calls: Lcom/cooliris/media/MediaFeed;->loadMediaSets()V
    invoke-static {v2}, Lcom/cooliris/media/MediaFeed;->access$500(Lcom/cooliris/media/MediaFeed;)V

    .line 594
    :cond_4f
    const-wide/16 v2, 0xbb8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_54
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_54} :catch_55

    goto :goto_24

    .line 595
    :catch_55
    move-exception v1

    .line 597
    .local v1, e:Ljava/lang/InterruptedException;
    goto :goto_9

    .line 568
    .end local v0           #dataSource:Lcom/cooliris/media/DataSource;
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_57
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_12

    .line 600
    .restart local v0       #dataSource:Lcom/cooliris/media/DataSource;
    :cond_5d
    iget-object v2, p0, Lcom/cooliris/media/MediaFeed$2;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mWaitingForMediaScanner:Z
    invoke-static {v2}, Lcom/cooliris/media/MediaFeed;->access$600(Lcom/cooliris/media/MediaFeed;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 603
    iget-object v2, p0, Lcom/cooliris/media/MediaFeed$2;->this$0:Lcom/cooliris/media/MediaFeed;

    #setter for: Lcom/cooliris/media/MediaFeed;->mWaitingForMediaScanner:Z
    invoke-static {v2, v4}, Lcom/cooliris/media/MediaFeed;->access$602(Lcom/cooliris/media/MediaFeed;Z)Z

    .line 604
    iget-object v2, p0, Lcom/cooliris/media/MediaFeed$2;->this$0:Lcom/cooliris/media/MediaFeed;

    #calls: Lcom/cooliris/media/MediaFeed;->loadMediaSets()V
    invoke-static {v2}, Lcom/cooliris/media/MediaFeed;->access$500(Lcom/cooliris/media/MediaFeed;)V

    .line 606
    :cond_6f
    iget-object v2, p0, Lcom/cooliris/media/MediaFeed$2;->this$0:Lcom/cooliris/media/MediaFeed;

    #setter for: Lcom/cooliris/media/MediaFeed;->mLoading:Z
    invoke-static {v2, v4}, Lcom/cooliris/media/MediaFeed;->access$702(Lcom/cooliris/media/MediaFeed;Z)Z

    goto :goto_9
.end method
