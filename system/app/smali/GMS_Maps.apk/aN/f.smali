.class public final Lan/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final b:[Lar/c;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;[Lar/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lan/f;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 101
    iput-object p2, p0, Lan/f;->b:[Lar/c;

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;[Lar/c;Lan/e;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lan/f;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;[Lar/c;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lan/f;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public b()[Lar/c;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lan/f;->b:[Lar/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationInfo[location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lan/f;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wifiInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lan/f;->b:[Lar/c;

    invoke-static {v1}, Lar/c;->a([Lar/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
