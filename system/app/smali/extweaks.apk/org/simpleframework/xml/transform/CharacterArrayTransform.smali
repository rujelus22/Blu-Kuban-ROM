.class Lorg/simpleframework/xml/transform/CharacterArrayTransform;
.super Ljava/lang/Object;
.source "CharacterArrayTransform.java"

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# instance fields
.field private final entry:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/simpleframework/xml/transform/CharacterArrayTransform;->entry:Ljava/lang/Class;

    .line 61
    return-void
.end method

.method private read([CI)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lorg/simpleframework/xml/transform/CharacterArrayTransform;->entry:Ljava/lang/Class;

    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 97
    const/4 v0, 0x0

    :goto_7
    if-ge v0, p2, :cond_15

    .line 98
    aget-char v2, p1, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 100
    :cond_15
    return-object v1
.end method

.method private write(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 136
    const/4 v0, 0x0

    :goto_6
    if-ge v0, p2, :cond_14

    .line 137
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 139
    if-eqz v2, :cond_11

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 143
    :cond_14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public read(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .parameter

    .prologue
    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 75
    array-length v1, v0

    .line 77
    iget-object v2, p0, Lorg/simpleframework/xml/transform/CharacterArrayTransform;->entry:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_c

    .line 80
    :goto_b
    return-object v0

    :cond_c
    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/transform/CharacterArrayTransform;->read([CI)Ljava/lang/Object;

    move-result-object v0

    goto :goto_b
.end method

.method public write(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 114
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 116
    iget-object v1, p0, Lorg/simpleframework/xml/transform/CharacterArrayTransform;->entry:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_12

    .line 117
    check-cast p1, [C

    .line 118
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 120
    :goto_11
    return-object v0

    :cond_12
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/transform/CharacterArrayTransform;->write(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method
