.class Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask$1;
.super Ljava/lang/Object;
.source "PopupEasyConnectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;


# direct methods
.method constructor <init>(Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;)V
    .registers 2
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask$1;->this$1:Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask$1;->this$1:Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;

    #getter for: Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->urls:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->access$400(Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 365
    .local v0, url:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 366
    .local v1, viewIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask$1;->this$1:Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;

    iget-object v2, v2, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    invoke-virtual {v2, v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->startActivity(Landroid/content/Intent;)V

    .line 368
    iget-object v2, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask$1;->this$1:Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->cancel(Z)Z

    .line 369
    iget-object v2, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask$1;->this$1:Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;

    iget-object v2, v2, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    iget-object v2, v2, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 370
    invoke-static {}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onItemClick: setScanning(false)"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v2, 0x0

    #calls: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->setScanning(Z)V
    invoke-static {v2}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$000(Z)V

    .line 372
    iget-object v2, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask$1;->this$1:Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;

    iget-object v2, v2, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    invoke-virtual {v2}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->finish()V

    .line 373
    return-void
.end method
