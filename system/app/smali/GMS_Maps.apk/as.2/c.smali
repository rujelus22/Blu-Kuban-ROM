.class public LaS/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/util/List;

.field e:Z

.field f:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)LaS/c;
    .registers 7
    .parameter

    .prologue
    const/4 v5, 0x5

    .line 105
    new-instance v1, LaS/c;

    invoke-direct {v1}, LaS/c;-><init>()V

    .line 106
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LaS/c;->a:Ljava/lang/String;

    .line 108
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LaS/c;->b:Ljava/lang/String;

    .line 111
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LaS/c;->c:Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, LaS/c;->d:Ljava/util/List;

    .line 114
    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 115
    const/4 v0, 0x0

    :goto_26
    if-ge v0, v2, :cond_38

    .line 116
    iget-object v3, v1, LaS/c;->d:Ljava/util/List;

    invoke-virtual {p0, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-static {v4}, LaS/c;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)LaS/c;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 122
    :cond_38
    iget-object v0, v1, LaS/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_60

    .line 123
    const/16 v0, 0x9

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    .line 125
    const/16 v2, 0xa

    invoke-static {p0, v2}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    .line 127
    if-eqz v0, :cond_60

    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 128
    new-instance v0, LaS/c;

    invoke-direct {v0}, LaS/c;-><init>()V

    .line 129
    iput-object v2, v0, LaS/c;->a:Ljava/lang/String;

    .line 130
    const-string v2, "editlocation"

    iput-object v2, v0, LaS/c;->b:Ljava/lang/String;

    .line 131
    iget-object v2, v1, LaS/c;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_60
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    iput-boolean v0, v1, LaS/c;->e:Z

    .line 137
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    iput v0, v1, LaS/c;->f:I

    .line 140
    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, LaS/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, LaS/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, LaS/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, LaS/c;->d:Ljava/util/List;

    return-object v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 160
    iget-boolean v0, p0, LaS/c;->e:Z

    return v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 164
    iget v0, p0, LaS/c;->f:I

    return v0
.end method
