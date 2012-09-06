.class Lorg/simpleframework/xml/stream/StreamReader$Text;
.super Lorg/simpleframework/xml/stream/EventToken;
.source "StreamReader.java"


# instance fields
.field private final text:Ljavax/xml/stream/events/Characters;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/events/XMLEvent;)V
    .registers 3
    .parameter

    .prologue
    .line 433
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/EventToken;-><init>()V

    .line 434
    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Text;->text:Ljavax/xml/stream/events/Characters;

    .line 435
    return-void
.end method


# virtual methods
.method public getSource()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Text;->text:Ljavax/xml/stream/events/Characters;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Text;->text:Ljavax/xml/stream/events/Characters;

    invoke-interface {v0}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isText()Z
    .registers 2

    .prologue
    .line 445
    const/4 v0, 0x1

    return v0
.end method
