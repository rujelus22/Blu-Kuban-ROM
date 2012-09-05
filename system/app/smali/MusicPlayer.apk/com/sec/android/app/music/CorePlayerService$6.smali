.class Lcom/sec/android/app/music/CorePlayerService$6;
.super Landroid/content/BroadcastReceiver;
.source "CorePlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/CorePlayerService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/CorePlayerService;)V
    .registers 2
    .parameter

    .prologue
    .line 896
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService$6;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 900
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 903
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 904
    const-string v2, "state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_57

    move v2, v3

    :goto_18
    sput-boolean v2, Lcom/sec/android/app/music/MusicUtils;->sIsHeadsetPlugged:Z

    .line 909
    sget-boolean v2, Lcom/sec/android/app/music/MusicUtils;->sIsHeadsetPlugged:Z

    if-nez v2, :cond_59

    .line 910
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$6;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->asyncHeadsetTask:Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;
    invoke-static {v2}, Lcom/sec/android/app/music/CorePlayerService;->access$1600(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;

    move-result-object v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$6;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->asyncHeadsetTask:Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;
    invoke-static {v2}, Lcom/sec/android/app/music/CorePlayerService;->access$1600(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v5, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v5, :cond_3d

    .line 912
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$6;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->asyncHeadsetTask:Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;
    invoke-static {v2}, Lcom/sec/android/app/music/CorePlayerService;->access$1600(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;->cancel(Z)Z

    .line 921
    :cond_3d
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$6;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    new-instance v5, Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;

    iget-object v6, p0, Lcom/sec/android/app/music/CorePlayerService$6;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct {v5, v6, v4}, Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;-><init>(Lcom/sec/android/app/music/CorePlayerService;I)V

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->asyncHeadsetTask:Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;
    invoke-static {v2, v5}, Lcom/sec/android/app/music/CorePlayerService;->access$1602(Lcom/sec/android/app/music/CorePlayerService;Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;)Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;

    .line 922
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$6;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->asyncHeadsetTask:Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;
    invoke-static {v2}, Lcom/sec/android/app/music/CorePlayerService;->access$1600(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;

    move-result-object v2

    new-array v3, v3, [Landroid/content/Context;

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 972
    :cond_56
    :goto_56
    return-void

    :cond_57
    move v2, v4

    .line 904
    goto :goto_18

    .line 931
    :cond_59
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$6;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const-string v3, "musicPlayer.service.HEADSET_PLUG_CHANGE"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/music/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    goto :goto_56

    .line 933
    :cond_61
    const-string v2, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 934
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$6;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #calls: Lcom/sec/android/app/music/CorePlayerService;->setEq()V
    invoke-static {v2}, Lcom/sec/android/app/music/CorePlayerService;->access$1700(Lcom/sec/android/app/music/CorePlayerService;)V

    .line 935
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$6;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const-string v3, "musicPlayer.service.DOCK_PLUG_CHANGE"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/music/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    goto :goto_56

    .line 938
    :cond_76
    const-string v2, "Intent.ACTION_HDMI_PLUG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 939
    const-string v2, "state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 940
    .local v1, state:I
    const-string v2, "CorePlayerService"

    const-string v5, "ACTION_HDMI_PLUG receive !!!  : "

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    if-nez v1, :cond_9a

    .line 942
    const-string v2, "CorePlayerService"

    const-string v3, "ACTION_HDMI_PLUG - disconnected "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$6;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #calls: Lcom/sec/android/app/music/CorePlayerService;->setUlpBypassInternal(ZZ)V
    invoke-static {v2, v4, v4}, Lcom/sec/android/app/music/CorePlayerService;->access$1800(Lcom/sec/android/app/music/CorePlayerService;ZZ)V

    goto :goto_56

    .line 944
    :cond_9a
    if-ne v1, v3, :cond_56

    .line 945
    const-string v2, "CorePlayerService"

    const-string v5, "ACTION_HDMI_PLUG - connected "

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    sget-object v2, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v2, v2, v3

    const/high16 v5, 0x2

    if-eq v2, v5, :cond_bc

    sget-object v2, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v2, v2, v3

    const v5, 0x8000

    if-eq v2, v5, :cond_bc

    sget-object v2, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v2, v2, v3

    const/high16 v5, 0x8

    if-ne v2, v5, :cond_f0

    .line 954
    :cond_bc
    const-string v2, "CorePlayerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_HDMI_PLUG, Effect:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->Normal"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    sget-object v2, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/16 v5, 0x1000

    aput v5, v2, v3

    .line 957
    invoke-static {v4}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->setEffect(I)V

    .line 959
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$6;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v2}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->saveSettingValue(Landroid/content/Context;)V

    .line 962
    :cond_f0
    sget-object v2, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v2, v2, v7

    const/high16 v5, 0x20

    if-ne v2, v5, :cond_105

    .line 963
    const-string v2, "CorePlayerService"

    const-string v5, "ACTION_HDMI_PLUG 5.1CH: On -> Off"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    sget-object v2, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/high16 v5, 0x40

    aput v5, v2, v7

    .line 966
    :cond_105
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$6;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #calls: Lcom/sec/android/app/music/CorePlayerService;->setEq()V
    invoke-static {v2}, Lcom/sec/android/app/music/CorePlayerService;->access$1700(Lcom/sec/android/app/music/CorePlayerService;)V

    .line 967
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$6;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const-string v5, "musicPlayer.service.DOCK_PLUG_CHANGE"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/music/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 968
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$6;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #calls: Lcom/sec/android/app/music/CorePlayerService;->setUlpBypassInternal(ZZ)V
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/music/CorePlayerService;->access$1800(Lcom/sec/android/app/music/CorePlayerService;ZZ)V

    goto/16 :goto_56
.end method
