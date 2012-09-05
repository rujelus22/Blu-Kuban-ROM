.class Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;
.super Ljava/lang/Thread;
.source "GridInputProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/GridInputProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TiltoutChecker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/GridInputProcessor;


# direct methods
.method private constructor <init>(Lcom/cooliris/media/GridInputProcessor;)V
    .registers 2
    .parameter

    .prologue
    .line 1816
    iput-object p1, p0, Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;->this$0:Lcom/cooliris/media/GridInputProcessor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cooliris/media/GridInputProcessor;Lcom/cooliris/media/GridInputProcessor$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1816
    invoke-direct {p0, p1}, Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;-><init>(Lcom/cooliris/media/GridInputProcessor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 1819
    const-string v3, "Tiltout Checker"

    invoke-virtual {p0, v3}, Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;->setName(Ljava/lang/String;)V

    .line 1820
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1823
    .local v0, checkStarted:J
    :cond_9
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    iget-object v5, p0, Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;->this$0:Lcom/cooliris/media/GridInputProcessor;

    #getter for: Lcom/cooliris/media/GridInputProcessor;->TILTOUT_SEC:J
    invoke-static {v5}, Lcom/cooliris/media/GridInputProcessor;->access$200(Lcom/cooliris/media/GridInputProcessor;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_53

    .line 1824
    iget-object v3, p0, Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;->this$0:Lcom/cooliris/media/GridInputProcessor;

    #getter for: Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v3}, Lcom/cooliris/media/GridInputProcessor;->access$300(Lcom/cooliris/media/GridInputProcessor;)Lcom/cooliris/media/GridLayer;

    move-result-object v3

    if-nez v3, :cond_21

    .line 1839
    :cond_20
    :goto_20
    return-void

    .line 1826
    :cond_21
    iget-object v3, p0, Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;->this$0:Lcom/cooliris/media/GridInputProcessor;

    #getter for: Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v3}, Lcom/cooliris/media/GridInputProcessor;->access$300(Lcom/cooliris/media/GridInputProcessor;)Lcom/cooliris/media/GridLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getFeed()Lcom/cooliris/media/MediaFeed;

    move-result-object v3

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;->this$0:Lcom/cooliris/media/GridInputProcessor;

    #getter for: Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v3}, Lcom/cooliris/media/GridInputProcessor;->access$300(Lcom/cooliris/media/GridInputProcessor;)Lcom/cooliris/media/GridLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getFeed()Lcom/cooliris/media/MediaFeed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cooliris/media/MediaFeed;->isSingleImageMode()Z

    move-result v3

    if-nez v3, :cond_20

    .line 1829
    :cond_3d
    const-string v3, "GridInputProcessor"

    const-string v4, "Layer goback"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    iget-object v3, p0, Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;->this$0:Lcom/cooliris/media/GridInputProcessor;

    #getter for: Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v3}, Lcom/cooliris/media/GridInputProcessor;->access$300(Lcom/cooliris/media/GridInputProcessor;)Lcom/cooliris/media/GridLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->goBack()Z
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_4d} :catch_4e

    goto :goto_20

    .line 1836
    :catch_4e
    move-exception v2

    .line 1837
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_20

    .line 1834
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_53
    const-wide/16 v3, 0x64

    :try_start_55
    invoke-static {v3, v4}, Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;->sleep(J)V

    .line 1835
    invoke-virtual {p0}, Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;->isInterrupted()Z
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_5b} :catch_4e

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_20
.end method
