.class Lorg/simpleframework/xml/transform/CharacterTransform;
.super Ljava/lang/Object;
.source "CharacterTransform.java"

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/transform/Transform",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/lang/String;)Ljava/lang/Character;
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v2, :cond_14

    .line 56
    new-instance v0, Lorg/simpleframework/xml/transform/InvalidFormatException;

    const-string v1, "Cannot convert \'%s\' to a character"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/transform/InvalidFormatException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 58
    :cond_14
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic read(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/CharacterTransform;->read(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Character;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 72
    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic write(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 42
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/CharacterTransform;->write(Ljava/lang/Character;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
