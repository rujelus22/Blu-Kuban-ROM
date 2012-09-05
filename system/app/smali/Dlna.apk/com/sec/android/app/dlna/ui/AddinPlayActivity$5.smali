.class Lcom/sec/android/app/dlna/ui/AddinPlayActivity$5;
.super Ljava/lang/Object;
.source "AddinPlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 472
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isMutiFiles()Z
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$500(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 495
    :goto_8
    return-void

    .line 475
    :cond_9
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_17

    .line 476
    const-string v1, "DLNA_Addin"

    const-string v2, "AddinPlayActivity, uris == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 478
    :cond_17
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$300(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1f7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, currentIndex:I
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getCurrentIndex()I

    move-result v0

    .line 482
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->getRepeatState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_49

    .line 483
    if-gtz v0, :cond_3e

    .line 484
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->noOfFilesSelected:I
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$600(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 487
    :cond_3e
    add-int/lit8 v0, v0, -0x1

    .line 488
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->setCurrentIndex(I)V
    invoke-static {v1, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$700(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;I)V

    .line 489
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getCurrentIndex()I

    move-result v0

    .line 492
    :cond_49
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->tryToNextItem(I)V
    invoke-static {v1, v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$800(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;I)V

    .line 493
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$300(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x898

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_8
.end method
