.class public Lcom/sec/dsm/system/wsMobileTrackingLocation;
.super Ljava/lang/Object;
.source "wsMobileTrackingLocation.java"


# instance fields
.field public altitude:Ljava/lang/String;

.field public course:Ljava/lang/String;

.field public deviceUniqueID:Ljava/lang/String;

.field public horizontalAccuracy:Ljava/lang/String;

.field public latitude:Ljava/lang/String;

.field public locationMethod:Ljava/lang/String;

.field public longitude:Ljava/lang/String;

.field public speed:Ljava/lang/String;

.field public timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->deviceUniqueID:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->locationMethod:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->latitude:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->longitude:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->altitude:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->speed:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->course:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->horizontalAccuracy:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->timestamp:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public setAltitude(Ljava/lang/String;)V
    .registers 2
    .parameter "szAltitude"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->altitude:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setCourse(Ljava/lang/String;)V
    .registers 2
    .parameter "szCourse"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->course:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setDeviceUniqueID(Ljava/lang/String;)V
    .registers 2
    .parameter "szDeviceUniqueID"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->deviceUniqueID:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setHorizontalAccuracy(Ljava/lang/String;)V
    .registers 2
    .parameter "szHorizontalAccuracy"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->horizontalAccuracy:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .registers 2
    .parameter "szLatitude"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->latitude:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setLocationMethod(Ljava/lang/String;)V
    .registers 2
    .parameter "szLocationMethod"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->locationMethod:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .registers 2
    .parameter "szLongitude"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->longitude:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setSpeed(Ljava/lang/String;)V
    .registers 2
    .parameter "szSpeed"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->speed:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .registers 2
    .parameter "szTimestamp"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->timestamp:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .registers 4

    .prologue
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<locationUpdate><deviceUniqueID>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->deviceUniqueID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</deviceUniqueID>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<locationMethod>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->locationMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</locationMethod>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<latitude>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->latitude:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</latitude>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<longitude>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->longitude:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</longitude>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<altitude>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->altitude:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</altitude>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<speed>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->speed:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</speed>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<course>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->course:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</course>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<horizontalAccuracy>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->horizontalAccuracy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</horizontalAccuracy>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<timestamp>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/dsm/system/wsMobileTrackingLocation;->timestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</timestamp>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</locationUpdate>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, szXMLString:Ljava/lang/String;
    return-object v0
.end method
