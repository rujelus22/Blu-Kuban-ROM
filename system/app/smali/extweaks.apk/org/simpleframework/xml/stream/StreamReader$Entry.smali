.class Lorg/simpleframework/xml/stream/StreamReader$Entry;
.super Lorg/simpleframework/xml/stream/EventAttribute;
.source "StreamReader.java"


# instance fields
.field private final entry:Ljavax/xml/stream/events/Attribute;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/events/Attribute;)V
    .registers 2
    .parameter

    .prologue
    .line 233
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/EventAttribute;-><init>()V

    .line 234
    iput-object p1, p0, Lorg/simpleframework/xml/stream/StreamReader$Entry;->entry:Ljavax/xml/stream/events/Attribute;

    .line 235
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Entry;->entry:Ljavax/xml/stream/events/Attribute;

    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Entry;->entry:Ljavax/xml/stream/events/Attribute;

    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Entry;->entry:Ljavax/xml/stream/events/Attribute;

    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Entry;->entry:Ljavax/xml/stream/events/Attribute;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Entry;->entry:Ljavax/xml/stream/events/Attribute;

    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isReserved()Z
    .registers 2

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method
