.class public Lcom/samsung/upnp/xml/DeviceData;
.super Lcom/samsung/upnp/xml/NodeData;
.source "DeviceData.java"


# instance fields
.field private advertiser:Lcom/samsung/upnp/device/Advertiser;

.field private descriptionFile:Ljava/io/File;

.field private descriptionURI:Ljava/lang/String;

.field private httpPort:I

.field private httpServerList:Lcom/samsung/http/HTTPServerList;

.field private leaseTime:I

.field private location:Ljava/lang/String;

.field private ssdpPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;

.field private ssdpSearchSocketList:Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/samsung/upnp/xml/NodeData;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/samsung/upnp/xml/DeviceData;->descriptionURI:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/samsung/upnp/xml/DeviceData;->descriptionFile:Ljava/io/File;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/upnp/xml/DeviceData;->location:Ljava/lang/String;

    .line 93
    const/16 v0, 0x708

    iput v0, p0, Lcom/samsung/upnp/xml/DeviceData;->leaseTime:I

    .line 109
    new-instance v0, Lcom/samsung/http/HTTPServerList;

    invoke-direct {v0}, Lcom/samsung/http/HTTPServerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/xml/DeviceData;->httpServerList:Lcom/samsung/http/HTTPServerList;

    .line 119
    const/16 v0, 0xfa4

    iput v0, p0, Lcom/samsung/upnp/xml/DeviceData;->httpPort:I

    .line 149
    new-instance v0, Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;

    invoke-direct {v0}, Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/xml/DeviceData;->ssdpSearchSocketList:Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;

    .line 159
    iput-object v1, p0, Lcom/samsung/upnp/xml/DeviceData;->ssdpPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;

    .line 173
    iput-object v1, p0, Lcom/samsung/upnp/xml/DeviceData;->advertiser:Lcom/samsung/upnp/device/Advertiser;

    .line 50
    return-void
.end method


# virtual methods
.method public getAdvertiser()Lcom/samsung/upnp/device/Advertiser;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/samsung/upnp/xml/DeviceData;->advertiser:Lcom/samsung/upnp/device/Advertiser;

    return-object v0
.end method

.method public getDescriptionFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/upnp/xml/DeviceData;->descriptionFile:Ljava/io/File;

    return-object v0
.end method

.method public getDescriptionURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/upnp/xml/DeviceData;->descriptionURI:Ljava/lang/String;

    return-object v0
.end method

.method public getHTTPPort()I
    .registers 2

    .prologue
    .line 122
    iget v0, p0, Lcom/samsung/upnp/xml/DeviceData;->httpPort:I

    return v0
.end method

.method public getHTTPServerList()Lcom/samsung/http/HTTPServerList;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/upnp/xml/DeviceData;->httpServerList:Lcom/samsung/http/HTTPServerList;

    return-object v0
.end method

.method public getLeaseTime()I
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Lcom/samsung/upnp/xml/DeviceData;->leaseTime:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/upnp/xml/DeviceData;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getSSDPPacket()Lcom/samsung/upnp/ssdp/SSDPPacket;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/upnp/xml/DeviceData;->ssdpPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;

    return-object v0
.end method

.method public getSSDPSearchSocketList()Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/upnp/xml/DeviceData;->ssdpSearchSocketList:Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;

    return-object v0
.end method

.method public setAdvertiser(Lcom/samsung/upnp/device/Advertiser;)V
    .registers 2
    .parameter "adv"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/samsung/upnp/xml/DeviceData;->advertiser:Lcom/samsung/upnp/device/Advertiser;

    .line 178
    return-void
.end method

.method public setDescriptionFile(Ljava/io/File;)V
    .registers 2
    .parameter "descriptionFile"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/samsung/upnp/xml/DeviceData;->descriptionFile:Ljava/io/File;

    .line 69
    return-void
.end method

.method public setDescriptionURI(Ljava/lang/String;)V
    .registers 2
    .parameter "descriptionURI"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/upnp/xml/DeviceData;->descriptionURI:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setHTTPPort(I)V
    .registers 2
    .parameter "port"

    .prologue
    .line 126
    iput p1, p0, Lcom/samsung/upnp/xml/DeviceData;->httpPort:I

    .line 127
    return-void
.end method

.method public setLeaseTime(I)V
    .registers 2
    .parameter "val"

    .prologue
    .line 102
    iput p1, p0, Lcom/samsung/upnp/xml/DeviceData;->leaseTime:I

    .line 103
    return-void
.end method

.method public setSSDPPacket(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 2
    .parameter "packet"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/samsung/upnp/xml/DeviceData;->ssdpPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;

    .line 167
    return-void
.end method
