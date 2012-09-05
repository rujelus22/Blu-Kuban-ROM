.class Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;
.super Landroid/os/Handler;
.source "PopUpSearchDeviceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)V
    .registers 2
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 288
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x6e

    if-ne v3, v4, :cond_177

    .line 289
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    const v4, 0x7f070012

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 290
    .local v2, emptyview:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    const v4, 0x7f070013

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 291
    .local v1, emptytext:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceList:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$400(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 293
    :try_start_29
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mode:I
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$100(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)I
    :try_end_2e
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_29 .. :try_end_2e} :catch_6d

    move-result v3

    packed-switch v3, :pswitch_data_1fe

    .line 355
    :goto_32
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$000(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->notifyDataSetChanged()V

    .line 379
    .end local v1           #emptytext:Landroid/widget/TextView;
    .end local v2           #emptyview:Landroid/widget/ImageView;
    :cond_3b
    :goto_3b
    return-void

    .line 295
    .restart local v1       #emptytext:Landroid/widget/TextView;
    .restart local v2       #emptyview:Landroid/widget/ImageView;
    :pswitch_3c
    :try_start_3c
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceList:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$400(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v4

    const/4 v5, 0x1

    const/16 v6, 0x28

    invoke-virtual {v4, v5, v6}, Lcom/samsung/api/DigitalMediaControllerAPI;->getDMSList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 298
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceList:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$400(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_72

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mStopAnimation:Z
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$500(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Z

    move-result v3

    if-nez v3, :cond_72

    .line 299
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_6c
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_3c .. :try_end_6c} :catch_6d

    goto :goto_32

    .line 352
    :catch_6d
    move-exception v0

    .line 353
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    goto :goto_32

    .line 302
    .end local v0           #e:Lcom/samsung/api/DMCAPIException;
    :cond_72
    :try_start_72
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceList:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$400(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_89

    .line 303
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_32

    .line 306
    :cond_89
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_32

    .line 313
    :pswitch_92
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceList:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$400(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v4

    const/4 v5, 0x1

    const/16 v6, 0x28

    invoke-virtual {v4, v5, v6}, Lcom/samsung/api/DigitalMediaControllerAPI;->getDMSList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 314
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceList:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$400(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_c4

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mStopAnimation:Z
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$500(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Z

    move-result v3

    if-nez v3, :cond_c4

    .line 315
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_32

    .line 318
    :cond_c4
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceList:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$400(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_dc

    .line 319
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_32

    .line 322
    :cond_dc
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_32

    .line 328
    :pswitch_e6
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v3

    if-eqz v3, :cond_140

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v3

    if-nez v3, :cond_140

    .line 331
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceList:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$400(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mMyPlayer:Lcom/samsung/api/DeviceItem;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$600(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Lcom/samsung/api/DeviceItem;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 332
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceList:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$400(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x27

    invoke-virtual {v4, v5, v6}, Lcom/samsung/api/DigitalMediaControllerAPI;->getDMRList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 338
    :goto_122
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceList:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$400(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_155

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mStopAnimation:Z
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$500(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Z

    move-result v3

    if-nez v3, :cond_155

    .line 339
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_32

    .line 335
    :cond_140
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceList:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$400(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x28

    invoke-virtual {v4, v5, v6}, Lcom/samsung/api/DigitalMediaControllerAPI;->getDMRList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_122

    .line 342
    :cond_155
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->deviceList:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$400(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_16d

    .line 343
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 344
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_32

    .line 346
    :cond_16d
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_175
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_72 .. :try_end_175} :catch_6d

    goto/16 :goto_32

    .line 357
    .end local v1           #emptytext:Landroid/widget/TextView;
    .end local v2           #emptyview:Landroid/widget/ImageView;
    :cond_177
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_194

    .line 358
    const-string v3, "DLNA"

    const-string v4, "PopUpSearchDeviceList.STOP_ANIMATION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #setter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mStopAnimation:Z
    invoke-static {v3, v7}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$502(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;Z)Z

    .line 360
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->headerIcon:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$700(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_3b

    .line 361
    :cond_194
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3ea

    if-ne v3, v4, :cond_1a3

    .line 362
    const-string v3, "DLNA"

    const-string v4, "PopUpSearchDeviceList.ANIMATION_START"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 364
    :cond_1a3
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3eb

    if-ne v3, v4, :cond_1b7

    .line 365
    const-string v3, "DLNA"

    const-string v4, "PopUpSearchDeviceList.ANIMATION_STOP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #setter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mStopAnimation:Z
    invoke-static {v3, v7}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$502(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;Z)Z

    goto/16 :goto_3b

    .line 368
    :cond_1b7
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3ec

    if-ne v3, v4, :cond_1dd

    .line 369
    const-string v3, "DLNA"

    const-string v4, "PopUpSearchDeviceList.AUTOPLAY_DMC"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->playItNow(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    goto/16 :goto_3b

    .line 374
    :cond_1dd
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3ed

    if-ne v3, v4, :cond_3b

    .line 375
    const-string v3, "DLNA"

    const-string v4, "PopUpSearchDeviceList.SHOWTOAST_ACTION_FAILED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    const v5, 0x7f090047

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3b

    .line 293
    :pswitch_data_1fe
    .packed-switch 0x1
        :pswitch_92
        :pswitch_e6
        :pswitch_3c
    .end packed-switch
.end method
