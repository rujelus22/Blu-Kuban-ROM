.class Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$14;
.super Ljava/lang/Object;
.source "FTCDeviceListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 1485
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$14;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 1488
    const-string v0, "[FT]-Client"

    const-string v1, "FTCDeviceListActivity :DIALOG_FILE_WAITING : onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$14;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->destroyDeviceListActivity()V
    invoke-static {v0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$600(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V

    .line 1490
    return-void
.end method
