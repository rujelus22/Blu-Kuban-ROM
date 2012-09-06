.class Lorg/simpleframework/xml/transform/PrimitiveMatcher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/transform/Matcher;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_a

    new-instance v0, Lorg/simpleframework/xml/transform/IntegerTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/IntegerTransform;-><init>()V

    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_14

    new-instance v0, Lorg/simpleframework/xml/transform/BooleanTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/BooleanTransform;-><init>()V

    goto :goto_9

    :cond_14
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1e

    new-instance v0, Lorg/simpleframework/xml/transform/LongTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/LongTransform;-><init>()V

    goto :goto_9

    :cond_1e
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_28

    new-instance v0, Lorg/simpleframework/xml/transform/DoubleTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/DoubleTransform;-><init>()V

    goto :goto_9

    :cond_28
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_32

    new-instance v0, Lorg/simpleframework/xml/transform/FloatTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/FloatTransform;-><init>()V

    goto :goto_9

    :cond_32
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3c

    new-instance v0, Lorg/simpleframework/xml/transform/ShortTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/ShortTransform;-><init>()V

    goto :goto_9

    :cond_3c
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_46

    new-instance v0, Lorg/simpleframework/xml/transform/ByteTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/ByteTransform;-><init>()V

    goto :goto_9

    :cond_46
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_50

    new-instance v0, Lorg/simpleframework/xml/transform/CharacterTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/CharacterTransform;-><init>()V

    goto :goto_9

    :cond_50
    const/4 v0, 0x0

    goto :goto_9
.end method
