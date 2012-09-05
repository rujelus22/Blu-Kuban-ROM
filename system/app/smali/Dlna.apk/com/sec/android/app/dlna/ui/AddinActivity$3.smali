.class Lcom/sec/android/app/dlna/ui/AddinActivity$3;
.super Landroid/os/Handler;
.source "AddinActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/AddinActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/AddinActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 357
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->mAllShareReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$200(Lcom/sec/android/app/dlna/ui/AddinActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-nez v0, :cond_10

    .line 502
    :cond_f
    :goto_f
    return-void

    .line 362
    :cond_10
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_210

    goto :goto_f

    .line 415
    :sswitch_16
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinActivity;->setMediaName()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$900(Lcom/sec/android/app/dlna/ui/AddinActivity;)V

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinActivity;->setupProgressBar()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$1000(Lcom/sec/android/app/dlna/ui/AddinActivity;)V

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinActivity;->dismissInitDialog()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$1100(Lcom/sec/android/app/dlna/ui/AddinActivity;)V

    goto :goto_f

    .line 364
    :sswitch_26
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/dlna/DLNAManager;->SetTapMode(Z)V

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceList:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$300(Lcom/sec/android/app/dlna/ui/AddinActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceList:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$300(Lcom/sec/android/app/dlna/ui/AddinActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$400(Lcom/sec/android/app/dlna/ui/AddinActivity;)Lcom/sec/android/app/dlna/DLNAAddinManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayerList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$500(Lcom/sec/android/app/dlna/ui/AddinActivity;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->notifyDataSetChanged()V

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceList:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$300(Lcom/sec/android/app/dlna/ui/AddinActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_80

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->mStopAnimation:Z
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$600(Lcom/sec/android/app/dlna/ui/AddinActivity;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->emptytext:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->emptyview:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    :goto_74
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$700(Lcom/sec/android/app/dlna/ui/AddinActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x44c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_f

    .line 373
    :cond_80
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceList:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$300(Lcom/sec/android/app/dlna/ui/AddinActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9b

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->emptytext:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->emptyview:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_74

    .line 377
    :cond_9b
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->emptytext:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->emptyview:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_74

    .line 387
    :sswitch_aa
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$500(Lcom/sec/android/app/dlna/ui/AddinActivity;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->notifyDataSetChanged()V

    goto/16 :goto_f

    .line 391
    :sswitch_b5
    const-string v0, "DLNA_Addin"

    const-string v1, "AddInActivity, mHandler, Refresh_Header"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceList:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$300(Lcom/sec/android/app/dlna/ui/AddinActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceList:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$300(Lcom/sec/android/app/dlna/ui/AddinActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_e8

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->mStopAnimation:Z
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$600(Lcom/sec/android/app/dlna/ui/AddinActivity;)Z

    move-result v0

    if-nez v0, :cond_e8

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->emptytext:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->emptyview:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_f

    .line 398
    :cond_e8
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceList:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$300(Lcom/sec/android/app/dlna/ui/AddinActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_104

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->emptytext:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->emptyview:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_f

    .line 402
    :cond_104
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->emptytext:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->emptyview:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_f

    .line 410
    :sswitch_114
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->mStopAnimation:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$602(Lcom/sec/android/app/dlna/ui/AddinActivity;Z)Z

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->headerIcon:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$800(Lcom/sec/android/app/dlna/ui/AddinActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_f

    .line 421
    :sswitch_124
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->isConnected()Z

    move-result v0

    if-nez v0, :cond_13b

    .line 423
    :try_start_12c
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    const/16 v1, 0x6f1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->showDialog(I)V
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_133} :catch_135

    goto/16 :goto_f

    .line 424
    :catch_135
    move-exception v0

    .line 425
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    .line 428
    :cond_13b
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinActivity;->showInitDialog()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$1200(Lcom/sec/android/app/dlna/ui/AddinActivity;)V

    goto/16 :goto_f

    .line 433
    :sswitch_142
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->isWifiSettingsLaunched()Z

    move-result v0

    if-ne v0, v4, :cond_1a9

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dlna/ui/AddinActivity;->setWifiSettingsLaunched(Z)V

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$400(Lcom/sec/android/app/dlna/ui/AddinActivity;)Lcom/sec/android/app/dlna/DLNAAddinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getStateType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a9

    .line 437
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    const-class v2, Lcom/sec/android/app/dlna/ui/AddinActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->uris:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$1300(Lcom/sec/android/app/dlna/ui/AddinActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_19d

    .line 440
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->uris:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$1300(Lcom/sec/android/app/dlna/ui/AddinActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_1b8

    .line 441
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string v2, "android.intent.extra.STREAM"

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->uris:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$1300(Lcom/sec/android/app/dlna/ui/AddinActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 448
    :goto_18f
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->mMediaType:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$1400(Lcom/sec/android/app/dlna/ui/AddinActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    const/high16 v0, 0x400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 452
    :cond_19d
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->startActivity(Landroid/content/Intent;)V

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->finishActivity(I)V

    .line 458
    :cond_1a9
    :try_start_1a9
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    const/16 v1, 0x6f1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->removeDialog(I)V
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_1b0} :catch_1b2

    goto/16 :goto_f

    .line 459
    :catch_1b2
    move-exception v0

    .line 460
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    .line 444
    :cond_1b8
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    const-string v0, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->uris:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$1300(Lcom/sec/android/app/dlna/ui/AddinActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_18f

    .line 465
    :sswitch_1c9
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinActivity;->setupProgressBar()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$1000(Lcom/sec/android/app/dlna/ui/AddinActivity;)V

    goto/16 :goto_f

    .line 469
    :sswitch_1d0
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinActivity;->dismissRequestDialog()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$1500(Lcom/sec/android/app/dlna/ui/AddinActivity;)V

    goto/16 :goto_f

    .line 473
    :sswitch_1d7
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinActivity;->dismissRequestDialog()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$1500(Lcom/sec/android/app/dlna/ui/AddinActivity;)V

    .line 476
    :try_start_1dc
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    const/16 v1, 0x708

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->showDialog(I)V
    :try_end_1e3
    .catch Ljava/lang/Exception; {:try_start_1dc .. :try_end_1e3} :catch_1e5

    goto/16 :goto_f

    .line 477
    :catch_1e5
    move-exception v0

    .line 478
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    .line 483
    :sswitch_1eb
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinActivity;->updateProgressBar()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$1600(Lcom/sec/android/app/dlna/ui/AddinActivity;)V

    goto/16 :goto_f

    .line 488
    :sswitch_1f2
    :try_start_1f2
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    const/16 v1, 0x708

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->showDialog(I)V
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_1f2 .. :try_end_1f9} :catch_1fb

    goto/16 :goto_f

    .line 489
    :catch_1fb
    move-exception v0

    .line 490
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    .line 495
    :sswitch_201
    const-string v0, "DLNA_Addin"

    const-string v1, "AddinActivity, ADDIN_HANDLE_STOP"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->handleStop()V

    goto/16 :goto_f

    .line 362
    nop

    :sswitch_data_210
    .sparse-switch
        0x65 -> :sswitch_16
        0x66 -> :sswitch_124
        0x68 -> :sswitch_1d0
        0x69 -> :sswitch_1c9
        0x6a -> :sswitch_1eb
        0x6d -> :sswitch_1d7
        0x70 -> :sswitch_1f2
        0x71 -> :sswitch_142
        0x1f4 -> :sswitch_26
        0x1f6 -> :sswitch_aa
        0x44c -> :sswitch_b5
        0x44d -> :sswitch_114
        0x834 -> :sswitch_201
    .end sparse-switch
.end method
