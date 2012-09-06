.class Lorg/simpleframework/xml/core/Variable$Adapter;
.super Ljava/lang/Object;
.source "Variable.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Repeater;


# instance fields
.field private final reader:Lorg/simpleframework/xml/core/Converter;

.field final synthetic this$0:Lorg/simpleframework/xml/core/Variable;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Variable;Lorg/simpleframework/xml/core/Converter;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lorg/simpleframework/xml/core/Variable$Adapter;->this$0:Lorg/simpleframework/xml/core/Variable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-object p2, p0, Lorg/simpleframework/xml/core/Variable$Adapter;->reader:Lorg/simpleframework/xml/core/Converter;

    .line 479
    iput-object p3, p0, Lorg/simpleframework/xml/core/Variable$Adapter;->value:Ljava/lang/Object;

    .line 480
    return-void
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 493
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable$Adapter;->value:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/Variable$Adapter;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 507
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v0

    .line 508
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v1

    .line 510
    iget-object v2, p0, Lorg/simpleframework/xml/core/Variable$Adapter;->reader:Lorg/simpleframework/xml/core/Converter;

    instance-of v2, v2, Lorg/simpleframework/xml/core/Repeater;

    if-eqz v2, :cond_17

    .line 511
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable$Adapter;->reader:Lorg/simpleframework/xml/core/Converter;

    check-cast v0, Lorg/simpleframework/xml/core/Repeater;

    .line 513
    invoke-interface {v0, p1, p2}, Lorg/simpleframework/xml/core/Repeater;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 515
    :cond_17
    new-instance v2, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v3, "Element \'%s\' declared twice at %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-direct {v2, v3, v4}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .registers 8
    .parameter

    .prologue
    .line 529
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v0

    .line 530
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v1

    .line 532
    iget-object v2, p0, Lorg/simpleframework/xml/core/Variable$Adapter;->reader:Lorg/simpleframework/xml/core/Converter;

    instance-of v2, v2, Lorg/simpleframework/xml/core/Repeater;

    if-eqz v2, :cond_17

    .line 533
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable$Adapter;->reader:Lorg/simpleframework/xml/core/Converter;

    check-cast v0, Lorg/simpleframework/xml/core/Repeater;

    .line 535
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Repeater;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v0

    return v0

    .line 537
    :cond_17
    new-instance v2, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v3, "Element \'%s\' declared twice at %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-direct {v2, v3, v4}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 550
    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/core/Variable$Adapter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    .line 551
    return-void
.end method
