.class public Lo/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private c:[Lo/P;

.field private d:Lo/g;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    .line 22
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lo/a;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 24
    return-void
.end method

.method private constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lo/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 28
    iput-object p2, p0, Lo/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 29
    return-void
.end method

.method private constructor <init>(Lo/g;)V
    .registers 4
    .parameter

    .prologue
    .line 32
    invoke-virtual {p1}, Lo/g;->r()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {p1}, Lo/g;->p()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lo/a;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 33
    iput-object p1, p0, Lo/a;->d:Lo/g;

    .line 34
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lo/a;
    .registers 2
    .parameter

    .prologue
    .line 44
    new-instance v0, Lo/a;

    invoke-direct {v0, p0}, Lo/a;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    return-object v0
.end method

.method public static a(Lo/g;)Lo/a;
    .registers 2
    .parameter

    .prologue
    .line 54
    new-instance v0, Lo/a;

    invoke-direct {v0, p0}, Lo/a;-><init>(Lo/g;)V

    return-object v0
.end method


# virtual methods
.method public a()Lo/g;
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lo/a;->d:Lo/g;

    if-nez v0, :cond_22

    .line 62
    iget-object v0, p0, Lo/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-nez v0, :cond_a

    .line 63
    const/4 v0, 0x0

    .line 70
    :goto_9
    return-object v0

    .line 65
    :cond_a
    new-instance v0, Lo/i;

    iget-object v1, p0, Lo/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {v0, v1}, Lo/i;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-virtual {v0}, Lo/i;->a()Lo/g;

    move-result-object v0

    iput-object v0, p0, Lo/a;->d:Lo/g;

    .line 66
    iget-object v0, p0, Lo/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_22

    .line 67
    iget-object v0, p0, Lo/a;->d:Lo/g;

    iget-object v1, p0, Lo/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lo/g;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 70
    :cond_22
    iget-object v0, p0, Lo/a;->d:Lo/g;

    goto :goto_9
.end method

.method public a([Lo/P;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0}, Lo/a;->d()[Lo/P;

    .line 153
    aget-object v1, p1, v0

    iget-object v2, p0, Lo/a;->c:[Lo/P;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lo/P;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    iget-object v2, p0, Lo/a;->c:[Lo/P;

    iget-object v3, p0, Lo/a;->c:[Lo/P;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lo/P;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v0, 0x1

    :cond_25
    return v0
.end method

.method public b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lo/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public c()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lo/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public d()[Lo/P;
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    .line 104
    iget-object v1, p0, Lo/a;->c:[Lo/P;

    if-nez v1, :cond_2c

    .line 105
    iget-object v1, p0, Lo/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-nez v1, :cond_d

    .line 106
    new-array v0, v0, [Lo/P;

    .line 116
    :goto_c
    return-object v0

    .line 108
    :cond_d
    iget-object v1, p0, Lo/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 109
    new-array v2, v1, [Lo/P;

    iput-object v2, p0, Lo/a;->c:[Lo/P;

    .line 110
    :goto_17
    if-ge v0, v1, :cond_2c

    .line 111
    iget-object v2, p0, Lo/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 113
    iget-object v3, p0, Lo/a;->c:[Lo/P;

    new-instance v4, Lo/P;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lo/P;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 116
    :cond_2c
    iget-object v0, p0, Lo/a;->c:[Lo/P;

    goto :goto_c
.end method
