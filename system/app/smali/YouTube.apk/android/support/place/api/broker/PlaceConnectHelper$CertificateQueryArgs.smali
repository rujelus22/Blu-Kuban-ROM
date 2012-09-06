.class public Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public placeInfo:Landroid/support/place/connector/PlaceInfo;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/PlaceInfo;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryArgs;->placeInfo:Landroid/support/place/connector/PlaceInfo;

    .line 69
    iput-object p2, p0, Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryArgs;->userId:Ljava/lang/String;

    .line 70
    return-void
.end method
