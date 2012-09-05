.class Lcom/sec/android/app/kieswifi/ui/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 138
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$1;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 141
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$1;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$1;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceList:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$100(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/api/DeviceItem;

    #setter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->selectedServer:Lcom/samsung/api/DeviceItem;
    invoke-static {v1, v0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$002(Lcom/sec/android/app/kieswifi/ui/MainActivity;Lcom/samsung/api/DeviceItem;)Lcom/samsung/api/DeviceItem;

    .line 144
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$1;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/kieswifi/UpnpManager;->removeActivityDestroyListener(Lcom/sec/android/app/kieswifi/ui/IActivityListener;)V

    .line 145
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$1;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->selectedServer:Lcom/samsung/api/DeviceItem;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$000(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Lcom/samsung/api/DeviceItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/kieswifi/UpnpManager;->selectServer(Lcom/samsung/api/DeviceItem;)Z

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$1;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$1;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    const-class v3, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$1;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 150
    return-void
.end method
