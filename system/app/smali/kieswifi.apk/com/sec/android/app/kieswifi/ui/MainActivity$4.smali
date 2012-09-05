.class Lcom/sec/android/app/kieswifi/ui/MainActivity$4;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/kieswifi/ui/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/MainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 179
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_1f0

    .line 256
    :cond_9
    :goto_9
    return-void

    .line 182
    :sswitch_a
    const-string v2, "handleMessage : MAIN_DESTROY"

    invoke-static {v3, v2}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 183
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #calls: Lcom/sec/android/app/kieswifi/ui/MainActivity;->destroyKiesWifi()V
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$300(Lcom/sec/android/app/kieswifi/ui/MainActivity;)V

    goto :goto_9

    .line 188
    :sswitch_15
    const-string v2, "handleMessage : REFRESH"

    invoke-static {v3, v2}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceList:Ljava/util/List;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$100(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 192
    :try_start_23
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->headerText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$400(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    const v4, 0x7f070011

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/kieswifi/UpnpManager;->getCurrentApName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->headerText_search:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$500(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    const v4, 0x7f070011

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/kieswifi/UpnpManager;->getCurrentApName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->headerText_search_h:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$600(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    const v4, 0x7f070011

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/kieswifi/UpnpManager;->getCurrentApName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceList:Ljava/util/List;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$100(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/samsung/api/SyncControllerAPI;->getInstance()Lcom/samsung/api/SyncControllerAPI;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v5}, Lcom/samsung/api/SyncControllerAPI;->getKiesList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 197
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceList:Ljava/util/List;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$100(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_ca

    .line 199
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    const/4 v3, 0x1

    #setter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->mStopAnimation:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$702(Lcom/sec/android/app/kieswifi/ui/MainActivity;Z)Z

    .line 200
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptyview:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$800(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptytext:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$900(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->enterwpa:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$1000(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 204
    :cond_ca
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage : deviceList.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceList:Ljava/util/List;
    invoke-static {v4}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$100(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mStopAnimation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->mStopAnimation:Z
    invoke-static {v4}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$700(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V
    :try_end_fb
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_23 .. :try_end_fb} :catch_106

    .line 208
    :goto_fb
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceAdapter:Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$1100(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;->notifyDataSetChanged()V

    goto/16 :goto_9

    .line 205
    :catch_106
    move-exception v0

    .line 206
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    goto :goto_fb

    .line 213
    .end local v0           #e:Lcom/samsung/api/DMCAPIException;
    :sswitch_10b
    const-string v2, "handleMessage : ANIMATION_START_mainactivity"

    invoke-static {v3, v2}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 214
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->server_header:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$1200(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 215
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->server_search_header:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$1300(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 216
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptyview:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$800(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptytext:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$900(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, orientation:I
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 221
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    iget-boolean v2, v2, Lcom/sec/android/app/kieswifi/ui/MainActivity;->wifiApEnabled:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_162

    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/kieswifi/ui/MainActivity;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_162
    if-eqz v1, :cond_167

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 224
    :cond_167
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->enterwpa:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$1000(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_9

    .line 231
    .end local v1           #orientation:I
    :sswitch_172
    const-string v2, "handleMessage : ANIMATION_STOP_mainactivity"

    invoke-static {v3, v2}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #setter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->mStopAnimation:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$702(Lcom/sec/android/app/kieswifi/ui/MainActivity;Z)Z

    .line 234
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->mRefreshButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$200(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setClickable(Z)V

    .line 235
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->mRefreshButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$200(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 236
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceList:Ljava/util/List;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$100(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1b5

    .line 237
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptyview:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$800(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptytext:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$900(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->enterwpa:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$1000(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 242
    :cond_1b5
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->server_header:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$1200(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 243
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->server_search_header:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$1300(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_9

    .line 248
    :sswitch_1c9
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceList:Ljava/util/List;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$100(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 249
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceAdapter:Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$1100(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;->notifyDataSetChanged()V

    .line 250
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptyview:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$800(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->emptytext:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$900(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 179
    nop

    :sswitch_data_1f0
    .sparse-switch
        0x6e -> :sswitch_15
        0x3ed -> :sswitch_a
        0x3ef -> :sswitch_10b
        0x3f0 -> :sswitch_172
        0x3f1 -> :sswitch_1c9
    .end sparse-switch
.end method
