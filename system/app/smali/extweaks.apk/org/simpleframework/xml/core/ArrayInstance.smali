.class Lorg/simpleframework/xml/core/ArrayInstance;
.super Ljava/lang/Object;
.source "ArrayInstance.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Instance;


# instance fields
.field private final length:I

.field private final type:Ljava/lang/Class;

.field private final value:Lorg/simpleframework/xml/strategy/Value;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Value;)V
    .registers 3
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Value;->getLength()I

    move-result v0

    iput v0, p0, Lorg/simpleframework/xml/core/ArrayInstance;->length:I

    .line 62
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Value;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ArrayInstance;->type:Ljava/lang/Class;

    .line 63
    iput-object p1, p0, Lorg/simpleframework/xml/core/ArrayInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    .line 64
    return-void
.end method


# virtual methods
.method public getInstance()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lorg/simpleframework/xml/core/ArrayInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Value;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 75
    iget-object v0, p0, Lorg/simpleframework/xml/core/ArrayInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Value;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 82
    :cond_e
    :goto_e
    return-object v0

    .line 77
    :cond_f
    iget-object v0, p0, Lorg/simpleframework/xml/core/ArrayInstance;->type:Ljava/lang/Class;

    iget v1, p0, Lorg/simpleframework/xml/core/ArrayInstance;->length:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lorg/simpleframework/xml/core/ArrayInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    if-eqz v1, :cond_e

    .line 80
    iget-object v1, p0, Lorg/simpleframework/xml/core/ArrayInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    goto :goto_e
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/simpleframework/xml/core/ArrayInstance;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public isReference()Z
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lorg/simpleframework/xml/core/ArrayInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Value;->isReference()Z

    move-result v0

    return v0
.end method

.method public setInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lorg/simpleframework/xml/core/ArrayInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    if-eqz v0, :cond_9

    .line 97
    iget-object v0, p0, Lorg/simpleframework/xml/core/ArrayInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    .line 99
    :cond_9
    return-object p1
.end method
