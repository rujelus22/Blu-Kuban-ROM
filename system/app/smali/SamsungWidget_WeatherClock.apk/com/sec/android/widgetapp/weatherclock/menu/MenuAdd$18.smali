.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$18;
.super Ljava/lang/Object;
.source "MenuAdd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->showLoadingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V
    .registers 2
    .parameter

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$18;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 8
    .parameter "dialog"

    .prologue
    const/4 v5, 0x1

    .line 1284
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$18;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    .line 1285
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$18;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mRequestCanceled:Z
    invoke-static {v3, v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$1802(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Z)Z

    .line 1286
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$18;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iput-boolean v5, v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->performMapCancled:Z

    .line 1287
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$18;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1f

    .line 1288
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$18;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapHandler:Landroid/os/Handler;

    const v4, -0x140b4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1289
    :cond_1f
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$18;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->stopHttpThread()V
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$1900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    .line 1291
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$18;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mcl:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 1292
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$18;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mcl:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->cancelGetLastLocation(I)V

    .line 1294
    :cond_36
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$18;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->enableEditField()V
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$800(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    .line 1295
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$18;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 1297
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$18;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 1298
    .local v2, locationManager:Landroid/location/LocationManager;
    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 1299
    .local v0, isGpsEnabled:Z
    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 1300
    .local v1, isNetworkEnabled:Z
    if-nez v0, :cond_60

    if-eqz v1, :cond_71

    .line 1301
    :cond_60
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$18;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->gps_btn:Landroid/widget/Button;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_71

    .line 1302
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$18;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->gps_btn:Landroid/widget/Button;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1305
    :cond_71
    return-void
.end method
