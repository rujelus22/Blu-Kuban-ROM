.class Lcom/sec/android/app/dlna/ui/SearchDeviceList$2;
.super Landroid/os/Handler;
.source "SearchDeviceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/SearchDeviceList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)V
    .registers 2
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x8

    .line 213
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x6e

    if-ne v4, v5, :cond_cc

    .line 215
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    const v5, 0x7f070012

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 216
    .local v2, emptyview:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    const v5, 0x7f070013

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 217
    .local v1, emptytext:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/SearchDeviceList;->deviceList:Ljava/util/List;
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->access$200(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 219
    :try_start_28
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/SearchDeviceList;->mode:I
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->access$100(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)I
    :try_end_2d
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_28 .. :try_end_2d} :catch_a5

    move-result v4

    packed-switch v4, :pswitch_data_f8

    .line 252
    :goto_31
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/SearchDeviceList;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->access$000(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->notifyDataSetChanged()V

    .line 263
    .end local v1           #emptytext:Landroid/widget/TextView;
    .end local v2           #emptyview:Landroid/widget/ImageView;
    :cond_3a
    :goto_3a
    return-void

    .line 221
    .restart local v1       #emptytext:Landroid/widget/TextView;
    .restart local v2       #emptyview:Landroid/widget/ImageView;
    :pswitch_3b
    :try_start_3b
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/SearchDeviceList;->deviceList:Ljava/util/List;
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->access$200(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v5

    const/4 v6, 0x1

    const/16 v7, 0x28

    invoke-virtual {v5, v6, v7}, Lcom/samsung/api/DigitalMediaControllerAPI;->getDMSList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    sget-object v4, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->Remembered_Device_UDN:Ljava/lang/String;

    if-eqz v4, :cond_88

    .line 225
    const/4 v3, 0x0

    .local v3, i:I
    :goto_54
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/SearchDeviceList;->deviceList:Ljava/util/List;
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->access$200(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_88

    .line 226
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/SearchDeviceList;->deviceList:Ljava/util/List;
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->access$200(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/api/DeviceItem;

    invoke-virtual {v4}, Lcom/samsung/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->Remembered_Device_UDN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    iget-boolean v4, v4, Lcom/sec/android/app/dlna/DLNAManager;->Remembered_Device:Z

    if-nez v4, :cond_85

    .line 228
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->start_activity()V

    .line 225
    :cond_85
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .line 233
    .end local v3           #i:I
    :cond_88
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/SearchDeviceList;->deviceList:Ljava/util/List;
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->access$200(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_aa

    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/SearchDeviceList;->mStopAnimation:Z
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->access$300(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)Z

    move-result v4

    if-nez v4, :cond_aa

    .line 234
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_a4
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_3b .. :try_end_a4} :catch_a5

    goto :goto_31

    .line 249
    :catch_a5
    move-exception v0

    .line 250
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    goto :goto_31

    .line 237
    .end local v0           #e:Lcom/samsung/api/DMCAPIException;
    :cond_aa
    :try_start_aa
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/SearchDeviceList;->deviceList:Ljava/util/List;
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->access$200(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c2

    .line 238
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_31

    .line 242
    :cond_c2
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_ca
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_aa .. :try_end_ca} :catch_a5

    goto/16 :goto_31

    .line 254
    .end local v1           #emptytext:Landroid/widget/TextView;
    .end local v2           #emptyview:Landroid/widget/ImageView;
    :cond_cc
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x3e9

    if-ne v4, v5, :cond_e9

    .line 255
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    #setter for: Lcom/sec/android/app/dlna/ui/SearchDeviceList;->mStopAnimation:Z
    invoke-static {v4, v7}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->access$302(Lcom/sec/android/app/dlna/ui/SearchDeviceList;Z)Z

    .line 256
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$2;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/SearchDeviceList;->scanning:Landroid/view/View;
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->access$400(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 257
    const-string v4, "DLNA"

    const-string v5, "STOP_ANIMATION"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    .line 258
    :cond_e9
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x3ea

    if-eq v4, v5, :cond_3a

    .line 260
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x3eb

    if-ne v4, v5, :cond_3a

    goto/16 :goto_3a

    .line 219
    nop

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_3b
    .end packed-switch
.end method
