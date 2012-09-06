.class Lorg/simpleframework/xml/strategy/Reference;
.super Ljava/lang/Object;
.source "Reference.java"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Value;


# instance fields
.field private type:Ljava/lang/Class;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/simpleframework/xml/strategy/Reference;->value:Ljava/lang/Object;

    .line 52
    iput-object p2, p0, Lorg/simpleframework/xml/strategy/Reference;->type:Ljava/lang/Class;

    .line 53
    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 2

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/Reference;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/Reference;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isReference()Z
    .registers 2

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lorg/simpleframework/xml/strategy/Reference;->value:Ljava/lang/Object;

    .line 76
    return-void
.end method
