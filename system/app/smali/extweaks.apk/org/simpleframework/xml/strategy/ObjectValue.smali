.class Lorg/simpleframework/xml/strategy/ObjectValue;
.super Ljava/lang/Object;
.source "ObjectValue.java"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Value;


# instance fields
.field private type:Ljava/lang/Class;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/simpleframework/xml/strategy/ObjectValue;->type:Ljava/lang/Class;

    .line 52
    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 2

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/ObjectValue;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/ObjectValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isReference()Z
    .registers 2

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lorg/simpleframework/xml/strategy/ObjectValue;->value:Ljava/lang/Object;

    .line 74
    return-void
.end method
