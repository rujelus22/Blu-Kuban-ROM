.class Lorg/apache/james/mime4j/util/CharsetUtil$Charset;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/james/mime4j/util/CharsetUtil$Charset;",
        ">;"
    }
.end annotation


# instance fields
.field private aliases:[Ljava/lang/String;

.field private canonical:Ljava/lang/String;

.field private mime:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->mime:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->aliases:[Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->mime:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->aliases:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->mime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->aliases:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->compareTo(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)I
    .registers 4

    iget-object v0, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    iget-object v1, p1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
