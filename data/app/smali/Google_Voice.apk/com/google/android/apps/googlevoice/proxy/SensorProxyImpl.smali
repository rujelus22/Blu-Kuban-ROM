.class public Lcom/google/android/apps/googlevoice/proxy/SensorProxyImpl;
.super Ljava/lang/Object;
.source "SensorProxyImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/proxy/SensorProxy;


# instance fields
.field private final delegate:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>(Landroid/hardware/Sensor;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/proxy/SensorProxyImpl;->delegate:Landroid/hardware/Sensor;

    .line 18
    return-void
.end method


# virtual methods
.method public getDelegate()Landroid/hardware/Sensor;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/SensorProxyImpl;->delegate:Landroid/hardware/Sensor;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
