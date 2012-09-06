.class Lorg/simpleframework/xml/transform/StringArrayTransform;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/transform/Transform",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final pattern:Ljava/util/regex/Pattern;

.field private final token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, ","

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/transform/StringArrayTransform;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/transform/StringArrayTransform;->pattern:Ljava/util/regex/Pattern;

    iput-object p1, p0, Lorg/simpleframework/xml/transform/StringArrayTransform;->token:Ljava/lang/String;

    return-void
.end method

.method private read(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lorg/simpleframework/xml/transform/StringArrayTransform;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_7
    array-length v2, v1

    if-lt v0, v2, :cond_b

    return-object v1

    :cond_b
    aget-object v2, v1, v0

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private write([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_6
    array-length v2, p1

    if-lt v0, v2, :cond_e

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    aget-object v2, p1, v0

    if-eqz v2, :cond_23

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_20

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method


# virtual methods
.method public bridge synthetic read(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/StringArrayTransform;->read(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/transform/StringArrayTransform;->token:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/transform/StringArrayTransform;->read(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic write(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/StringArrayTransform;->write([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write([Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/transform/StringArrayTransform;->token:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/transform/StringArrayTransform;->write([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
