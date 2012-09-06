.class public Landroid/support/place/connector/Broker$PlaceListener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field binder:Landroid/support/place/connector/IPlaceListener;

.field handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/place/connector/Broker$PlaceListener;->handler:Landroid/os/Handler;

    .line 382
    new-instance v0, Landroid/support/place/connector/Broker$PlaceListener$1;

    invoke-direct {v0, p0}, Landroid/support/place/connector/Broker$PlaceListener$1;-><init>(Landroid/support/place/connector/Broker$PlaceListener;)V

    iput-object v0, p0, Landroid/support/place/connector/Broker$PlaceListener;->binder:Landroid/support/place/connector/IPlaceListener;

    return-void
.end method


# virtual methods
.method public onPlaceAdded(Landroid/support/place/connector/PlaceInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 416
    return-void
.end method

.method public onPlaceRemoved(Landroid/support/place/connector/PlaceInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 419
    return-void
.end method

.method public onPlaceUpdated(Landroid/support/place/connector/PlaceInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 422
    return-void
.end method
