.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$19;
.super Ljava/lang/Object;
.source "MenuAdd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->showLocatingDialog()V
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
    .line 1323
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 8
    .parameter "dialog"

    .prologue
    const/4 v5, 0x1

    .line 1326
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    .line 1327
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mRequestCanceled:Z
    invoke-static {v3, v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$1802(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Z)Z

    .line 1329
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mcl:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 1330
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mcl:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->cancelGetLastLocation(I)V

    .line 1332
    :cond_1d
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->stopHttpThread()V
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$1900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    .line 1334
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->enableEditField()V
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$800(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    .line 1335
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 1337
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 1338
    .local v2, locationManager:Landroid/location/LocationManager;
    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 1339
    .local v0, isGpsEnabled:Z
    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 1340
    .local v1, isNetworkEnabled:Z
    if-nez v0, :cond_4c

    if-eqz v1, :cond_5d

    .line 1341
    :cond_4c
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->gps_btn:Landroid/widget/Button;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_5d

    .line 1342
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->gps_btn:Landroid/widget/Button;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1345
    :cond_5d
    return-void
.end method
