.class public Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;
.super Landroid/support/place/picker/MediaRouteProviderClient$RouteId;
.source "MediaRouteProviderClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/picker/MediaRouteProviderClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerialNumberRouteId"
.end annotation


# instance fields
.field private mSerialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "serialNumber"

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/place/picker/MediaRouteProviderClient$RouteId;-><init>(I)V

    .line 53
    iput-object p1, p0, Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;->mSerialNumber:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public getRouteIdValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;->mSerialNumber:Ljava/lang/String;

    return-object v0
.end method
