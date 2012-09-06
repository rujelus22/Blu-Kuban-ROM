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
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/plus/network/ApiaryActivity;
    .registers 7
    .parameter "in"

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, activity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    :try_start_1
    invoke-static {}, Lcom/google/api/services/plusi/model/LinkPreviewResponseJson;->getInstance()Lcom/google/api/services/plusi/model/LinkPreviewResponseJson;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/api/services/plusi/model/LinkPreviewResponseJson;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/plusi/model/LinkPreviewResponse;

    .line 140
    .local v2, linkPreview:Lcom/google/api/services/plusi/model/LinkPreviewResponse;
    invoke-static {v2}, Lcom/google/android/apps/plus/network/ApiaryActivityFactory;->getApiaryActivity(Lcom/google/api/services/plusi/model/LinkPreviewResponse;)Lcom/google/android/apps/plus/network/ApiaryActivity;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_14

    move-result-object v0

    .line 144
    return-object v0

    .line 141
    .end local v2           #linkPreview:Lcom/google/api/services/plusi/model/LinkPreviewResponse;
    :catch_14
    move-exception v1

    .line 142
    .local v1, ioe:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "failed to create from parcel"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/network/ApiaryActivity$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/plus/network/ApiaryActivity;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/apps/plus/network/ApiaryActivity;
    .registers 3
    .parameter "size"

    .prologue
    .line 149
    new-array v0, p1, [Lcom/google/android/apps/plus/network/ApiaryActivity;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/network/ApiaryActivity$1;->newArray(I)[Lcom/google/android/apps/plus/network/ApiaryActivity;

    move-result-object v0

    return-object v0
.end method
