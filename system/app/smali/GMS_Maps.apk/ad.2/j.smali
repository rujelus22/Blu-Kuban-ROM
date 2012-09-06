.class public Lad/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lad/k;


# instance fields
.field private a:Lad/y;

.field private b:Lad/y;

.field private c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lad/j;->a:Lad/y;

    .line 27
    iput-object v0, p0, Lad/j;->b:Lad/y;

    .line 32
    iput-object v0, p0, Lad/j;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 35
    return-void
.end method

.method public constructor <init>(Lad/y;Lad/y;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lad/j;->a:Lad/y;

    .line 27
    iput-object v0, p0, Lad/j;->b:Lad/y;

    .line 32
    iput-object v0, p0, Lad/j;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 38
    iput-object p1, p0, Lad/j;->a:Lad/y;

    .line 39
    iput-object p2, p0, Lad/j;->b:Lad/y;

    .line 40
    return-void
.end method

.method public constructor <init>(Lad/y;Lad/y;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lad/j;-><init>(Lad/y;Lad/y;)V

    .line 44
    iput-object p3, p0, Lad/j;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 45
    return-void
.end method


# virtual methods
.method public a(Lad/y;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lad/j;->a:Lad/y;

    .line 53
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lad/j;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 110
    return-void
.end method

.method public ad()[Lat/B;
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public aq()Lad/y;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lad/j;->a:Lad/y;

    return-object v0
.end method

.method public as()Lad/y;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lad/j;->b:Lad/y;

    return-object v0
.end method

.method public au()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lad/j;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public b(Lad/y;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lad/j;->b:Lad/y;

    .line 61
    return-void
.end method

.method public m(I)I
    .registers 3
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method
