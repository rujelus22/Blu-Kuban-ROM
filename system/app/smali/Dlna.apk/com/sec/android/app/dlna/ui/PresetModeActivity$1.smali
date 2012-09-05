.class Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;
.super Landroid/os/Handler;
.source "PresetModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/ui/PresetModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    const/16 v10, 0x2d0

    const/4 v9, 0x2

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 113
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_336

    .line 255
    :cond_c
    :goto_c
    :pswitch_c
    return-void

    .line 115
    :pswitch_d
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$000(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3f1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 117
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myVideoMode:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$100(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 118
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myImageMode:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$200(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 119
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myAudioMode:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$300(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 120
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mIsAnimationRunning:Z
    invoke-static {v5, v8}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$402(Lcom/sec/android/app/dlna/ui/PresetModeActivity;Z)Z

    .line 121
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mPrepareAllshare:Z
    invoke-static {v5, v8}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$502(Lcom/sec/android/app/dlna/ui/PresetModeActivity;Z)Z

    .line 123
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$000(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3ec

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 125
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 126
    .local v3, metrics:Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 127
    iget v5, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v6, 0xf0

    if-ne v5, v6, :cond_67

    .line 128
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    iput v8, v5, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    goto :goto_c

    .line 129
    :cond_67
    iget v5, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v6, 0x140

    if-ne v5, v6, :cond_c

    .line 131
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v7, :cond_94

    .line 132
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v5, v10, :cond_86

    .line 133
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    iput v7, v5, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    goto :goto_c

    .line 134
    :cond_86
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v6, 0x320

    if-ne v5, v6, :cond_c

    .line 135
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    iput v9, v5, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    goto/16 :goto_c

    .line 138
    :cond_94
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v5, v10, :cond_a0

    .line 139
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    iput v7, v5, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    goto/16 :goto_c

    .line 140
    :cond_a0
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v6, 0x320

    if-ne v5, v6, :cond_c

    .line 141
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    iput v9, v5, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    goto/16 :goto_c

    .line 149
    .end local v3           #metrics:Landroid/util/DisplayMetrics;
    :pswitch_ae
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #calls: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->destroyAllShare()V
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$600(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)V

    goto/16 :goto_c

    .line 153
    :pswitch_b5
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 155
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 157
    .local v4, netInfo:Landroid/net/NetworkInfo;
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mPrepareAllshare:Z
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$500(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Z

    move-result v5

    if-nez v5, :cond_170

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/DLNAManager;->isStarted()Z

    move-result v5

    if-nez v5, :cond_170

    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mIsAnimationRunning:Z
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$400(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Z

    move-result v5

    if-nez v5, :cond_170

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_170

    .line 160
    const-string v5, "DLNA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPrepareAllshare"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mPrepareAllshare:Z
    invoke-static {v7}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$500(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v5, "DLNA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isStarted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/dlna/DLNAManager;->isStarted()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v5, "DLNA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsAnimationRunning"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mIsAnimationRunning:Z
    invoke-static {v7}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$400(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v5, "DLNA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "equals"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$000(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3ee

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 166
    :cond_170
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    if-eqz v5, :cond_1bc

    .line 167
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v5

    if-eqz v5, :cond_1bc

    .line 168
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v5

    iget-boolean v5, v5, Lcom/sec/android/app/dlna/service/DmsLocalService;->restartPreset:Z

    if-eqz v5, :cond_1bc

    .line 169
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myVideoMode:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$100(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 170
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myImageMode:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$200(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 171
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myAudioMode:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$300(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 172
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$000(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3ee

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 173
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v5

    iput-boolean v8, v5, Lcom/sec/android/app/dlna/service/DmsLocalService;->restartPreset:Z

    .line 177
    :cond_1bc
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mPrepareAllshare:Z
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$500(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Z

    move-result v5

    if-nez v5, :cond_220

    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mIsAnimationRunning:Z
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$400(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Z

    move-result v5

    if-nez v5, :cond_220

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_220

    .line 180
    :try_start_1d8
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isVideoShared()Z

    move-result v5

    if-eqz v5, :cond_258

    .line 181
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myVideoMode:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$100(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 184
    :goto_1f0
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isImageShared()Z

    move-result v5

    if-eqz v5, :cond_268

    .line 185
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myImageMode:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$200(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 188
    :goto_208
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isAudioShared()Z

    move-result v5

    if-eqz v5, :cond_275

    .line 189
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myAudioMode:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$300(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setEnabled(Z)V
    :try_end_220
    .catch Landroid/os/RemoteException; {:try_start_1d8 .. :try_end_220} :catch_263
    .catch Ljava/lang/NullPointerException; {:try_start_1d8 .. :try_end_220} :catch_273

    .line 199
    :cond_220
    :goto_220
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/sec/android/app/dlna/DLNAManager;->setMyPlayerSelected(Z)V

    .line 202
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/dlna/DLNAManager;->selectServer(Lcom/samsung/api/DeviceItem;)Z

    .line 203
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1$1;-><init>(Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 208
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/DLNAManager;->clearPlaylist()V

    .line 210
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/DLNAManager;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 211
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    const/16 v6, 0x2f5

    invoke-virtual {v5, v6}, Lcom/sec/android/app/dlna/DLNAManager;->notifyToActivity(I)V

    goto/16 :goto_c

    .line 183
    :cond_258
    :try_start_258
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myVideoMode:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$100(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setEnabled(Z)V
    :try_end_262
    .catch Landroid/os/RemoteException; {:try_start_258 .. :try_end_262} :catch_263
    .catch Ljava/lang/NullPointerException; {:try_start_258 .. :try_end_262} :catch_273

    goto :goto_1f0

    .line 192
    :catch_263
    move-exception v2

    .line 193
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_220

    .line 187
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_268
    :try_start_268
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myImageMode:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$200(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto :goto_208

    .line 194
    :catch_273
    move-exception v5

    goto :goto_220

    .line 191
    :cond_275
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myAudioMode:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$300(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setEnabled(Z)V
    :try_end_27f
    .catch Landroid/os/RemoteException; {:try_start_268 .. :try_end_27f} :catch_263
    .catch Ljava/lang/NullPointerException; {:try_start_268 .. :try_end_27f} :catch_273

    goto :goto_220

    .line 215
    .end local v1           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v4           #netInfo:Landroid/net/NetworkInfo;
    :pswitch_280
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mIsAnimationRunning:Z
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$400(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 216
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mIsAnimationRunning:Z
    invoke-static {v5, v7}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$402(Lcom/sec/android/app/dlna/ui/PresetModeActivity;Z)Z

    .line 217
    new-instance v0, Ljava/lang/Thread;

    new-instance v5, Lcom/sec/android/app/dlna/ui/PresetModeActivity$AnimationThread;

    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sec/android/app/dlna/ui/PresetModeActivity$AnimationThread;-><init>(Lcom/sec/android/app/dlna/ui/PresetModeActivity;Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;)V

    invoke-direct {v0, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 218
    .local v0, animationThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_c

    .line 224
    .end local v0           #animationThread:Ljava/lang/Thread;
    :pswitch_29f
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mProgress0:Landroid/widget/ProgressBar;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$800(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 225
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mProgress1:Landroid/widget/ProgressBar;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$900(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 226
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mProgress2:Landroid/widget/ProgressBar;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$1000(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 228
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mMyVideoButton:Landroid/widget/ImageButton;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$1100(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 229
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mMyImageButton:Landroid/widget/ImageButton;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$1200(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 230
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mMyAudioButton:Landroid/widget/ImageButton;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$1300(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_c

    .line 234
    :pswitch_2d7
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mProgress0:Landroid/widget/ProgressBar;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$800(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 235
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mProgress1:Landroid/widget/ProgressBar;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$900(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 236
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mProgress2:Landroid/widget/ProgressBar;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$1000(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 238
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mMyVideoButton:Landroid/widget/ImageButton;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$1100(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 239
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mMyImageButton:Landroid/widget/ImageButton;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$1200(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 240
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mMyAudioButton:Landroid/widget/ImageButton;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$1300(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_c

    .line 244
    :pswitch_30f
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 246
    .restart local v1       #connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 249
    .restart local v4       #netInfo:Landroid/net/NetworkInfo;
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 250
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    const/16 v6, 0x3eb

    invoke-virtual {v5, v6}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->showDialog(I)V

    goto/16 :goto_c

    .line 113
    :pswitch_data_336
    .packed-switch 0x3e9
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b5
        :pswitch_ae
        :pswitch_280
        :pswitch_29f
        :pswitch_30f
        :pswitch_2d7
    .end packed-switch
.end method
