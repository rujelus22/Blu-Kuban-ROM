.class public Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;
.super Ljava/lang/Object;
.source "DeviceCapability.java"


# instance fields
.field private cmsFileName:Ljava/lang/String;

.field private colorMode:Z

.field private duplex:Z

.field private emulation:Ljava/lang/String;

.field private pcl6CompressionType:Ljava/lang/String;

.field private splCompressionType:Ljava/lang/String;

.field private splVersion:Ljava/lang/String;

.field private splWidthAlign:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "colorMode"
    .parameter "duplex"
    .parameter "emulation"
    .parameter "pcl6CompressionType"
    .parameter "splVersion"
    .parameter "cmsFileName"
    .parameter "splCompType"
    .parameter "splWidthAlign"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean p1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->colorMode:Z

    .line 31
    iput-boolean p2, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->duplex:Z

    .line 32
    iput-object p3, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->emulation:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->pcl6CompressionType:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->splVersion:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->cmsFileName:Ljava/lang/String;

    .line 36
    iput-object p7, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->splCompressionType:Ljava/lang/String;

    .line 37
    iput-object p8, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->splWidthAlign:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getCmsFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->cmsFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmulation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->emulation:Ljava/lang/String;

    return-object v0
.end method

.method public getPCL6CompressionType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->pcl6CompressionType:Ljava/lang/String;

    return-object v0
.end method

.method public getSplCompressionType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->splCompressionType:Ljava/lang/String;

    return-object v0
.end method

.method public getSplVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->splVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSplWidthAlign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->splWidthAlign:Ljava/lang/String;

    return-object v0
.end method

.method public isColorMode()Z
    .registers 2

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->colorMode:Z

    return v0
.end method

.method public isDuplex()Z
    .registers 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->duplex:Z

    return v0
.end method

.method public setCmsFileName(Ljava/lang/String;)V
    .registers 2
    .parameter "cmsFileName"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->cmsFileName:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setColorMode(Z)V
    .registers 2
    .parameter "colorMode"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->colorMode:Z

    .line 51
    return-void
.end method

.method public setDuplex(Z)V
    .registers 2
    .parameter "duplex"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->duplex:Z

    .line 63
    return-void
.end method

.method public setEmulation(Ljava/lang/String;)V
    .registers 2
    .parameter "emulation"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->emulation:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setPCL6CompressionType(Ljava/lang/String;)V
    .registers 2
    .parameter "pcl6CompressionType"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->pcl6CompressionType:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setSplCompressionType(Ljava/lang/String;)V
    .registers 2
    .parameter "splCompressionType"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->splCompressionType:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setSplVersion(Ljava/lang/String;)V
    .registers 2
    .parameter "splVersion"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->splVersion:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setSplWidthAlign(Ljava/lang/String;)V
    .registers 2
    .parameter "splWidthAlign"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->splWidthAlign:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Color:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->colorMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Duplex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->duplex:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Emulation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->emulation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cmsFileName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->cmsFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PCL6CompType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->pcl6CompressionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", splCompType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->splCompressionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", splVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->splVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width byte:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->splWidthAlign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
