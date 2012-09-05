.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$17;
.super Ljava/lang/Object;
.source "MenuSearch.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->showLoadingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V
    .registers 2
    .parameter

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$17;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 8
    .parameter "dialog"

    .prologue
    const/4 v5, 0x1

    .line 1119
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$17;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    .line 1120
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$17;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mRequestCanceled:Z
    invoke-static {v3, v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$1802(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;Z)Z

    .line 1121
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$17;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iput-boolean v5, v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->performMapCancled:Z

    .line 1122
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$17;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mapHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1f

    .line 1123
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$17;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mapHandler:Landroid/os/Handler;

    const v4, -0x140b4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1125
    :cond_1f
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$17;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->stopHttpThread()V
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$1900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    .line 1127
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$17;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mcl:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 1128
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$17;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mcl:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->cancelGetLastLocation(I)V

    .line 1130
    :cond_36
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$17;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->enableEditField()V
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$800(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    .line 1133
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$17;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 1134
    .local v2, locationManager:Landroid/location/LocationManager;
    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 1135
    .local v0, isGpsEnabled:Z
    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 1136
    .local v1, isNetworkEnabled:Z
    if-nez v0, :cond_55

    if-eqz v1, :cond_66

    .line 1137
    :cond_55
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$17;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->gps_btn:Landroid/widget/Button;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_66

    .line 1138
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$17;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->gps_btn:Landroid/widget/Button;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1141
    :cond_66
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$17;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 1142
    return-void
.end method
