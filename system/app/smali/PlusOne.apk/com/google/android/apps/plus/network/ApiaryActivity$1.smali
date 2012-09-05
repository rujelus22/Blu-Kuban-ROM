.class final Lcom/google/android/apps/plus/network/ApiaryActivity$1;
.super Ljava/lang/Object;
.source "ApiaryActivity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/network/ApiaryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/apps/plus/network/ApiaryActivity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/plus/network/ApiaryActivity;
    .registers 5
    .parameter

    .prologue
    .line 106
    new-instance v0, Lcom/google/api/client/json/gson/GsonFactory;

    invoke-direct {v0}, Lcom/google/api/client/json/gson/GsonFactory;-><init>()V

    .line 109
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/api/services/plus/model/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/json/JsonFactory;->fromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/plus/model/Activity;

    .line 110
    invoke-static {v0}, Lcom/google/android/apps/plus/network/ApiaryActivityFactory;->getApiaryActivity(Lcom/google/api/services/plus/model/Activity;)Lcom/google/android/apps/plus/network/ApiaryActivity;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_16

    move-result-object v0

    .line 114
    return-object v0

    .line 111
    :catch_16
    move-exception v0

    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed to create from parcel"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/network/ApiaryActivity$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/plus/network/ApiaryActivity;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/apps/plus/network/ApiaryActivity;
    .registers 3
    .parameter "size"

    .prologue
    .line 119
    new-array v0, p1, [Lcom/google/android/apps/plus/network/ApiaryActivity;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/network/ApiaryActivity$1;->newArray(I)[Lcom/google/android/apps/plus/network/ApiaryActivity;

    move-result-object v0

    return-object v0
.end method
