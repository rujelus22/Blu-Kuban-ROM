.class Lorg/simpleframework/xml/core/OverrideValue;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/strategy/Value;


# instance fields
.field private final type:Ljava/lang/Class;

.field private final value:Lorg/simpleframework/xml/strategy/Value;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Class;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/OverrideValue;->value:Lorg/simpleframework/xml/strategy/Value;

    iput-object p2, p0, Lorg/simpleframework/xml/core/OverrideValue;->type:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/OverrideValue;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Value;->getLength()I

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/OverrideValue;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/OverrideValue;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Value;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isReference()Z
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/OverrideValue;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Value;->isReference()Z

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/OverrideValue;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    return-void
.end method