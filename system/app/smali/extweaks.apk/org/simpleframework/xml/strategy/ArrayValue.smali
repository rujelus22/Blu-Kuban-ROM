.class Lorg/simpleframework/xml/strategy/ArrayValue;
.super Ljava/lang/Object;
.source "ArrayValue.java"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Value;


# instance fields
.field private size:I

.field private type:Ljava/lang/Class;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/simpleframework/xml/strategy/ArrayValue;->type:Ljava/lang/Class;

    .line 59
    iput p2, p0, Lorg/simpleframework/xml/strategy/ArrayValue;->size:I

    .line 60
    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 2

    .prologue
    .line 103
    iget v0, p0, Lorg/simpleframework/xml/strategy/ArrayValue;->size:I

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/ArrayValue;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/ArrayValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isReference()Z
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lorg/simpleframework/xml/strategy/ArrayValue;->value:Ljava/lang/Object;

    .line 82
    return-void
.end method
