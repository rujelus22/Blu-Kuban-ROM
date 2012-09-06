.class Lorg/simpleframework/xml/stream/Indenter$Cache;
.super Ljava/lang/Object;


# instance fields
.field private count:I

.field private list:[Ljava/lang/String;

.field final synthetic this$0:Lorg/simpleframework/xml/stream/Indenter;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/Indenter;I)V
    .registers 4

    iput-object p1, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->this$0:Lorg/simpleframework/xml/stream/Indenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p2, [Ljava/lang/String;

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    return-void
.end method

.method private resize(I)V
    .registers 5

    new-array v1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_b

    iput-object v1, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    return-void

    :cond_b
    iget-object v2, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method public get(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_a

    iget-object v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public set(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_a

    mul-int/lit8 v0, p1, 0x2

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Indenter$Cache;->resize(I)V

    :cond_a
    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->count:I

    if-le p1, v0, :cond_10

    iput p1, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->count:I

    :cond_10
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-void
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->count:I

    return v0
.end method
