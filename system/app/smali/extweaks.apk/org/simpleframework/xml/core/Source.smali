.class Lorg/simpleframework/xml/core/Source;
.super Ljava/lang/Object;
.source "Source.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Context;


# instance fields
.field private engine:Lorg/simpleframework/xml/core/TemplateEngine;

.field private filter:Lorg/simpleframework/xml/filter/Filter;

.field private session:Lorg/simpleframework/xml/core/Session;

.field private strategy:Lorg/simpleframework/xml/strategy/Strategy;

.field private style:Lorg/simpleframework/xml/stream/Style;

.field private support:Lorg/simpleframework/xml/core/Support;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/stream/Style;Lorg/simpleframework/xml/core/Session;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lorg/simpleframework/xml/core/TemplateFilter;

    invoke-direct {v0, p0, p2}, Lorg/simpleframework/xml/core/TemplateFilter;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/filter/Filter;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Source;->filter:Lorg/simpleframework/xml/filter/Filter;

    .line 98
    new-instance v0, Lorg/simpleframework/xml/core/TemplateEngine;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Source;->filter:Lorg/simpleframework/xml/filter/Filter;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/TemplateEngine;-><init>(Lorg/simpleframework/xml/filter/Filter;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Source;->engine:Lorg/simpleframework/xml/core/TemplateEngine;

    .line 99
    iput-object p1, p0, Lorg/simpleframework/xml/core/Source;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    .line 100
    iput-object p2, p0, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    .line 101
    iput-object p4, p0, Lorg/simpleframework/xml/core/Source;->session:Lorg/simpleframework/xml/core/Session;

    .line 102
    iput-object p3, p0, Lorg/simpleframework/xml/core/Source;->style:Lorg/simpleframework/xml/stream/Style;

    .line 103
    return-void
.end method

.method private getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;
    .registers 3
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Support;->getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 345
    iget-object v0, p0, Lorg/simpleframework/xml/core/Source;->session:Lorg/simpleframework/xml/core/Session;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Session;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCaller(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Caller;
    .registers 3
    .parameter

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Source;->getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simpleframework/xml/core/Scanner;->getCaller(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Caller;

    move-result-object v0

    return-object v0
.end method

.method public getDecorator(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Decorator;
    .registers 3
    .parameter

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Source;->getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Scanner;->getDecorator()Lorg/simpleframework/xml/core/Decorator;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;
    .registers 3
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Support;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;
    .registers 3
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Support;->getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    return-object v0
.end method

.method public getName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Support;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverride(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/strategy/Value;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 365
    invoke-interface {p2}, Lorg/simpleframework/xml/stream/InputNode;->getAttributes()Lorg/simpleframework/xml/stream/NodeMap;

    move-result-object v0

    .line 367
    if-nez v0, :cond_14

    .line 368
    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v1, "No attributes for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 370
    :cond_14
    iget-object v1, p0, Lorg/simpleframework/xml/core/Source;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Source;->session:Lorg/simpleframework/xml/core/Session;

    invoke-interface {v1, p1, v0, v2}, Lorg/simpleframework/xml/strategy/Strategy;->read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 427
    iget-object v0, p0, Lorg/simpleframework/xml/core/Source;->engine:Lorg/simpleframework/xml/core/TemplateEngine;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/TemplateEngine;->process(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchema(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Schema;
    .registers 6
    .parameter

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Source;->getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object v0

    .line 329
    if-nez v0, :cond_14

    .line 330
    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v1, "Invalid schema class %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 332
    :cond_14
    new-instance v1, Lorg/simpleframework/xml/core/ClassSchema;

    invoke-direct {v1, v0, p0}, Lorg/simpleframework/xml/core/ClassSchema;-><init>(Lorg/simpleframework/xml/core/Scanner;Lorg/simpleframework/xml/core/Context;)V

    return-object v1
.end method

.method public getSession()Lorg/simpleframework/xml/core/Session;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lorg/simpleframework/xml/core/Source;->session:Lorg/simpleframework/xml/core/Session;

    return-object v0
.end method

.method public getStyle()Lorg/simpleframework/xml/stream/Style;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lorg/simpleframework/xml/core/Source;->style:Lorg/simpleframework/xml/stream/Style;

    if-nez v0, :cond_b

    .line 153
    new-instance v0, Lorg/simpleframework/xml/core/DefaultStyle;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/DefaultStyle;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Source;->style:Lorg/simpleframework/xml/stream/Style;

    .line 155
    :cond_b
    iget-object v0, p0, Lorg/simpleframework/xml/core/Source;->style:Lorg/simpleframework/xml/stream/Style;

    return-object v0
.end method

.method public getSupport()Lorg/simpleframework/xml/core/Support;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    return-object v0
.end method

.method public getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 409
    if-eqz p2, :cond_7

    .line 410
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 412
    :goto_6
    return-object v0

    :cond_7
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_6
.end method

.method public getVersion(Ljava/lang/Class;)Lorg/simpleframework/xml/Version;
    .registers 3
    .parameter

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Source;->getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Scanner;->getRevision()Lorg/simpleframework/xml/Version;

    move-result-object v0

    return-object v0
.end method

.method public isFloat(Ljava/lang/Class;)Z
    .registers 3
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Support;->isFloat(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isFloat(Lorg/simpleframework/xml/strategy/Type;)Z
    .registers 3
    .parameter

    .prologue
    .line 181
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/Source;->isFloat(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isPrimitive(Ljava/lang/Class;)Z
    .registers 3
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Support;->isPrimitive(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isPrimitive(Lorg/simpleframework/xml/strategy/Type;)Z
    .registers 3
    .parameter

    .prologue
    .line 209
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/Source;->isPrimitive(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isStrict()Z
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lorg/simpleframework/xml/core/Source;->session:Lorg/simpleframework/xml/core/Session;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Session;->isStrict()Z

    move-result v0

    return v0
.end method

.method public setOverride(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 389
    invoke-interface {p3}, Lorg/simpleframework/xml/stream/OutputNode;->getAttributes()Lorg/simpleframework/xml/stream/NodeMap;

    move-result-object v0

    .line 391
    if-nez v0, :cond_14

    .line 392
    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v1, "No attributes for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 394
    :cond_14
    iget-object v1, p0, Lorg/simpleframework/xml/core/Source;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Source;->session:Lorg/simpleframework/xml/core/Session;

    invoke-interface {v1, p1, p2, v0, v2}, Lorg/simpleframework/xml/strategy/Strategy;->write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method
