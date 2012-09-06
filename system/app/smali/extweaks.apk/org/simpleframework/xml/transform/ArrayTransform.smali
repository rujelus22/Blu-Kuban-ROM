.class Lorg/simpleframework/xml/transform/ArrayTransform;
.super Ljava/lang/Object;
.source "ArrayTransform.java"

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# instance fields
.field private final delegate:Lorg/simpleframework/xml/transform/Transform;

.field private final entry:Ljava/lang/Class;

.field private final split:Lorg/simpleframework/xml/transform/StringArrayTransform;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/transform/Transform;Ljava/lang/Class;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lorg/simpleframework/xml/transform/StringArrayTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/StringArrayTransform;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/transform/ArrayTransform;->split:Lorg/simpleframework/xml/transform/StringArrayTransform;

    .line 73
    iput-object p1, p0, Lorg/simpleframework/xml/transform/ArrayTransform;->delegate:Lorg/simpleframework/xml/transform/Transform;

    .line 74
    iput-object p2, p0, Lorg/simpleframework/xml/transform/ArrayTransform;->entry:Ljava/lang/Class;

    .line 75
    return-void
.end method

.method private read([Ljava/lang/String;I)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lorg/simpleframework/xml/transform/ArrayTransform;->entry:Ljava/lang/Class;

    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 108
    const/4 v0, 0x0

    :goto_7
    if-ge v0, p2, :cond_19

    .line 109
    iget-object v2, p0, Lorg/simpleframework/xml/transform/ArrayTransform;->delegate:Lorg/simpleframework/xml/transform/Transform;

    aget-object v3, p1, v0

    invoke-interface {v2, v3}, Lorg/simpleframework/xml/transform/Transform;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_16

    .line 112
    invoke-static {v1, v0, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 108
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 115
    :cond_19
    return-object v1
.end method

.method private write(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 145
    new-array v1, p2, [Ljava/lang/String;

    .line 147
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p2, :cond_16

    .line 148
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 150
    if-eqz v2, :cond_13

    .line 151
    iget-object v3, p0, Lorg/simpleframework/xml/transform/ArrayTransform;->delegate:Lorg/simpleframework/xml/transform/Transform;

    invoke-interface {v3, v2}, Lorg/simpleframework/xml/transform/Transform;->write(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 147
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 154
    :cond_16
    iget-object v0, p0, Lorg/simpleframework/xml/transform/ArrayTransform;->split:Lorg/simpleframework/xml/transform/StringArrayTransform;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/transform/StringArrayTransform;->write([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public read(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lorg/simpleframework/xml/transform/ArrayTransform;->split:Lorg/simpleframework/xml/transform/StringArrayTransform;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/transform/StringArrayTransform;->read(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 89
    array-length v1, v0

    .line 91
    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/transform/ArrayTransform;->read([Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 129
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 131
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/transform/ArrayTransform;->write(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
