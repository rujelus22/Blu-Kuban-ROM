.class Landroid/support/place/connector/Broker$FakeBrokerConnection;
.super Landroid/support/place/connector/IBrokerConnection$Stub;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/support/place/connector/IBrokerConnection$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/place/connector/Broker$1;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/support/place/connector/Broker$FakeBrokerConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public sendBrokerConnected(Landroid/support/place/connector/IBrokerService;Landroid/support/place/rpc/EndpointInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 77
    return-void
.end method

.method public sendBrokerDisconnected()V
    .registers 1

    .prologue
    .line 86
    return-void
.end method

.method public sendPlaceConnected(Landroid/support/place/connector/PlaceInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 80
    return-void
.end method

.method public sendPlaceDisconnected()V
    .registers 1

    .prologue
    .line 83
    return-void
.end method
