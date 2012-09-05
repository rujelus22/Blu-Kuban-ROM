.class Lcom/google/android/apps/plus/phone/LocationController$1;
.super Ljava/lang/Object;
.source "LocationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/LocationController;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZJLandroid/location/Location;Landroid/location/LocationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/LocationController;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/LocationController;)V
    .registers 2
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v1, 0x3

    .line 189
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$100(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 190
    const-string v0, "LocationController"

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 191
    const-string v0, "LocationController"

    const-string v1, "----> locationAcquisitionTimer: timeout, with location"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_18
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #calls: Lcom/google/android/apps/plus/phone/LocationController;->unregisterListenersAndRunnables()V
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$600(Lcom/google/android/apps/plus/phone/LocationController;)V

    .line 196
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mReverseGeo:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$700(Lcom/google/android/apps/plus/phone/LocationController;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$100(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/phone/LocationController;->reverseGeo(Landroid/location/Location;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$800(Lcom/google/android/apps/plus/phone/LocationController;Landroid/location/Location;)V

    .line 208
    :cond_30
    :goto_30
    return-void

    .line 198
    :cond_31
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$300(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$300(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$100(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_30

    .line 202
    :cond_49
    const-string v0, "LocationController"

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 203
    const-string v0, "LocationController"

    const-string v1, "----> locationAcquisitionTimer: timeout, without location"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_58
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$1000(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mTimeout:J
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$900(Lcom/google/android/apps/plus/phone/LocationController;)J

    move-result-wide v1

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_30
.end method
