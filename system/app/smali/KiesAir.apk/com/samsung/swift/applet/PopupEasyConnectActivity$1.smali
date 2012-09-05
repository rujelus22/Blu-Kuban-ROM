.class Lcom/samsung/swift/applet/PopupEasyConnectActivity$1;
.super Ljava/lang/Object;
.source "PopupEasyConnectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/applet/PopupEasyConnectActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;


# direct methods
.method constructor <init>(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$1;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 174
    const/4 v0, 0x0

    #calls: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->setScanning(Z)V
    invoke-static {v0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$000(Z)V

    .line 175
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 177
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$1;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    #getter for: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->scanningTask:Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;
    invoke-static {v0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$100(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$1;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    #getter for: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->scanningTask:Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;
    invoke-static {v0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$100(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_27

    .line 178
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$1;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    #getter for: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->scanningTask:Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;
    invoke-static {v0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$100(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->cancel(Z)Z

    .line 180
    :cond_27
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$1;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    invoke-virtual {v0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->finish()V

    .line 181
    return-void
.end method
