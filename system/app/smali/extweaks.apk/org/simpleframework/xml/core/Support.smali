.class Lorg/simpleframework/xml/core/Support;
.super Ljava/lang/Object;
.source "Support.java"

# interfaces
.implements Lorg/simpleframework/xml/filter/Filter;


# instance fields
.field private final creator:Lorg/simpleframework/xml/core/Instantiator;

.field private final factory:Lorg/simpleframework/xml/core/ScannerFactory;

.field private final filter:Lorg/simpleframework/xml/filter/Filter;

.field private final matcher:Lorg/simpleframework/xml/transform/Matcher;

.field private final transform:Lorg/simpleframework/xml/transform/Transformer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 73
    new-instance v0, Lorg/simpleframework/xml/filter/PlatformFilter;

    invoke-direct {v0}, Lorg/simpleframework/xml/filter/PlatformFilter;-><init>()V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Support;-><init>(Lorg/simpleframework/xml/filter/Filter;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;)V
    .registers 3
    .parameter

    .prologue
    .line 85
    new-instance v0, Lorg/simpleframework/xml/core/EmptyMatcher;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/EmptyMatcher;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Support;-><init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lorg/simpleframework/xml/transform/Transformer;

    invoke-direct {v0, p2}, Lorg/simpleframework/xml/transform/Transformer;-><init>(Lorg/simpleframework/xml/transform/Matcher;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    .line 99
    new-instance v0, Lorg/simpleframework/xml/core/ScannerFactory;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/ScannerFactory;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Support;->factory:Lorg/simpleframework/xml/core/ScannerFactory;

    .line 100
    new-instance v0, Lorg/simpleframework/xml/core/Instantiator;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Instantiator;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Support;->creator:Lorg/simpleframework/xml/core/Instantiator;

    .line 101
    iput-object p2, p0, Lorg/simpleframework/xml/core/Support;->matcher:Lorg/simpleframework/xml/transform/Matcher;

    .line 102
    iput-object p1, p0, Lorg/simpleframework/xml/core/Support;->filter:Lorg/simpleframework/xml/filter/Filter;

    .line 103
    return-void
.end method

.method private getClassName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 252
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 253
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 255
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 260
    :goto_14
    return-object v0

    :cond_15
    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method


# virtual methods
.method public getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;
    .registers 3
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->creator:Lorg/simpleframework/xml/core/Instantiator;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Instantiator;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;
    .registers 3
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->creator:Lorg/simpleframework/xml/core/Instantiator;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Instantiator;->getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    return-object v0
.end method

.method public getName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Support;->getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Scanner;->getName()Ljava/lang/String;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_b

    .line 238
    :goto_a
    return-object v0

    :cond_b
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Support;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getPrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 3
    .parameter

    .prologue
    .line 273
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    .line 274
    const-class p1, Ljava/lang/Double;

    .line 297
    :cond_6
    :goto_6
    return-object p1

    .line 276
    :cond_7
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_e

    .line 277
    const-class p1, Ljava/lang/Float;

    goto :goto_6

    .line 279
    :cond_e
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_15

    .line 280
    const-class p1, Ljava/lang/Integer;

    goto :goto_6

    .line 282
    :cond_15
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1c

    .line 283
    const-class p1, Ljava/lang/Long;

    goto :goto_6

    .line 285
    :cond_1c
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_23

    .line 286
    const-class p1, Ljava/lang/Boolean;

    goto :goto_6

    .line 288
    :cond_23
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2a

    .line 289
    const-class p1, Ljava/lang/Character;

    goto :goto_6

    .line 291
    :cond_2a
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_31

    .line 292
    const-class p1, Ljava/lang/Short;

    goto :goto_6

    .line 294
    :cond_31
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    .line 295
    const-class p1, Ljava/lang/Byte;

    goto :goto_6
.end method

.method public getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;
    .registers 3
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->factory:Lorg/simpleframework/xml/core/ScannerFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ScannerFactory;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object v0

    return-object v0
.end method

.method public getTransform(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 3
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->matcher:Lorg/simpleframework/xml/transform/Matcher;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/transform/Matcher;->match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    return-object v0
.end method

.method public isFloat(Ljava/lang/Class;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 333
    const-class v1, Ljava/lang/Double;

    if-ne p1, v1, :cond_6

    .line 345
    :cond_5
    :goto_5
    return v0

    .line 336
    :cond_6
    const-class v1, Ljava/lang/Float;

    if-eq p1, v1, :cond_5

    .line 339
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_5

    .line 342
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_5

    .line 345
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPrimitive(Ljava/lang/Class;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 311
    const-class v1, Ljava/lang/String;

    if-ne p1, v1, :cond_6

    .line 320
    :cond_5
    :goto_5
    return v0

    .line 314
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_5

    .line 317
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_5

    .line 320
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/transform/Transformer;->valid(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_5
.end method

.method public read(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/transform/Transformer;->read(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->filter:Lorg/simpleframework/xml/filter/Filter;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/filter/Filter;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valid(Ljava/lang/Class;)Z
    .registers 3
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/transform/Transformer;->valid(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public write(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/transform/Transformer;->write(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
