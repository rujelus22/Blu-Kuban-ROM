.class Lorg/simpleframework/xml/core/Traverser;
.super Ljava/lang/Object;
.source "Traverser.java"


# instance fields
.field private final context:Lorg/simpleframework/xml/core/Context;

.field private final style:Lorg/simpleframework/xml/stream/Style;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Traverser;->style:Lorg/simpleframework/xml/stream/Style;

    .line 57
    iput-object p1, p0, Lorg/simpleframework/xml/core/Traverser;->context:Lorg/simpleframework/xml/core/Context;

    .line 58
    return-void
.end method

.method private getComposite(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Composite;
    .registers 5
    .parameter

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Traverser;->getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    .line 254
    if-nez p1, :cond_11

    .line 255
    new-instance v0, Lorg/simpleframework/xml/core/RootException;

    const-string v1, "Can not instantiate null class"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/RootException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 257
    :cond_11
    new-instance v1, Lorg/simpleframework/xml/core/Composite;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Traverser;->context:Lorg/simpleframework/xml/core/Context;

    invoke-direct {v1, v2, v0}, Lorg/simpleframework/xml/core/Composite;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    return-object v1
.end method

.method private getDecorator(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Decorator;
    .registers 3
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lorg/simpleframework/xml/core/Traverser;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Context;->getDecorator(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Decorator;

    move-result-object v0

    return-object v0
.end method

.method private getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;
    .registers 3
    .parameter

    .prologue
    .line 270
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-virtual {p0, p2}, Lorg/simpleframework/xml/core/Traverser;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 143
    if-nez v0, :cond_14

    .line 144
    new-instance v0, Lorg/simpleframework/xml/core/RootException;

    const-string v1, "Root annotation required for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/RootException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 146
    :cond_14
    return-object p3
.end method


# virtual methods
.method protected getName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lorg/simpleframework/xml/core/Traverser;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Context;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lorg/simpleframework/xml/core/Traverser;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    return-object v0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/core/Traverser;->getComposite(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Composite;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Composite;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_13

    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 97
    invoke-direct {p0, p1, v1, v0}, Lorg/simpleframework/xml/core/Traverser;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 119
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Traverser;->getComposite(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Composite;

    move-result-object v1

    .line 120
    invoke-virtual {v1, p1, p2}, Lorg/simpleframework/xml/core/Composite;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 122
    invoke-direct {p0, p1, v0, v1}, Lorg/simpleframework/xml/core/Traverser;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/core/Traverser;->getComposite(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Composite;

    move-result-object v0

    .line 166
    invoke-virtual {p0, p2}, Lorg/simpleframework/xml/core/Traverser;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 168
    if-nez v1, :cond_18

    .line 169
    new-instance v0, Lorg/simpleframework/xml/core/RootException;

    const-string v1, "Root annotation required for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/RootException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 171
    :cond_18
    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v0

    return v0
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 186
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Traverser;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 187
    return-void
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 203
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/Traverser;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 205
    if-nez v1, :cond_18

    .line 206
    new-instance v1, Lorg/simpleframework/xml/core/RootException;

    const-string v2, "Root annotation required for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/RootException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 208
    :cond_18
    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/simpleframework/xml/core/Traverser;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-interface {p1, p4}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    .line 226
    invoke-direct {p0, p3}, Lorg/simpleframework/xml/core/Traverser;->getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;

    move-result-object v1

    .line 228
    if-eqz p2, :cond_26

    .line 229
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 230
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/Traverser;->getDecorator(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Decorator;

    move-result-object v3

    .line 232
    if-eqz v3, :cond_17

    .line 233
    invoke-interface {v3, v0}, Lorg/simpleframework/xml/core/Decorator;->decorate(Lorg/simpleframework/xml/stream/OutputNode;)V

    .line 235
    :cond_17
    iget-object v3, p0, Lorg/simpleframework/xml/core/Traverser;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v3, v1, p2, v0}, Lorg/simpleframework/xml/core/Context;->setOverride(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 236
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/Traverser;->getComposite(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Composite;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lorg/simpleframework/xml/core/Composite;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    .line 239
    :cond_26
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/OutputNode;->commit()V

    .line 240
    return-void
.end method
