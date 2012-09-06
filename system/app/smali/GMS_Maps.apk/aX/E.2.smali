.class public Lax/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lax/E;->a:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lax/E;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lax/E;->b:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lax/E;->d:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lax/E;->a:Ljava/lang/String;

    .line 37
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    iput v0, p0, Lax/E;->b:I

    .line 38
    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 39
    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lax/E;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 41
    :cond_20
    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    :goto_2a
    iput-boolean v0, p0, Lax/E;->d:Z

    .line 43
    return-void

    .line 41
    :cond_2d
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lax/E;
    .registers 4
    .parameter

    .prologue
    .line 46
    new-instance v0, Lax/E;

    invoke-direct {v0}, Lax/E;-><init>()V

    .line 47
    const/16 v1, 0x90

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lax/E;->a(Ljava/lang/String;)V

    .line 48
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lbo/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 49
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 50
    invoke-virtual {v0, v1}, Lax/E;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 51
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lax/E;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 71
    iput p1, p0, Lax/E;->b:I

    .line 72
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lax/E;->a:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-boolean p1, p0, Lax/E;->d:Z

    .line 80
    return-void
.end method

.method public b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lax/E;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lax/E;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 68
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lax/E;->d:Z

    return v0
.end method

.method public d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4

    .prologue
    .line 83
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbo/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 84
    const/4 v1, 0x1

    iget-object v2, p0, Lax/E;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 85
    iget v1, p0, Lax/E;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    .line 86
    const/4 v1, 0x2

    iget v2, p0, Lax/E;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 88
    :cond_18
    iget-object v1, p0, Lax/E;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_22

    .line 89
    const/4 v1, 0x3

    iget-object v2, p0, Lax/E;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 91
    :cond_22
    const/4 v1, 0x4

    iget-boolean v2, p0, Lax/E;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 92
    return-object v0
.end method
