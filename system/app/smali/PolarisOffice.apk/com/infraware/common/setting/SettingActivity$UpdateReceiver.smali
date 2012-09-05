.class public Lcom/infraware/common/setting/SettingActivity$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/setting/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/setting/SettingActivity;


# direct methods
.method public constructor <init>(Lcom/infraware/common/setting/SettingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 933
    iput-object p1, p0, Lcom/infraware/common/setting/SettingActivity$UpdateReceiver;->this$0:Lcom/infraware/common/setting/SettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x2

    .line 936
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_60

    .line 939
    const-string v1, "com.infraware.polarisoffice.ACTION_DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 940
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$UpdateReceiver;->this$0:Lcom/infraware/common/setting/SettingActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/infraware/common/setting/SettingActivity;->onStopService(I)Z

    .line 954
    :cond_15
    :goto_15
    return-void

    .line 941
    :cond_16
    const-string v1, "com.infraware.polarisoffice.ACTION_LATEST_VERSION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 942
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$UpdateReceiver;->this$0:Lcom/infraware/common/setting/SettingActivity;

    invoke-virtual {v1, v2}, Lcom/infraware/common/setting/SettingActivity;->onStopService(I)Z

    goto :goto_15

    .line 943
    :cond_24
    const-string v1, "com.infraware.polarisoffice.ACTION_DISABLE_CONFIRM_VERSION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 944
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$UpdateReceiver;->this$0:Lcom/infraware/common/setting/SettingActivity;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/infraware/common/setting/SettingActivity;->onStopService(I)Z

    goto :goto_15

    .line 945
    :cond_33
    const-string v1, "com.infraware.polarisoffice.ACTION_CONNECTION_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 946
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$UpdateReceiver;->this$0:Lcom/infraware/common/setting/SettingActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/infraware/common/setting/SettingActivity;->onStopService(I)Z

    goto :goto_15

    .line 947
    :cond_42
    const-string v1, "com.infraware.polarisoffice.ACTION_NETWORK_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 948
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$UpdateReceiver;->this$0:Lcom/infraware/common/setting/SettingActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/infraware/common/setting/SettingActivity;->onStopService(I)Z

    goto :goto_15

    .line 949
    :cond_51
    const-string v1, "com.infraware.polarisoffice.ACTION_FILE_WRITE_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 950
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$UpdateReceiver;->this$0:Lcom/infraware/common/setting/SettingActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/infraware/common/setting/SettingActivity;->onStopService(I)Z

    goto :goto_15

    .line 953
    :cond_60
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$UpdateReceiver;->this$0:Lcom/infraware/common/setting/SettingActivity;

    invoke-virtual {v1, v2}, Lcom/infraware/common/setting/SettingActivity;->onStopService(I)Z

    goto :goto_15
.end method
