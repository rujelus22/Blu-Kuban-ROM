.class public Lcom/google/googlenav/layer/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private final c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/i;->c:Ljava/util/Map;

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/i;->a:Ljava/lang/String;

    .line 36
    new-instance v1, Lcom/google/googlenav/layer/e;

    const-string v0, ""

    invoke-direct {v1, v0}, Lcom/google/googlenav/layer/e;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 38
    if-lez v2, :cond_3e

    .line 39
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/layer/i;->b:[Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    :goto_28
    if-ge v0, v2, :cond_3e

    .line 41
    iget-object v3, p0, Lcom/google/googlenav/layer/i;->b:[Ljava/lang/String;

    invoke-virtual {p1, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 44
    iget-object v3, p0, Lcom/google/googlenav/layer/i;->c:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/googlenav/layer/i;->b:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 47
    :cond_3e
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/i;->c:Ljava/util/Map;

    .line 56
    iput-object p1, p0, Lcom/google/googlenav/layer/i;->a:Ljava/lang/String;

    .line 58
    new-instance v1, Lcom/google/googlenav/layer/e;

    const-string v0, ""

    invoke-direct {v1, v0}, Lcom/google/googlenav/layer/e;-><init>(Ljava/lang/String;)V

    .line 59
    if-eqz p2, :cond_2c

    array-length v0, p2

    if-lez v0, :cond_2c

    .line 60
    iput-object p2, p0, Lcom/google/googlenav/layer/i;->b:[Ljava/lang/String;

    .line 61
    array-length v2, p2

    const/4 v0, 0x0

    :goto_20
    if-ge v0, v2, :cond_2c

    aget-object v3, p2, v0

    .line 64
    iget-object v4, p0, Lcom/google/googlenav/layer/i;->c:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 67
    :cond_2c
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/googlenav/layer/e;
    .registers 3
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/googlenav/layer/i;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/e;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/googlenav/layer/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/layer/e;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/googlenav/layer/i;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public b()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/googlenav/layer/i;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numSubNodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/i;->b:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
