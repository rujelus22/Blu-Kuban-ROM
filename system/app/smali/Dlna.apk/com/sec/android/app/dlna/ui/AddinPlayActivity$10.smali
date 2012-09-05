.class Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;
.super Landroid/os/Handler;
.source "AddinPlayActivity.java"


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
    .line 550
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter

    .prologue
    const/16 v7, 0x320

    const/16 v6, 0x2d0

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 552
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 553
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 787
    :cond_12
    :goto_12
    :sswitch_12
    return-void

    .line 555
    :cond_13
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_3b2

    goto :goto_12

    .line 609
    :sswitch_19
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->setMediaName()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$1100(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    .line 610
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->setupProgressBar()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2100(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    .line 611
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dismissInitDialog()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2400(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    .line 613
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/dlna/dlnaservice/ContentsHelper;->getContentInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 614
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Lcom/sec/android/app/dlna/DLNAAddinManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->setContents(Ljava/util/HashMap;)V

    .line 615
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 616
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 618
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_158

    .line 619
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    iput v4, v0, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    goto :goto_12

    .line 557
    :sswitch_64
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_bc

    .line 558
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mBrowsedItemCnt:I
    invoke-static {v0, v3}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$1002(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;I)I

    .line 563
    :goto_6f
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->setMediaName()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$1100(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    .line 565
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->bOnCreated:Z
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$1200(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Z

    move-result v0

    if-ne v0, v3, :cond_ca

    .line 566
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$1300(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Landroid/widget/ListView;

    move-result-object v1

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->createAdapter(Landroid/widget/ListView;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$1400(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;Landroid/widget/ListView;)V

    .line 567
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->bOnCreated:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$1202(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;Z)Z

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->bItemPlayTry:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$1502(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;Z)Z

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dismissRequestDialog()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$1600(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    .line 570
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$300(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x898

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 575
    :goto_a1
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->setPlaylistControl()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$1800(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/dlna/view/MediaControlView;->setVisibility(I)V

    .line 577
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$300(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x44c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_12

    .line 560
    :cond_bc
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    #setter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mBrowsedItemCnt:I
    invoke-static {v0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$1002(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;I)I

    goto :goto_6f

    .line 572
    :cond_ca
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->myAdapter:Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$1700(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->notifyDataSetChanged()V

    goto :goto_a1

    .line 584
    :sswitch_d4
    const-string v0, "DLNA_Addin"

    const-string v1, "AddinPlayActivity, mHandler, Refresh_Header"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->bItemPlayTry:Z
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$1500(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Z

    move-result v0

    if-ne v0, v3, :cond_12

    .line 587
    const-string v0, "DLNA_Addin"

    const-string v1, "mHandler, Refresh_Header,, bNewDlna"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Lcom/sec/android/app/dlna/DLNAAddinManager;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$1900()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAAddinManager;->selectPlayer(Lcom/samsung/api/DeviceItem;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 589
    const-string v0, "DLNA_Addin"

    const-string v1, "REFRESH_HEADER, deviceForMultiFiles :: in IF loop, going to call requestForcePlay() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    sput-boolean v3, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mRefreshList:Z

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isMutiFiles()Z
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$500(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Z

    move-result v0

    if-ne v0, v3, :cond_137

    .line 593
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getCurrentIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->noOfFilesSelected:I
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$600(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setCurrentIndex(Ljava/lang/String;)V

    .line 596
    :cond_137
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->setupProgressBar()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2100(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    .line 597
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->updateProgressBar()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2200(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    .line 598
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Lcom/sec/android/app/dlna/DLNAAddinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->requestForcePlay()V

    .line 599
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->bItemPlayTry:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$1502(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;Z)Z

    goto/16 :goto_12

    .line 605
    :sswitch_151
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mStopAnimation:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2302(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;Z)Z

    goto/16 :goto_12

    .line 620
    :cond_158
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0x140

    if-ne v1, v2, :cond_12

    .line 621
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_184

    .line 622
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v6, :cond_178

    .line 623
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    iput v3, v0, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    goto/16 :goto_12

    .line 624
    :cond_178
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v0, v7, :cond_12

    .line 625
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    iput v5, v0, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    goto/16 :goto_12

    .line 627
    :cond_184
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v6, :cond_190

    .line 628
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    iput v3, v0, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    goto/16 :goto_12

    .line 629
    :cond_190
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v0, v7, :cond_12

    .line 630
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    iput v5, v0, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    goto/16 :goto_12

    .line 636
    :sswitch_19c
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1b3

    .line 638
    :try_start_1a4
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    const/16 v1, 0x6f1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->showDialog(I)V
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1ab} :catch_1ad

    goto/16 :goto_12

    .line 639
    :catch_1ad
    move-exception v0

    .line 640
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 643
    :cond_1b3
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->showInitDialog()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2500(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    goto/16 :goto_12

    .line 648
    :sswitch_1ba
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isWifiSettingsLaunched()Z

    move-result v0

    if-ne v0, v3, :cond_227

    .line 649
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->setWifiSettingsLaunched(Z)V

    .line 651
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Lcom/sec/android/app/dlna/DLNAAddinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getStateType()I

    move-result v0

    if-ne v0, v5, :cond_220

    .line 652
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    const-class v2, Lcom/sec/android/app/dlna/ui/AddinActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 654
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_21b

    .line 655
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_236

    .line 656
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mimeTypeOfMultiSelectedFiles:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2700(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    #setter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mMediaType:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2602(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 657
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 658
    const-string v2, "android.intent.extra.STREAM"

    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 665
    :goto_20d
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mMediaType:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2600(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    const/high16 v0, 0x400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 669
    :cond_21b
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->startActivity(Landroid/content/Intent;)V

    .line 672
    :cond_220
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->finishActivity(I)V

    .line 676
    :cond_227
    :try_start_227
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    const/16 v1, 0x6f1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->removeDialog(I)V
    :try_end_22e
    .catch Ljava/lang/Exception; {:try_start_227 .. :try_end_22e} :catch_230

    goto/16 :goto_12

    .line 677
    :catch_230
    move-exception v0

    .line 678
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 660
    :cond_236
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mimeTypeOfMultiSelectedFiles:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2700(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getCurrentIndex()I

    move-result v3

    aget-object v2, v2, v3

    #setter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mMediaType:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2602(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 661
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    const-string v0, "android.intent.extra.STREAM"

    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_20d

    .line 683
    :sswitch_256
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->setupProgressBar()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2100(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    goto/16 :goto_12

    .line 687
    :sswitch_25d
    const-string v0, "DLNA_Addin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddinPlayActivity.ADDIN_PLAY_SUCCESS with mMimeType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mMimeType:I
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2800(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mMimeType:I
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2800(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_28f

    .line 689
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$300(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x89a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 692
    :cond_28f
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isMutiFiles()Z
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$500(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Z

    move-result v0

    if-ne v0, v3, :cond_12

    .line 693
    const-string v0, "DLNA_Addin"

    const-string v1, "mAutoPlay == true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Lcom/sec/android/app/dlna/DLNAAddinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    if-eqz v0, :cond_2ae

    sget-boolean v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mAutoPlay:Z

    if-nez v0, :cond_2b7

    .line 696
    :cond_2ae
    const-string v0, "DLNA_Addin"

    const-string v1, "AddinPlayActivity, mAutoPlay == false or,, dlna.getPlayItem() == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 698
    :cond_2b7
    const-string v0, "DLNA_Addin"

    const-string v1, "AddinPlayActivity, play()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->play()V

    goto/16 :goto_12

    .line 705
    :sswitch_2c5
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$300(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x89a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 708
    :try_start_2d0
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    const/16 v1, 0x708

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->showDialog(I)V
    :try_end_2d7
    .catch Ljava/lang/Exception; {:try_start_2d0 .. :try_end_2d7} :catch_2d9

    goto/16 :goto_12

    .line 709
    :catch_2d9
    move-exception v0

    .line 710
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 715
    :sswitch_2df
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->updateProgressBar()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2200(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V

    goto/16 :goto_12

    .line 719
    :sswitch_2e6
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/dlna/view/MediaControlView;->setSeeking(Z)V

    goto/16 :goto_12

    .line 726
    :sswitch_2f1
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/dlna/view/MediaControlView;->setClickable(Z)V

    .line 727
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setEnabled(Z)V

    goto/16 :goto_12

    .line 731
    :sswitch_307
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dlna/view/MediaControlView;->setClickable(Z)V

    .line 732
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setEnabled(Z)V

    goto/16 :goto_12

    .line 737
    :sswitch_31d
    :try_start_31d
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    const/16 v1, 0x708

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->showDialog(I)V
    :try_end_324
    .catch Ljava/lang/Exception; {:try_start_31d .. :try_end_324} :catch_326

    goto/16 :goto_12

    .line 738
    :catch_326
    move-exception v0

    .line 739
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 744
    :sswitch_32c
    const-string v0, "DLNA_Addin"

    const-string v1, "AddinPlayActivity, SHOW_NEXT_IMAGE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :try_start_333
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->handleNext()V
    :try_end_338
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_333 .. :try_end_338} :catch_33a

    goto/16 :goto_12

    .line 748
    :catch_33a
    move-exception v0

    .line 750
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    goto/16 :goto_12

    .line 755
    :sswitch_340
    const-string v0, "DLNA_Addin"

    const-string v1, "AddinPlayActivity, ADDIN_HANDLE_STOP"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->handleStop()V

    goto/16 :goto_12

    .line 760
    :sswitch_34e
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mIsBuffering:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2902(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;Z)Z

    .line 761
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    const/16 v1, 0x70a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->showDialog(I)V

    goto/16 :goto_12

    .line 765
    :sswitch_35c
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mIsBuffering:Z
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2900(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Z

    move-result v0

    if-ne v0, v3, :cond_12

    .line 766
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mIsBuffering:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2902(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;Z)Z

    .line 767
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    const/16 v1, 0x70a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->removeDialog(I)V

    goto/16 :goto_12

    .line 772
    :sswitch_372
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    const v2, 0x7f090047

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_12

    .line 776
    :sswitch_38a
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 777
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 779
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 780
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    const/16 v1, 0x6f3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->showDialog(I)V

    goto/16 :goto_12

    .line 555
    nop

    :sswitch_data_3b2
    .sparse-switch
        0x65 -> :sswitch_19
        0x66 -> :sswitch_19c
        0x68 -> :sswitch_25d
        0x69 -> :sswitch_256
        0x6a -> :sswitch_2df
        0x6b -> :sswitch_12
        0x6c -> :sswitch_2e6
        0x6d -> :sswitch_2c5
        0x6e -> :sswitch_2f1
        0x6f -> :sswitch_307
        0x70 -> :sswitch_31d
        0x71 -> :sswitch_1ba
        0x1f4 -> :sswitch_64
        0x1f6 -> :sswitch_12
        0x1f7 -> :sswitch_32c
        0x3f0 -> :sswitch_38a
        0x44c -> :sswitch_d4
        0x44d -> :sswitch_151
        0x834 -> :sswitch_340
        0x898 -> :sswitch_34e
        0x899 -> :sswitch_372
        0x89a -> :sswitch_35c
    .end sparse-switch
.end method
