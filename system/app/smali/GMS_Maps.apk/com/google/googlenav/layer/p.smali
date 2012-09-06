.class public Lcom/google/googlenav/layer/p;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/googlenav/layer/q;

.field private final d:Z

.field private final e:Z

.field private f:Lcom/google/googlenav/W;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/layer/q;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/layer/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/googlenav/layer/q;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/google/googlenav/layer/q;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/layer/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/googlenav/layer/q;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/googlenav/layer/q;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/google/googlenav/layer/p;->a:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/google/googlenav/layer/p;->b:Ljava/lang/String;

    .line 103
    iput-object p5, p0, Lcom/google/googlenav/layer/p;->c:Lcom/google/googlenav/layer/q;

    .line 104
    iput-boolean p4, p0, Lcom/google/googlenav/layer/p;->e:Z

    .line 105
    iput-boolean p3, p0, Lcom/google/googlenav/layer/p;->d:Z

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/layer/p;->g:Z

    .line 107
    return-void
.end method


# virtual methods
.method public Z()V
    .registers 3

    .prologue
    .line 203
    invoke-super {p0}, Lac/a;->Z()V

    .line 204
    iget-object v0, p0, Lcom/google/googlenav/layer/p;->c:Lcom/google/googlenav/layer/q;

    iget-object v1, p0, Lcom/google/googlenav/layer/p;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/googlenav/layer/q;->a(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public a()I
    .registers 2

    .prologue
    .line 111
    const/16 v0, 0x25

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 127
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/dA;->i:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 129
    iget-object v1, p0, Lcom/google/googlenav/layer/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 130
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/layer/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 134
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 136
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/D;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 138
    const/16 v2, 0x11

    invoke-virtual {v1, v2, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 139
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 142
    invoke-virtual {p0}, Lcom/google/googlenav/layer/p;->a()I

    move-result v1

    invoke-static {v1, v0, v3}, Lcom/google/googlenav/ah;->a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V

    .line 146
    iget-boolean v1, p0, Lcom/google/googlenav/layer/p;->e:Z

    if-eqz v1, :cond_43

    .line 147
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bn;->T()Lcom/google/googlenav/ui/bm;

    move-result-object v1

    .line 148
    const/4 v2, 0x5

    invoke-virtual {v1}, Lcom/google/googlenav/ui/p;->d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 150
    :cond_43
    iget-boolean v1, p0, Lcom/google/googlenav/layer/p;->d:Z

    if-nez v1, :cond_4c

    .line 151
    const/16 v1, 0x2b

    invoke-virtual {v0, v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 154
    :cond_4c
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 155
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/google/googlenav/layer/p;->g:Z

    .line 220
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 159
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/dA;->j:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v2, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 163
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/googlenav/layer/p;->f:Lcom/google/googlenav/W;

    .line 167
    invoke-virtual {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-nez v3, :cond_14

    .line 198
    :cond_13
    :goto_13
    return v0

    .line 171
    :cond_14
    invoke-virtual {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 173
    invoke-virtual {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/layer/p;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    move v0, v1

    .line 174
    goto :goto_13

    .line 176
    :cond_26
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/layer/p;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    move v0, v1

    .line 177
    goto :goto_13

    .line 180
    :cond_35
    invoke-virtual {v2, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 181
    invoke-virtual {v2, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    iget-object v3, p0, Lcom/google/googlenav/layer/p;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/googlenav/layer/p;->b:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/google/googlenav/W;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/W;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/layer/p;->f:Lcom/google/googlenav/W;

    .line 183
    invoke-virtual {v2, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 184
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v3

    .line 189
    invoke-virtual {v2, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v5

    .line 190
    iget-object v1, p0, Lcom/google/googlenav/layer/p;->f:Lcom/google/googlenav/W;

    add-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lcom/google/googlenav/W;->a(J)V

    .line 194
    :goto_65
    iget-object v1, p0, Lcom/google/googlenav/layer/p;->f:Lcom/google/googlenav/W;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/W;->b(Ljava/lang/String;)V

    goto :goto_13

    .line 192
    :cond_70
    iget-object v1, p0, Lcom/google/googlenav/layer/p;->f:Lcom/google/googlenav/W;

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v3, v4}, Lcom/google/googlenav/W;->a(J)V

    goto :goto_65
.end method

.method public i_()Z
    .registers 2

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/google/googlenav/layer/p;->g:Z

    return v0
.end method

.method public k_()Z
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public l_()V
    .registers 5

    .prologue
    .line 211
    iget-object v1, p0, Lcom/google/googlenav/layer/p;->c:Lcom/google/googlenav/layer/q;

    iget-object v2, p0, Lcom/google/googlenav/layer/p;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlenav/layer/p;->f:Lcom/google/googlenav/W;

    iget-boolean v0, p0, Lcom/google/googlenav/layer/p;->g:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-interface {v1, v2, v3, v0}, Lcom/google/googlenav/layer/q;->a(Ljava/lang/String;Lcom/google/googlenav/W;Z)V

    .line 212
    return-void

    .line 211
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method
