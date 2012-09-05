.class public final Lcom/google/android/apps/plus/api/SnapToPlaceOperation;
.super Lcom/google/android/apps/plus/api/EsOperation;
.source "SnapToPlaceOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/api/SnapToPlaceOperation$1;
    }
.end annotation


# instance fields
.field private mSnapToPlaceResponse:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/api/EsOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 32
    return-void
.end method


# virtual methods
.method public execute(Landroid/location/Location;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;
    .registers 5
    .parameter "location"

    .prologue
    .line 42
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/apps/plus/util/LocationUtils;->createPoint(Landroid/location/Location;)Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->setAccuracyInMeters(I)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    move-result-object v0

    .line 45
    .local v0, request:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->SNAP_TO_PLACE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/SnapToPlaceOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/SnapToPlaceOperation;->start()V

    .line 47
    iget-object v1, p0, Lcom/google/android/apps/plus/api/SnapToPlaceOperation;->mSnapToPlaceResponse:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    return-object v1
.end method

.method protected handleOneResponse(Lcom/google/wireless/tacotruck/proto/Network$Response;Lcom/google/protobuf/MessageLite;)V
    .registers 5
    .parameter "response"
    .parameter "originalRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/apps/plus/api/SnapToPlaceOperation$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 61
    :goto_f
    return-void

    .line 58
    :pswitch_10
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getResponseBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/api/SnapToPlaceOperation;->mSnapToPlaceResponse:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponse;

    goto :goto_f

    .line 56
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_10
    .end packed-switch
.end method

.method public bridge synthetic onHttpCookie(Lorg/apache/http/cookie/Cookie;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/api/EsOperation;->onHttpCookie(Lorg/apache/http/cookie/Cookie;)V

    return-void
.end method
