.class public Lorg/simpleframework/xml/convert/AnnotationStrategy;
.super Ljava/lang/Object;
.source "AnnotationStrategy.java"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Strategy;


# instance fields
.field private final scanner:Lorg/simpleframework/xml/convert/ConverterScanner;

.field private final strategy:Lorg/simpleframework/xml/strategy/Strategy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 70
    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/convert/AnnotationStrategy;-><init>(Lorg/simpleframework/xml/strategy/Strategy;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;)V
    .registers 3
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lorg/simpleframework/xml/convert/ConverterScanner;

    invoke-direct {v0}, Lorg/simpleframework/xml/convert/ConverterScanner;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/convert/AnnotationStrategy;->scanner:Lorg/simpleframework/xml/convert/ConverterScanner;

    .line 83
    iput-object p1, p0, Lorg/simpleframework/xml/convert/AnnotationStrategy;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    .line 84
    return-void
.end method

.method private isReference(Lorg/simpleframework/xml/strategy/Value;)Z
    .registers 3
    .parameter

    .prologue
    .line 195
    if-eqz p1, :cond_a

    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Value;->isReference()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/strategy/Value;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/strategy/Type;",
            "Lorg/simpleframework/xml/stream/NodeMap",
            "<",
            "Lorg/simpleframework/xml/stream/InputNode;",
            ">;",
            "Lorg/simpleframework/xml/strategy/Value;",
            ")",
            "Lorg/simpleframework/xml/strategy/Value;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/simpleframework/xml/convert/AnnotationStrategy;->scanner:Lorg/simpleframework/xml/convert/ConverterScanner;

    invoke-virtual {v0, p1, p3}, Lorg/simpleframework/xml/convert/ConverterScanner;->getConverter(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v1

    .line 123
    invoke-interface {p2}, Lorg/simpleframework/xml/stream/NodeMap;->getNode()Lorg/simpleframework/xml/stream/Node;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/stream/InputNode;

    .line 125
    if-eqz v1, :cond_1d

    .line 126
    invoke-interface {v1, v0}, Lorg/simpleframework/xml/convert/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v1

    .line 128
    if-eqz p3, :cond_17

    .line 129
    invoke-interface {p3, v1}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    .line 131
    :cond_17
    new-instance v0, Lorg/simpleframework/xml/convert/Reference;

    invoke-direct {v0, p3, v1}, Lorg/simpleframework/xml/convert/Reference;-><init>(Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Object;)V

    move-object p3, v0

    .line 133
    :cond_1d
    return-object p3
.end method

.method private write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/strategy/Type;",
            "Ljava/lang/Object;",
            "Lorg/simpleframework/xml/stream/NodeMap",
            "<",
            "Lorg/simpleframework/xml/stream/OutputNode;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lorg/simpleframework/xml/convert/AnnotationStrategy;->scanner:Lorg/simpleframework/xml/convert/ConverterScanner;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/convert/ConverterScanner;->getConverter(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v1

    .line 176
    invoke-interface {p3}, Lorg/simpleframework/xml/stream/NodeMap;->getNode()Lorg/simpleframework/xml/stream/Node;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/stream/OutputNode;

    .line 178
    if-eqz v1, :cond_13

    .line 179
    invoke-interface {v1, v0, p2}, Lorg/simpleframework/xml/convert/Converter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    .line 180
    const/4 v0, 0x1

    .line 182
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Lorg/simpleframework/xml/strategy/Value;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/strategy/Type;",
            "Lorg/simpleframework/xml/stream/NodeMap",
            "<",
            "Lorg/simpleframework/xml/stream/InputNode;",
            ">;",
            "Ljava/util/Map;",
            ")",
            "Lorg/simpleframework/xml/strategy/Value;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lorg/simpleframework/xml/convert/AnnotationStrategy;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    invoke-interface {v0, p1, p2, p3}, Lorg/simpleframework/xml/strategy/Strategy;->read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    .line 102
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/convert/AnnotationStrategy;->isReference(Lorg/simpleframework/xml/strategy/Value;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 105
    :goto_c
    return-object v0

    :cond_d
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/convert/AnnotationStrategy;->read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    goto :goto_c
.end method

.method public write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/strategy/Type;",
            "Ljava/lang/Object;",
            "Lorg/simpleframework/xml/stream/NodeMap",
            "<",
            "Lorg/simpleframework/xml/stream/OutputNode;",
            ">;",
            "Ljava/util/Map;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lorg/simpleframework/xml/convert/AnnotationStrategy;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/simpleframework/xml/strategy/Strategy;->write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Z

    move-result v0

    .line 154
    if-nez v0, :cond_c

    .line 155
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/convert/AnnotationStrategy;->write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Z

    move-result v0

    .line 157
    :cond_c
    return v0
.end method
