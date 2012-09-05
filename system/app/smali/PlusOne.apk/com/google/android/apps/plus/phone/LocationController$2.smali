.class Lcom/google/android/apps/plus/phone/LocationController$2;
.super Ljava/lang/Thread;
.source "LocationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/LocationController;->reverseGeo(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/LocationController;

.field final synthetic val$location:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/LocationController;Landroid/location/Location;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/LocationController$2;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    iput-object p2, p0, Lcom/google/android/apps/plus/phone/LocationController$2;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 314
    new-instance v0, Lcom/google/android/apps/plus/api/SnapToPlaceOperation;

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/LocationController$2;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/google/android/apps/plus/phone/LocationController;->access$1100(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/LocationController$2;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v6}, Lcom/google/android/apps/plus/phone/LocationController;->access$1200(Lcom/google/android/apps/plus/phone/LocationController;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/google/android/apps/plus/api/SnapToPlaceOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 315
    .local v0, eso:Lcom/google/android/apps/plus/api/SnapToPlaceOperation;
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/LocationController$2;->val$location:Landroid/location/Location;

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/api/SnapToPlaceOperation;->execute(Landroid/location/Location;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    move-result-object v4

    .line 316
    .local v4, results:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 317
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v4, :cond_7f

    .line 318
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->getReverseGeocodeList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_26
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    .line 319
    .local v2, geocode:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->hasGranularity()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 320
    sget-object v5, Lcom/google/android/apps/plus/phone/LocationController$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$ReverseGeocode$GranularityEnum:[I

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getGranularity()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_94

    goto :goto_26

    .line 322
    :pswitch_48
    const-string v5, "finest_location"

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setReverseGeocode(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/plus/phone/LocationController$2;->val$location:Landroid/location/Location;

    invoke-static {v7}, Lcom/google/android/apps/plus/util/LocationUtils;->createPoint(Landroid/location/Location;)Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 326
    const-string v5, "location_description"

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 330
    :pswitch_6d
    const-string v5, "course_location"

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setReverseGeocode(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_26

    .line 338
    .end local v2           #geocode:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_7f
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/LocationController$2;->val$location:Landroid/location/Location;

    invoke-virtual {v5, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 339
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/LocationController$2;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/google/android/apps/plus/phone/LocationController;->access$1000(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/google/android/apps/plus/phone/LocationController$2$1;

    invoke-direct {v6, p0}, Lcom/google/android/apps/plus/phone/LocationController$2$1;-><init>(Lcom/google/android/apps/plus/phone/LocationController$2;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 350
    return-void

    .line 320
    nop

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_48
        :pswitch_6d
    .end packed-switch
.end method
