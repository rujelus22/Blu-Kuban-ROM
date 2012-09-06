.class public abstract Landroid/support/place/connector/Connector;
.super Landroid/support/place/connector/Endpoint;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPlaceInfo:Landroid/support/place/connector/PlaceInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-string v0, "Connector"

    sput-object v0, Landroid/support/place/connector/Connector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/place/connector/Broker;Landroid/support/place/connector/PlaceInfo;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p2}, Landroid/support/place/connector/Endpoint;-><init>(Landroid/support/place/connector/Broker;)V

    .line 20
    iput-object p3, p0, Landroid/support/place/connector/Connector;->mPlaceInfo:Landroid/support/place/connector/PlaceInfo;

    .line 21
    iput-object p1, p0, Landroid/support/place/connector/Connector;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Landroid/support/place/connector/Connector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPlaceInfo()Landroid/support/place/connector/PlaceInfo;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Landroid/support/place/connector/Connector;->mPlaceInfo:Landroid/support/place/connector/PlaceInfo;

    return-object v0
.end method
