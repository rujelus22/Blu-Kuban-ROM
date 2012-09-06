.class abstract Lorg/simpleframework/xml/stream/EventToken;
.super Ljava/lang/Object;
.source "EventToken.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/EventNode;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLine()I
    .registers 2

    .prologue
    .line 45
    const/4 v0, -0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnd()Z
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public isStart()Z
    .registers 2

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public isText()Z
    .registers 2

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/simpleframework/xml/stream/Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method
