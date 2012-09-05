.class Lcom/sec/android/widgetapp/weatherclock/MapsActivity$29;
.super Ljava/lang/Object;
.source "MapsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->showLoadingDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$29;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$29;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mLoadingDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1802(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1172
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$29;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mRequestCanceled:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1902(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Z)Z

    .line 1173
    const-string v0, ""

    const-string v1, "stopHttpThread"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$29;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->stopHttpThread()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2000(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    .line 1176
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$29;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->locHandler:Landroid/os/Handler;

    if-eqz v0, :cond_28

    .line 1177
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$29;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->locHandler:Landroid/os/Handler;

    const v1, -0x140b4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1179
    :cond_28
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$29;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myLocationListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$600(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Landroid/location/LocationListener;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 1180
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$29;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$700(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$29;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myLocationListener:Landroid/location/LocationListener;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$600(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1181
    :cond_3f
    return-void
.end method
