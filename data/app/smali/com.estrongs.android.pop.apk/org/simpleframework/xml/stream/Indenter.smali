.class Lorg/simpleframework/xml/stream/Indenter;
.super Ljava/lang/Object;


# instance fields
.field private cache:Lorg/simpleframework/xml/stream/Indenter$Cache;

.field private count:I

.field private indent:I

.field private index:I


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lorg/simpleframework/xml/stream/Format;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/Format;-><init>()V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Indenter;-><init>(Lorg/simpleframework/xml/stream/Format;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/stream/Format;)V
    .registers 3

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/stream/Indenter;-><init>(Lorg/simpleframework/xml/stream/Format;I)V

    return-void
.end method

.method private constructor <init>(Lorg/simpleframework/xml/stream/Format;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/simpleframework/xml/stream/Format;->getIndent()I

    move-result v0

    iput v0, p0, Lorg/simpleframework/xml/stream/Indenter;->indent:I

    new-instance v0, Lorg/simpleframework/xml/stream/Indenter$Cache;

    invoke-direct {v0, p0, p2}, Lorg/simpleframework/xml/stream/Indenter$Cache;-><init>(Lorg/simpleframework/xml/stream/Indenter;I)V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Indenter;->cache:Lorg/simpleframework/xml/stream/Indenter$Cache;

    return-void
.end method

.method private create()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [C

    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    if-lez v0, :cond_21

    const/4 v0, 0x0

    const/16 v2, 0xa

    aput-char v2, v1, v0

    const/4 v0, 0x1

    :goto_10
    iget v2, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    if-le v0, v2, :cond_1a

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    :goto_19
    return-object v0

    :cond_1a
    const/16 v2, 0x20

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_21
    const-string v0, "\n"

    goto :goto_19
.end method

.method private indent(I)Ljava/lang/String;
    .registers 4

    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter;->indent:I

    if-lez v0, :cond_1e

    iget-object v0, p0, Lorg/simpleframework/xml/stream/Indenter;->cache:Lorg/simpleframework/xml/stream/Indenter$Cache;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/Indenter$Cache;->get(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Lorg/simpleframework/xml/stream/Indenter;->create()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/stream/Indenter;->cache:Lorg/simpleframework/xml/stream/Indenter$Cache;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/stream/Indenter$Cache;->set(ILjava/lang/String;)V

    :cond_15
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Indenter;->cache:Lorg/simpleframework/xml/stream/Indenter$Cache;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/Indenter$Cache;->size()I

    move-result v1

    if-lez v1, :cond_1e

    :goto_1d
    return-object v0

    :cond_1e
    const-string v0, ""

    goto :goto_1d
.end method


# virtual methods
.method public pop()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/simpleframework/xml/stream/Indenter;->index:I

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Indenter;->indent(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/simpleframework/xml/stream/Indenter;->indent:I

    if-lez v1, :cond_15

    iget v1, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    iget v2, p0, Lorg/simpleframework/xml/stream/Indenter;->indent:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    :cond_15
    return-object v0
.end method

.method public push()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/simpleframework/xml/stream/Indenter;->index:I

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Indenter;->indent(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/simpleframework/xml/stream/Indenter;->indent:I

    if-lez v1, :cond_15

    iget v1, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    iget v2, p0, Lorg/simpleframework/xml/stream/Indenter;->indent:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    :cond_15
    return-object v0
.end method

.method public top()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter;->index:I

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Indenter;->indent(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
