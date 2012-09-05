.class public Lcom/vlingo/client/android/core/recognizer/AndroidClientMeta;
.super Lcom/vlingo/client/core/recognizer/ClientMeta;
.source "AndroidClientMeta.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/ClientMeta;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceMake()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOSName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    const-string v0, "Android"

    return-object v0
.end method
