.class Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver$1;
.super Landroid/os/Handler;
.source "FactoryModeInitialSettingBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 132
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_46

    .line 150
    :cond_5
    :goto_5
    return-void

    .line 134
    :pswitch_6
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;

    #getter for: Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->access$000(Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "csfc_enable"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 135
    new-instance v0, Ljava/io/File;

    const-string v2, "//data/factory/.resetverify"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, f1:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 137
    const-string v2, "FactoryModeInitialSetting"

    const-string v3, "FACTORYRESET_ACK"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v1, Lcom/samsung/sec/android/jni/hdcp/HdcpKey;

    invoke-direct {v1}, Lcom/samsung/sec/android/jni/hdcp/HdcpKey;-><init>()V

    .line 141
    .local v1, keyInstaller:Lcom/samsung/sec/android/jni/hdcp/HdcpKey;
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;

    #getter for: Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->access$000(Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/sec/android/jni/hdcp/HdcpKey;->installKey(Landroid/content/Context;)I

    .line 142
    const-string v2, "FactoryModeInitialSetting"

    const-string v3, "CALL keyInstaller.installKey(mContext);"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;

    #calls: Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->Send_FactoryResetToRil()V
    invoke-static {v2}, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->access$100(Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;)V

    goto :goto_5

    .line 132
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
