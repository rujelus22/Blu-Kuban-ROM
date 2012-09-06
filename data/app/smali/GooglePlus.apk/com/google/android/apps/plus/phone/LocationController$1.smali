.class Lcom/google/android/apps/plus/phone/LocationController$1;
.super Ljava/lang/Object;
.source "LocationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/LocationController;->init()V
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
    .line 208
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v1, 0x3

    .line 214
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$000(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 215
    const-string v0, "LocationController"

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 216
    const-string v0, "LocationController"

    const-string v1, "----> locationAcquisitionTimer: timeout, with location"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_18
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLastSentLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$700(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLastSentLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$700(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$000(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/LocationController;->areSameLocations(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 221
    :cond_32
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mReverseGeo:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$800(Lcom/google/android/apps/plus/phone/LocationController;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 222
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$000(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/phone/LocationController;->reverseGeo(Landroid/location/Location;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$900(Lcom/google/android/apps/plus/phone/LocationController;Landroid/location/Location;)V

    .line 227
    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$000(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;

    move-result-object v1

    #setter for: Lcom/google/android/apps/plus/phone/LocationController;->mLastSentLocation:Landroid/location/Location;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$702(Lcom/google/android/apps/plus/phone/LocationController;Landroid/location/Location;)Landroid/location/Location;

    .line 236
    :cond_50
    :goto_50
    return-void

    .line 223
    :cond_51
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$400(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 224
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$400(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$000(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_45

    .line 230
    :cond_69
    const-string v0, "LocationController"

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 231
    const-string v0, "LocationController"

    const-string v1, "----> locationAcquisitionTimer: timeout, without location"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_78
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$1200(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController$1;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mTimeout:J
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$1100(Lcom/google/android/apps/plus/phone/LocationController;)J

    move-result-wide v1

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_50
.end method
