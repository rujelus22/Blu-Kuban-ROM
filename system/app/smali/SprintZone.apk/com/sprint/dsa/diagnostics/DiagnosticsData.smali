.class public Lcom/sprint/dsa/diagnostics/DiagnosticsData;
.super Ljava/lang/Object;
.source "DiagnosticsData.java"


# instance fields
.field public bluetoothAvailable:Z

.field public bluetoothEnabled:Z

.field public locationAccuracy:D

.field public locationGpsEnabled:Z

.field public locationLatitude:D

.field public locationLongitude:D

.field public locationNetworkEnabled:Z

.field public locationProvider:Ljava/lang/String;

.field public memoryAvailable:J

.field public memoryLowIndicater:Z

.field public net3gAvailable:Z

.field public net3gEnabled:Z

.field public screenBrightness:I

.field public screenBrightnessMode:I

.field public screenTimeout:J

.field public sdcardAvailable:Z

.field public sdcardReadable:Z

.field public sdcardTotalSpace:J

.field public sdcardUsedSpace:J

.field public sdcardWriteable:Z

.field public syncAccountCount:I

.field public syncEnabled:Z

.field public wifiAvailable:Z

.field public wifiConnected:Z

.field public wifiEnabled:Z

.field public wifiSSID:Ljava/lang/String;

.field public wimaxAvailable:Z

.field public wimaxConnected:Z

.field public wimaxEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->wifiAvailable:Z

    .line 19
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->wifiEnabled:Z

    .line 20
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->wifiConnected:Z

    .line 21
    iput-object v5, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->wifiSSID:Ljava/lang/String;

    .line 24
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->bluetoothAvailable:Z

    .line 25
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->bluetoothEnabled:Z

    .line 27
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->net3gAvailable:Z

    .line 28
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->net3gEnabled:Z

    .line 31
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->wimaxAvailable:Z

    .line 32
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->wimaxEnabled:Z

    .line 33
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->wimaxConnected:Z

    .line 36
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->locationGpsEnabled:Z

    .line 37
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->locationNetworkEnabled:Z

    .line 38
    iput-wide v1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->locationLatitude:D

    .line 39
    iput-wide v1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->locationLongitude:D

    .line 40
    iput-wide v1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->locationAccuracy:D

    .line 41
    iput-object v5, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->locationProvider:Ljava/lang/String;

    .line 44
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->syncEnabled:Z

    .line 45
    iput v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->syncAccountCount:I

    .line 48
    iput v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->screenBrightness:I

    .line 49
    iput v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->screenBrightnessMode:I

    .line 50
    iput-wide v3, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->screenTimeout:J

    .line 53
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->sdcardAvailable:Z

    .line 54
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->sdcardReadable:Z

    .line 55
    iput-boolean v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->sdcardWriteable:Z

    .line 56
    iput-wide v3, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->sdcardTotalSpace:J

    .line 57
    iput-wide v3, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->sdcardUsedSpace:J

    .line 15
    return-void
.end method
