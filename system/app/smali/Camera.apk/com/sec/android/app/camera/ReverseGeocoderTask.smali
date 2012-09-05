.class public Lcom/sec/android/app/camera/ReverseGeocoderTask;
.super Landroid/os/AsyncTask;
.source "ReverseGeocoderTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ReverseGeocoderTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReverseGeocoder"


# instance fields
.field private mCallback:Lcom/sec/android/app/camera/ReverseGeocoderTask$Callback;

.field private mGeocoder:Landroid/location/Geocoder;

.field private mLat:F

.field private mLng:F


# direct methods
.method public constructor <init>(Landroid/location/Geocoder;[FLcom/sec/android/app/camera/ReverseGeocoderTask$Callback;)V
    .registers 5
    .parameter "geocoder"
    .parameter "latlng"
    .parameter "callback"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sec/android/app/camera/ReverseGeocoderTask;->mGeocoder:Landroid/location/Geocoder;

    .line 43
    const/4 v0, 0x0

    aget v0, p2, v0

    iput v0, p0, Lcom/sec/android/app/camera/ReverseGeocoderTask;->mLat:F

    .line 44
    const/4 v0, 0x1

    aget v0, p2, v0

    iput v0, p0, Lcom/sec/android/app/camera/ReverseGeocoderTask;->mLng:F

    .line 45
    iput-object p3, p0, Lcom/sec/android/app/camera/ReverseGeocoderTask;->mCallback:Lcom/sec/android/app/camera/ReverseGeocoderTask$Callback;

    .line 46
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/ReverseGeocoderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 15
    .parameter "params"

    .prologue
    .line 50
    const-string v12, ""

    .line 52
    .local v12, value:Ljava/lang/String;
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/camera/ReverseGeocoderTask;->mGeocoder:Landroid/location/Geocoder;

    iget v1, p0, Lcom/sec/android/app/camera/ReverseGeocoderTask;->mLat:F

    float-to-double v1, v1

    iget v3, p0, Lcom/sec/android/app/camera/ReverseGeocoderTask;->mLng:F

    float-to-double v3, v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 54
    .local v7, address:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v11, sb:Ljava/lang/StringBuilder;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 56
    .local v6, addr:Landroid/location/Address;
    invoke-virtual {v6}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v10

    .line 57
    .local v10, index:I
    invoke-virtual {v6, v10}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2f} :catch_30
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2f} :catch_40

    goto :goto_18

    .line 60
    .end local v6           #addr:Landroid/location/Address;
    .end local v7           #address:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #index:I
    .end local v11           #sb:Ljava/lang/StringBuilder;
    :catch_30
    move-exception v8

    .line 61
    .local v8, ex:Ljava/io/IOException;
    const-string v12, ""

    .line 62
    const-string v0, "ReverseGeocoder"

    const-string v1, "Geocoder exception: "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .end local v8           #ex:Ljava/io/IOException;
    :goto_3a
    return-object v12

    .line 59
    .restart local v7       #address:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v11       #sb:Ljava/lang/StringBuilder;
    :cond_3b
    :try_start_3b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_30
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_3e} :catch_40

    move-result-object v12

    goto :goto_3a

    .line 63
    .end local v7           #address:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #sb:Ljava/lang/StringBuilder;
    :catch_40
    move-exception v8

    .line 64
    .local v8, ex:Ljava/lang/RuntimeException;
    const-string v12, ""

    .line 65
    const-string v0, "ReverseGeocoder"

    const-string v1, "Geocoder exception: "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/ReverseGeocoderTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 3
    .parameter "location"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/ReverseGeocoderTask;->mCallback:Lcom/sec/android/app/camera/ReverseGeocoderTask$Callback;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/ReverseGeocoderTask$Callback;->onComplete(Ljava/lang/String;)V

    .line 73
    return-void
.end method
