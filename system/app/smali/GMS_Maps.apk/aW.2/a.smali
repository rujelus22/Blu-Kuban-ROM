.class public Law/a;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private a:[Law/c;

.field private b:[Law/c;

.field private c:I

.field private d:Law/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Law/a;->c:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Law/a;->d:Law/b;

    .line 49
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 53
    const/16 v0, 0x3c

    return v0
.end method

.method public a(Law/b;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Law/a;->d:Law/b;

    .line 122
    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5
    .parameter

    .prologue
    .line 63
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/iv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 65
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 68
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 69
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 11
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x1

    .line 73
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/iv;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 77
    iput-object v2, p0, Law/a;->a:[Law/c;

    .line 78
    iput-object v2, p0, Law/a;->b:[Law/c;

    .line 80
    invoke-virtual {v1, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Law/a;->c:I

    .line 81
    iget v0, p0, Law/a;->c:I

    if-eqz v0, :cond_18

    .line 106
    :goto_17
    return v7

    .line 87
    :cond_18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-virtual {v1, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v4

    .line 91
    const/4 v0, 0x0

    :goto_27
    if-ge v0, v4, :cond_48

    .line 92
    new-instance v5, Law/c;

    invoke-virtual {v1, v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    invoke-direct {v5, v6}, Law/c;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 94
    invoke-virtual {v5}, Law/c;->d()Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 95
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_3b
    :goto_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 96
    :cond_3e
    invoke-virtual {v5}, Law/c;->e()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 97
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 103
    :cond_48
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Law/c;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Law/c;

    iput-object v0, p0, Law/a;->a:[Law/c;

    .line 104
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Law/c;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Law/c;

    iput-object v0, p0, Law/a;->b:[Law/c;

    goto :goto_17
.end method

.method public i_()Z
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public k()Z
    .registers 3

    .prologue
    .line 125
    iget v0, p0, Law/a;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public l()Z
    .registers 3

    .prologue
    .line 136
    iget v0, p0, Law/a;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public l_()V
    .registers 4

    .prologue
    .line 111
    iget-object v0, p0, Law/a;->d:Law/b;

    if-eqz v0, :cond_11

    .line 112
    iget-object v0, p0, Law/a;->a:[Law/c;

    if-eqz v0, :cond_c

    iget-object v0, p0, Law/a;->b:[Law/c;

    if-nez v0, :cond_12

    .line 113
    :cond_c
    iget-object v0, p0, Law/a;->d:Law/b;

    invoke-interface {v0}, Law/b;->d()V

    .line 118
    :cond_11
    :goto_11
    return-void

    .line 115
    :cond_12
    iget-object v0, p0, Law/a;->d:Law/b;

    iget-object v1, p0, Law/a;->a:[Law/c;

    iget-object v2, p0, Law/a;->b:[Law/c;

    invoke-interface {v0, v1, v2}, Law/b;->a([Law/c;[Law/c;)V

    goto :goto_11
.end method
