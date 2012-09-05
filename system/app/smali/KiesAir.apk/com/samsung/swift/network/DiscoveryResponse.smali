.class public Lcom/samsung/swift/network/DiscoveryResponse;
.super Ljava/lang/Object;
.source "DiscoveryResponse.java"


# static fields
.field public static final DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field public static final FRIENDLY_NAME:Ljava/lang/String; = "friendlyName"

.field public static final MANUFACTURER:Ljava/lang/String; = "manufacturer"

.field public static final MANUFACTURER_URL:Ljava/lang/String; = "manufacturerURL"

.field public static final MODEL_DESCRIPTION:Ljava/lang/String; = "modelDescription"

.field public static final MODEL_NAME:Ljava/lang/String; = "modelName"

.field public static final MODEL_NUMBER:Ljava/lang/String; = "modelNumber"

.field public static final MODEL_URL:Ljava/lang/String; = "modelURL"

.field public static final PRESENTATION_URL:Ljava/lang/String; = "presentationURL"

.field public static final UDN:Ljava/lang/String; = "UDN"


# instance fields
.field private deviceType:Ljava/lang/String;

.field private friendlyName:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private manufacturerURL:Ljava/lang/String;

.field private modelDescription:Ljava/lang/String;

.field private modelName:Ljava/lang/String;

.field private modelNumber:Ljava/lang/String;

.field private modelURL:Ljava/lang/String;

.field private presentationURL:Ljava/lang/String;

.field private udn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/swift/network/DiscoveryResponse;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/swift/network/DiscoveryResponse;->friendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/swift/network/DiscoveryResponse;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturerURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/swift/network/DiscoveryResponse;->manufacturerURL:Ljava/lang/String;

    return-object v0
.end method

.method public getModelDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/samsung/swift/network/DiscoveryResponse;->modelDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/swift/network/DiscoveryResponse;->modelName:Ljava/lang/String;

    return-object v0
.end method

.method public getModelNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/samsung/swift/network/DiscoveryResponse;->modelNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getModelURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/samsung/swift/network/DiscoveryResponse;->modelURL:Ljava/lang/String;

    return-object v0
.end method

.method public getPresentationURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/swift/network/DiscoveryResponse;->presentationURL:Ljava/lang/String;

    return-object v0
.end method

.method public getUdn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/samsung/swift/network/DiscoveryResponse;->udn:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .registers 2
    .parameter "deviceType"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/samsung/swift/network/DiscoveryResponse;->deviceType:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setField(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .registers 4
    .parameter "fieldName"
    .parameter "node"

    .prologue
    .line 35
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 80
    :cond_4
    :goto_4
    return-void

    .line 40
    :cond_5
    const-string v0, "deviceType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 42
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/swift/network/DiscoveryResponse;->setDeviceType(Ljava/lang/String;)V

    goto :goto_4

    .line 44
    :cond_15
    const-string v0, "friendlyName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 46
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/swift/network/DiscoveryResponse;->setFriendlyName(Ljava/lang/String;)V

    goto :goto_4

    .line 48
    :cond_25
    const-string v0, "manufacturer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 50
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/swift/network/DiscoveryResponse;->setManufacturer(Ljava/lang/String;)V

    goto :goto_4

    .line 52
    :cond_35
    const-string v0, "manufacturerURL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 54
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/swift/network/DiscoveryResponse;->setManufacturerURL(Ljava/lang/String;)V

    goto :goto_4

    .line 56
    :cond_45
    const-string v0, "modelName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 58
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/swift/network/DiscoveryResponse;->setModelName(Ljava/lang/String;)V

    goto :goto_4

    .line 60
    :cond_55
    const-string v0, "modelNumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 62
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/swift/network/DiscoveryResponse;->setModelNumber(Ljava/lang/String;)V

    goto :goto_4

    .line 64
    :cond_65
    const-string v0, "modelDescription"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 66
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/swift/network/DiscoveryResponse;->setModelDescription(Ljava/lang/String;)V

    goto :goto_4

    .line 68
    :cond_75
    const-string v0, "modelURL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 70
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/swift/network/DiscoveryResponse;->setModelURL(Ljava/lang/String;)V

    goto :goto_4

    .line 72
    :cond_85
    const-string v0, "presentationURL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 74
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/swift/network/DiscoveryResponse;->setPresentationURL(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 76
    :cond_96
    const-string v0, "UDN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 78
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/swift/network/DiscoveryResponse;->setUdn(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .registers 2
    .parameter "friendlyName"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/swift/network/DiscoveryResponse;->friendlyName:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .registers 2
    .parameter "manufacturer"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/samsung/swift/network/DiscoveryResponse;->manufacturer:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setManufacturerURL(Ljava/lang/String;)V
    .registers 2
    .parameter "manufacturerURL"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/samsung/swift/network/DiscoveryResponse;->manufacturerURL:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setModelDescription(Ljava/lang/String;)V
    .registers 2
    .parameter "modelDescription"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/samsung/swift/network/DiscoveryResponse;->modelDescription:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setModelName(Ljava/lang/String;)V
    .registers 2
    .parameter "modelName"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/samsung/swift/network/DiscoveryResponse;->modelName:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setModelNumber(Ljava/lang/String;)V
    .registers 2
    .parameter "modelNumber"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/samsung/swift/network/DiscoveryResponse;->modelNumber:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setModelURL(Ljava/lang/String;)V
    .registers 2
    .parameter "modelURL"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/samsung/swift/network/DiscoveryResponse;->modelURL:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setPresentationURL(Ljava/lang/String;)V
    .registers 2
    .parameter "presentationURL"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/samsung/swift/network/DiscoveryResponse;->presentationURL:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setUdn(Ljava/lang/String;)V
    .registers 2
    .parameter "udn"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/samsung/swift/network/DiscoveryResponse;->udn:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 246
    .local v0, sb:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/swift/network/DiscoveryResponse;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "friendlyName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/swift/network/DiscoveryResponse;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manufacturer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/swift/network/DiscoveryResponse;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manufacturerURL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/swift/network/DiscoveryResponse;->getManufacturerURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modelDescription = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/swift/network/DiscoveryResponse;->getModelDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modelName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/swift/network/DiscoveryResponse;->getModelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modelNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/swift/network/DiscoveryResponse;->getModelNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modelURL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/swift/network/DiscoveryResponse;->getModelURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "presentationURL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/swift/network/DiscoveryResponse;->getPresentationURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UDN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/swift/network/DiscoveryResponse;->getUdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
