.class Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;
.super Landroid/os/Handler;
.source "MainActivityTablet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)V
    .registers 2
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 138
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_164

    .line 220
    :goto_9
    return-void

    .line 141
    :sswitch_a
    const-string v1, "handleMessage : MAIN_DESTROY"

    invoke-static {v2, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #calls: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->destroyKiesWifi()V
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$300(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)V

    goto :goto_9

    .line 147
    :sswitch_15
    const-string v1, "handleMessage : REFRESH"

    invoke-static {v2, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->deviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$100(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 151
    :try_start_23
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->apName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$400(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    const v3, 0x7f070011

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/kieswifi/UpnpManager;->getCurrentApName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->deviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$100(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/samsung/api/SyncControllerAPI;->getInstance()Lcom/samsung/api/SyncControllerAPI;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Lcom/samsung/api/SyncControllerAPI;->getKiesList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 154
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->deviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$100(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6f

    .line 156
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mStopAnimation:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$502(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;Z)Z

    .line 157
    const/4 v1, 0x1

    const-string v2, "handleMessage : deviceList.size>0"

    invoke-static {v1, v2}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 159
    :cond_6f
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage : deviceList.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->deviceList:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$100(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mStopAnimation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mStopAnimation:Z
    invoke-static {v3}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$500(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V
    :try_end_a0
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_23 .. :try_end_a0} :catch_ac

    .line 165
    :goto_a0
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    new-instance v2, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4$1;-><init>(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_9

    .line 160
    :catch_ac
    move-exception v0

    .line 161
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    goto :goto_a0

    .line 176
    .end local v0           #e:Lcom/samsung/api/DMCAPIException;
    :sswitch_b1
    const-string v1, "handleMessage : ANIMATION_START_mainactivity"

    invoke-static {v2, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->searchProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$700(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 178
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mRefreshButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$200(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 180
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->no_device_layout:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$800(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->device_list_layout:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$900(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 189
    :sswitch_dc
    const-string v1, "handleMessage : ANIMATION_STOP_mainactivity"

    invoke-static {v2, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #setter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mStopAnimation:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$502(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;Z)Z

    .line 192
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mRefreshButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$200(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mRefreshButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$200(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 194
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->searchProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$700(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mRefreshButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$200(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 197
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->deviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$100(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_12a

    .line 199
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->no_device_layout:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$800(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->device_list_layout:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$900(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 204
    :cond_12a
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->no_device_layout:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$800(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->device_list_layout:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$900(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 212
    :sswitch_13e
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->deviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$100(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 213
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->deviceAdapter:Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$600(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;->notifyDataSetChanged()V

    .line 214
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->no_device_layout:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$800(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->device_list_layout:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$900(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 138
    :sswitch_data_164
    .sparse-switch
        0x6e -> :sswitch_15
        0x3ed -> :sswitch_a
        0x3ef -> :sswitch_b1
        0x3f0 -> :sswitch_dc
        0x3f1 -> :sswitch_13e
    .end sparse-switch
.end method
