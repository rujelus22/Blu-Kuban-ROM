.class Lcom/samsung/swift/applet/AppletActivity$11;
.super Ljava/lang/Object;
.source "AppletActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/applet/AppletActivity;->updateAuthorisedDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/applet/AppletActivity;


# direct methods
.method constructor <init>(Lcom/samsung/swift/applet/AppletActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1300
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1303
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/security/SecurityManager;->getAuthorisedConnections()[Lcom/samsung/swift/security/Connection;

    move-result-object v0

    .line 1305
    .local v0, connections:[Lcom/samsung/swift/security/Connection;
    array-length v1, v0

    if-nez v1, :cond_4e

    .line 1307
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->showStatus(I)V
    invoke-static {v1, v7}, Lcom/samsung/swift/applet/AppletActivity;->access$1500(Lcom/samsung/swift/applet/AppletActivity;I)V

    .line 1308
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    const-string v2, ""

    #setter for: Lcom/samsung/swift/applet/AppletActivity;->deviceName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/swift/applet/AppletActivity;->access$2502(Lcom/samsung/swift/applet/AppletActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1309
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->layoutAuthorisedDevice:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$1200(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1311
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 1314
    sget v1, Lcom/samsung/swift/applet/AppletActivity;->sdkVersion:I

    if-lt v1, v9, :cond_40

    sget v1, Lcom/samsung/swift/applet/AppletActivity;->sdkVersion:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_40

    .line 1315
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->shiftStartButton(Z)V
    invoke-static {v1, v5}, Lcom/samsung/swift/applet/AppletActivity;->access$2600(Lcom/samsung/swift/applet/AppletActivity;Z)V

    .line 1359
    :cond_3f
    :goto_3f
    return-void

    .line 1316
    :cond_40
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->currentOrientation:I
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$2200(Lcom/samsung/swift/applet/AppletActivity;)I

    move-result v1

    if-ne v1, v8, :cond_3f

    .line 1317
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->shiftAuthorisedDeviceArea(Z)V
    invoke-static {v1, v5}, Lcom/samsung/swift/applet/AppletActivity;->access$2700(Lcom/samsung/swift/applet/AppletActivity;Z)V

    goto :goto_3f

    .line 1322
    :cond_4e
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->showStatus(I)V
    invoke-static {v1, v8}, Lcom/samsung/swift/applet/AppletActivity;->access$1500(Lcom/samsung/swift/applet/AppletActivity;I)V

    .line 1325
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    aget-object v2, v0, v5

    invoke-interface {v2}, Lcom/samsung/swift/security/Connection;->getName()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/samsung/swift/applet/AppletActivity;->deviceName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/swift/applet/AppletActivity;->access$2502(Lcom/samsung/swift/applet/AppletActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1326
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->authorisedDeviceText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$2800(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/TextView;

    move-result-object v1

    aget-object v2, v0, v5

    invoke-interface {v2}, Lcom/samsung/swift/security/Connection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1328
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    iget-object v2, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    const-string v3, "ic_keisair_laptop"

    const-string v4, "drawable"

    #calls: Lcom/samsung/swift/applet/AppletActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v2, v3, v4}, Lcom/samsung/swift/applet/AppletActivity;->access$3000(Lcom/samsung/swift/applet/AppletActivity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/samsung/swift/applet/AppletActivity;->laptopIcon:I
    invoke-static {v1, v2}, Lcom/samsung/swift/applet/AppletActivity;->access$2902(Lcom/samsung/swift/applet/AppletActivity;I)I

    .line 1329
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    iget-object v2, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    const-string v3, "ic_kiesair_cellphone"

    const-string v4, "drawable"

    #calls: Lcom/samsung/swift/applet/AppletActivity;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v2, v3, v4}, Lcom/samsung/swift/applet/AppletActivity;->access$3000(Lcom/samsung/swift/applet/AppletActivity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/samsung/swift/applet/AppletActivity;->cellIcon:I
    invoke-static {v1, v2}, Lcom/samsung/swift/applet/AppletActivity;->access$3102(Lcom/samsung/swift/applet/AppletActivity;I)I

    .line 1330
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->laptopIcon:I
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$2900(Lcom/samsung/swift/applet/AppletActivity;)I

    move-result v1

    if-eqz v1, :cond_e6

    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->cellIcon:I
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$3100(Lcom/samsung/swift/applet/AppletActivity;)I

    move-result v1

    if-eqz v1, :cond_e6

    .line 1335
    aget-object v1, v0, v5

    invoke-interface {v1}, Lcom/samsung/swift/security/Connection;->userAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Windows Phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_d7

    aget-object v1, v0, v5

    invoke-interface {v1}, Lcom/samsung/swift/security/Connection;->userAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iPhone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_d7

    aget-object v1, v0, v5

    invoke-interface {v1}, Lcom/samsung/swift/security/Connection;->userAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iPod"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_d7

    aget-object v1, v0, v5

    invoke-interface {v1}, Lcom/samsung/swift/security/Connection;->userAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_108

    .line 1340
    :cond_d7
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->authorisedDeviceIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$3200(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->cellIcon:I
    invoke-static {v2}, Lcom/samsung/swift/applet/AppletActivity;->access$3100(Lcom/samsung/swift/applet/AppletActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1348
    :cond_e6
    :goto_e6
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->threeLayoutModel()Z
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$300(Lcom/samsung/swift/applet/AppletActivity;)Z

    move-result v1

    if-nez v1, :cond_fd

    .line 1351
    sget v1, Lcom/samsung/swift/applet/AppletActivity;->sdkVersion:I

    if-lt v1, v9, :cond_118

    sget v1, Lcom/samsung/swift/applet/AppletActivity;->sdkVersion:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_118

    .line 1352
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->shiftStartButton(Z)V
    invoke-static {v1, v7}, Lcom/samsung/swift/applet/AppletActivity;->access$2600(Lcom/samsung/swift/applet/AppletActivity;Z)V

    .line 1357
    :cond_fd
    :goto_fd
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->layoutAuthorisedDevice:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$1200(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3f

    .line 1344
    :cond_108
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->authorisedDeviceIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$3200(Lcom/samsung/swift/applet/AppletActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->laptopIcon:I
    invoke-static {v2}, Lcom/samsung/swift/applet/AppletActivity;->access$2900(Lcom/samsung/swift/applet/AppletActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e6

    .line 1353
    :cond_118
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->currentOrientation:I
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$2200(Lcom/samsung/swift/applet/AppletActivity;)I

    move-result v1

    if-ne v1, v8, :cond_fd

    .line 1354
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$11;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->shiftAuthorisedDeviceArea(Z)V
    invoke-static {v1, v7}, Lcom/samsung/swift/applet/AppletActivity;->access$2700(Lcom/samsung/swift/applet/AppletActivity;Z)V

    goto :goto_fd
.end method
