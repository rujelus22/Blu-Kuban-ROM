.class Lcom/cooliris/media/MediaFeed$3;
.super Landroid/database/ContentObserver;
.source "MediaFeed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/MediaFeed;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/MediaFeed;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cooliris/media/MediaFeed;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/cooliris/media/MediaFeed$3;->this$0:Lcom/cooliris/media/MediaFeed;

    iput-object p3, p0, Lcom/cooliris/media/MediaFeed$3;->val$uri:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7
    .parameter "selfChange"

    .prologue
    .line 1245
    iget-object v1, p0, Lcom/cooliris/media/MediaFeed$3;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mWaitingForMediaScanner:Z
    invoke-static {v1}, Lcom/cooliris/media/MediaFeed;->access$600(Lcom/cooliris/media/MediaFeed;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/cooliris/media/MediaFeed$3;->this$0:Lcom/cooliris/media/MediaFeed;

    iget-boolean v1, v1, Lcom/cooliris/media/MediaFeed;->mWaitingForRotation:Z

    if-eqz v1, :cond_f

    .line 1263
    :cond_e
    :goto_e
    return-void

    .line 1249
    :cond_f
    const-wide/16 v1, 0x64

    :try_start_11
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_69

    .line 1253
    :goto_14
    iget-object v1, p0, Lcom/cooliris/media/MediaFeed$3;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cooliris/media/MediaFeed;->access$000(Lcom/cooliris/media/MediaFeed;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/Gallery;

    invoke-virtual {v1}, Lcom/cooliris/media/Gallery;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_5b

    .line 1255
    iget-object v1, p0, Lcom/cooliris/media/MediaFeed$3;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cooliris/media/MediaFeed;->access$000(Lcom/cooliris/media/MediaFeed;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/Gallery;

    invoke-virtual {v1}, Lcom/cooliris/media/Gallery;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v2

    iget-object v1, p0, Lcom/cooliris/media/MediaFeed$3;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cooliris/media/MediaFeed;->access$000(Lcom/cooliris/media/MediaFeed;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/Gallery;

    invoke-virtual {v1}, Lcom/cooliris/media/Gallery;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getMax()I

    move-result v1

    if-lt v2, v1, :cond_5b

    .line 1257
    iget-object v1, p0, Lcom/cooliris/media/MediaFeed$3;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cooliris/media/MediaFeed;->access$000(Lcom/cooliris/media/MediaFeed;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/Gallery;

    iget-object v2, v1, Lcom/cooliris/media/Gallery;->mDialHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cooliris/media/MediaFeed$3;->this$0:Lcom/cooliris/media/MediaFeed;

    #getter for: Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cooliris/media/MediaFeed;->access$000(Lcom/cooliris/media/MediaFeed;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/Gallery;

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1260
    :cond_5b
    iget-object v1, p0, Lcom/cooliris/media/MediaFeed$3;->this$0:Lcom/cooliris/media/MediaFeed;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/cooliris/media/MediaFeed$3;->val$uri:Ljava/lang/String;

    aput-object v4, v2, v3

    #calls: Lcom/cooliris/media/MediaFeed;->refresh([Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/cooliris/media/MediaFeed;->access$800(Lcom/cooliris/media/MediaFeed;[Ljava/lang/String;)V

    goto :goto_e

    .line 1250
    :catch_69
    move-exception v0

    .line 1251
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_14
.end method
