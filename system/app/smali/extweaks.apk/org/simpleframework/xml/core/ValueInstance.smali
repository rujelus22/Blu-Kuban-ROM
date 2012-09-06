.class Lorg/simpleframework/xml/core/ValueInstance;
.super Ljava/lang/Object;
.source "ValueInstance.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Instance;


# instance fields
.field private final creator:Lorg/simpleframework/xml/core/Instantiator;

.field private final type:Ljava/lang/Class;

.field private final value:Lorg/simpleframework/xml/strategy/Value;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Instantiator;Lorg/simpleframework/xml/strategy/Value;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-interface {p2}, Lorg/simpleframework/xml/strategy/Value;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ValueInstance;->type:Ljava/lang/Class;

    .line 59
    iput-object p1, p0, Lorg/simpleframework/xml/core/ValueInstance;->creator:Lorg/simpleframework/xml/core/Instantiator;

    .line 60
    iput-object p2, p0, Lorg/simpleframework/xml/core/ValueInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    .line 61
    return-void
.end method


# virtual methods
.method public getInstance()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lorg/simpleframework/xml/core/ValueInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Value;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 72
    iget-object v0, p0, Lorg/simpleframework/xml/core/ValueInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Value;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 79
    :cond_e
    :goto_e
    return-object v0

    .line 74
    :cond_f
    iget-object v0, p0, Lorg/simpleframework/xml/core/ValueInstance;->creator:Lorg/simpleframework/xml/core/Instantiator;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ValueInstance;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/core/Instantiator;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lorg/simpleframework/xml/core/ValueInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    if-eqz v1, :cond_e

    .line 77
    iget-object v1, p0, Lorg/simpleframework/xml/core/ValueInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    goto :goto_e
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/simpleframework/xml/core/ValueInstance;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public isReference()Z
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lorg/simpleframework/xml/core/ValueInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Value;->isReference()Z

    move-result v0

    return v0
.end method

.method public setInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lorg/simpleframework/xml/core/ValueInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    if-eqz v0, :cond_9

    .line 94
    iget-object v0, p0, Lorg/simpleframework/xml/core/ValueInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    .line 96
    :cond_9
    return-object p1
.end method
