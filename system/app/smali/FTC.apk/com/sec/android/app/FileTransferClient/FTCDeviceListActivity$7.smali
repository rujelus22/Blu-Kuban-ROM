.class Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$7;
.super Ljava/lang/Object;
.source "FTCDeviceListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->askNetworkAgain()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1334
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$7;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$7;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const/16 v1, 0x4b1

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWIFIState:I
    invoke-static {v0, v1}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$102(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;I)I

    .line 1338
    const-string v0, "[FT]-Client"

    const-string v1, "FTCDeviceListActivity : send : EVENT_SETTING_DISCOVERY_DIRECT_DEVICE_AGAIN "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$7;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$400(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x452

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1340
    return-void
.end method
