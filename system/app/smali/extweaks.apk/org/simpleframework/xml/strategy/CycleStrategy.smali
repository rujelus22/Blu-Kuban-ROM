.class public Lorg/simpleframework/xml/strategy/CycleStrategy;
.super Ljava/lang/Object;
.source "CycleStrategy.java"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Strategy;


# instance fields
.field private final contract:Lorg/simpleframework/xml/strategy/Contract;

.field private final read:Lorg/simpleframework/xml/strategy/ReadState;

.field private final write:Lorg/simpleframework/xml/strategy/WriteState;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 85
    const-string v0, "id"

    const-string v1, "reference"

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/strategy/CycleStrategy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 99
    const-string v0, "class"

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/strategy/CycleStrategy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    const-string v0, "length"

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/simpleframework/xml/strategy/CycleStrategy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lorg/simpleframework/xml/strategy/Contract;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/simpleframework/xml/strategy/Contract;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/CycleStrategy;->contract:Lorg/simpleframework/xml/strategy/Contract;

    .line 131
    new-instance v0, Lorg/simpleframework/xml/strategy/WriteState;

    iget-object v1, p0, Lorg/simpleframework/xml/strategy/CycleStrategy;->contract:Lorg/simpleframework/xml/strategy/Contract;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/strategy/WriteState;-><init>(Lorg/simpleframework/xml/strategy/Contract;)V

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/CycleStrategy;->write:Lorg/simpleframework/xml/strategy/WriteState;

    .line 132
    new-instance v0, Lorg/simpleframework/xml/strategy/ReadState;

    iget-object v1, p0, Lorg/simpleframework/xml/strategy/CycleStrategy;->contract:Lorg/simpleframework/xml/strategy/Contract;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/strategy/ReadState;-><init>(Lorg/simpleframework/xml/strategy/Contract;)V

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/CycleStrategy;->read:Lorg/simpleframework/xml/strategy/ReadState;

    .line 133
    return-void
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Lorg/simpleframework/xml/strategy/Value;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/CycleStrategy;->read:Lorg/simpleframework/xml/strategy/ReadState;

    invoke-virtual {v0, p3}, Lorg/simpleframework/xml/strategy/ReadState;->find(Ljava/lang/Object;)Lorg/simpleframework/xml/strategy/ReadGraph;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_d

    .line 153
    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/strategy/ReadGraph;->read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    .line 155
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/CycleStrategy;->write:Lorg/simpleframework/xml/strategy/WriteState;

    invoke-virtual {v0, p4}, Lorg/simpleframework/xml/strategy/WriteState;->find(Ljava/lang/Object;)Lorg/simpleframework/xml/strategy/WriteGraph;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_d

    .line 177
    invoke-virtual {v0, p1, p2, p3}, Lorg/simpleframework/xml/strategy/WriteGraph;->write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Z

    move-result v0

    .line 179
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
