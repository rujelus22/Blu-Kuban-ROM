.class Lorg/simpleframework/xml/stream/StreamReader;
.super Ljava/lang/Object;
.source "StreamReader.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/EventReader;


# instance fields
.field private peek:Lorg/simpleframework/xml/stream/EventNode;

.field private reader:Ljavax/xml/stream/XMLEventReader;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLEventReader;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/simpleframework/xml/stream/StreamReader;->reader:Ljavax/xml/stream/XMLEventReader;

    .line 65
    return-void
.end method

.method private attribute(Ljavax/xml/stream/events/Attribute;)Lorg/simpleframework/xml/stream/StreamReader$Entry;
    .registers 3
    .parameter

    .prologue
    .line 179
    new-instance v0, Lorg/simpleframework/xml/stream/StreamReader$Entry;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/StreamReader$Entry;-><init>(Ljavax/xml/stream/events/Attribute;)V

    return-object v0
.end method

.method private build(Lorg/simpleframework/xml/stream/StreamReader$Start;)Lorg/simpleframework/xml/stream/StreamReader$Start;
    .registers 5
    .parameter

    .prologue
    .line 155
    invoke-virtual {p1}, Lorg/simpleframework/xml/stream/StreamReader$Start;->getAttributes()Ljava/util/Iterator;

    move-result-object v1

    .line 157
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 158
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/Attribute;

    .line 159
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/StreamReader;->attribute(Ljavax/xml/stream/events/Attribute;)Lorg/simpleframework/xml/stream/StreamReader$Entry;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/StreamReader$Entry;->isReserved()Z

    move-result v2

    if-nez v2, :cond_4

    .line 162
    invoke-virtual {p1, v0}, Lorg/simpleframework/xml/stream/StreamReader$Start;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 165
    :cond_1e
    return-object p1
.end method

.method private end()Lorg/simpleframework/xml/stream/StreamReader$End;
    .registers 3

    .prologue
    .line 206
    new-instance v0, Lorg/simpleframework/xml/stream/StreamReader$End;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/StreamReader$End;-><init>(Lorg/simpleframework/xml/stream/StreamReader$1;)V

    return-object v0
.end method

.method private read()Lorg/simpleframework/xml/stream/EventNode;
    .registers 3

    .prologue
    .line 110
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->reader:Ljavax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 113
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/StreamReader;->start(Ljavax/xml/stream/events/XMLEvent;)Lorg/simpleframework/xml/stream/StreamReader$Start;

    move-result-object v0

    .line 119
    :goto_10
    return-object v0

    .line 115
    :cond_11
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 116
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/StreamReader;->text(Ljavax/xml/stream/events/XMLEvent;)Lorg/simpleframework/xml/stream/StreamReader$Text;

    move-result-object v0

    goto :goto_10

    .line 118
    :cond_1c
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/StreamReader;->end()Lorg/simpleframework/xml/stream/StreamReader$End;

    move-result-object v0

    goto :goto_10
.end method

.method private start(Ljavax/xml/stream/events/XMLEvent;)Lorg/simpleframework/xml/stream/StreamReader$Start;
    .registers 4
    .parameter

    .prologue
    .line 135
    new-instance v0, Lorg/simpleframework/xml/stream/StreamReader$Start;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/StreamReader$Start;-><init>(Ljavax/xml/stream/events/XMLEvent;)V

    .line 137
    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/StreamReader$Start;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 138
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/StreamReader;->build(Lorg/simpleframework/xml/stream/StreamReader$Start;)Lorg/simpleframework/xml/stream/StreamReader$Start;

    move-result-object v0

    .line 140
    :cond_f
    return-object v0
.end method

.method private text(Ljavax/xml/stream/events/XMLEvent;)Lorg/simpleframework/xml/stream/StreamReader$Text;
    .registers 3
    .parameter

    .prologue
    .line 193
    new-instance v0, Lorg/simpleframework/xml/stream/StreamReader$Text;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/StreamReader$Text;-><init>(Ljavax/xml/stream/events/XMLEvent;)V

    return-object v0
.end method


# virtual methods
.method public next()Lorg/simpleframework/xml/stream/EventNode;
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    .line 93
    if-nez v0, :cond_9

    .line 94
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/StreamReader;->read()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    .line 98
    :goto_8
    return-object v0

    .line 96
    :cond_9
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    goto :goto_8
.end method

.method public peek()Lorg/simpleframework/xml/stream/EventNode;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    if-nez v0, :cond_a

    .line 77
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/StreamReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    .line 79
    :cond_a
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    return-object v0
.end method
