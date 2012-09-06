.class public LaC/q;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;

.field private b:Lat/B;

.field private c:LaC/r;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Integer;

.field private f:I

.field private g:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Lat/B;LaC/r;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 68
    iput-object p1, p0, LaC/q;->a:Ljava/util/List;

    .line 69
    iput-object p2, p0, LaC/q;->b:Lat/B;

    .line 70
    iput-object p3, p0, LaC/q;->c:LaC/r;

    .line 71
    return-void
.end method

.method public static a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter

    .prologue
    .line 131
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ew;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 132
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 133
    return-object v0
.end method

.method public static a(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-static {p0}, LaC/q;->a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 138
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 139
    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 75
    const/16 v0, 0x77

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 80
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ew;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 81
    iget-object v0, p0, LaC/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 82
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_e

    .line 84
    :cond_1f
    iget-object v0, p0, LaC/q;->b:Lat/B;

    invoke-virtual {v0}, Lat/B;->g()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 85
    iget-object v0, p0, LaC/q;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_44

    iget-object v0, p0, LaC/q;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_44

    .line 86
    const/4 v0, 0x3

    iget-object v2, p0, LaC/q;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 87
    const/4 v0, 0x4

    iget-object v2, p0, LaC/q;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 89
    :cond_44
    const/16 v0, 0x77

    invoke-static {v0, v1, v4}, Lcom/google/googlenav/ah;->a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V

    .line 91
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 92
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 96
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ew;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 98
    invoke-virtual {v1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, LaC/q;->f:I

    .line 99
    iget v0, p0, LaC/q;->f:I

    if-nez v0, :cond_2c

    .line 100
    invoke-virtual {v1, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LaC/q;->g:Ljava/util/List;

    .line 102
    const/4 v0, 0x0

    :goto_1e
    if-ge v0, v2, :cond_2c

    .line 103
    iget-object v3, p0, LaC/q;->g:Ljava/util/List;

    invoke-virtual {v1, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 106
    :cond_2c
    return v5
.end method

.method public b(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, LaC/q;->d:Ljava/lang/Integer;

    .line 144
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, LaC/q;->e:Ljava/lang/Integer;

    .line 145
    return-void
.end method

.method public j_()Z
    .registers 2

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public l_()V
    .registers 3

    .prologue
    .line 118
    iget v0, p0, LaC/q;->f:I

    if-nez v0, :cond_8

    iget-object v0, p0, LaC/q;->g:Ljava/util/List;

    if-nez v0, :cond_e

    .line 119
    :cond_8
    iget-object v0, p0, LaC/q;->c:LaC/r;

    invoke-interface {v0}, LaC/r;->d()V

    .line 123
    :goto_d
    return-void

    .line 121
    :cond_e
    iget-object v0, p0, LaC/q;->c:LaC/r;

    iget-object v1, p0, LaC/q;->g:Ljava/util/List;

    invoke-interface {v0, v1}, LaC/r;->a(Ljava/util/List;)V

    goto :goto_d
.end method

.method public m_()V
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, LaC/q;->c:LaC/r;

    invoke-interface {v0}, LaC/r;->d()V

    .line 113
    return-void
.end method
