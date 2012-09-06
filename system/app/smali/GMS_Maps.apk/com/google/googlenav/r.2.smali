.class public Lcom/google/googlenav/R;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private k:Ljava/lang/Boolean;

.field private l:Ljava/util/List;

.field private m:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/R;
    .registers 3
    .parameter

    .prologue
    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/R;->b:Ljava/lang/Integer;

    .line 102
    return-object p0
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/R;
    .registers 2
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/googlenav/R;->j:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 150
    return-object p0
.end method

.method public a(Ljava/lang/Integer;)Lcom/google/googlenav/R;
    .registers 2
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/googlenav/R;->m:Ljava/lang/Integer;

    .line 171
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/R;
    .registers 2
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/googlenav/R;->a:Ljava/lang/String;

    .line 96
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/google/googlenav/R;
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/googlenav/R;->l:Ljava/util/List;

    .line 165
    return-object p0
.end method

.method public a(Z)Lcom/google/googlenav/R;
    .registers 3
    .parameter

    .prologue
    .line 125
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/R;->f:Ljava/lang/Boolean;

    .line 126
    return-object p0
.end method

.method public a()V
    .registers 10

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 177
    sget-boolean v1, Lcom/google/googlenav/Q;->a:Z

    if-nez v1, :cond_a

    .line 268
    :cond_9
    :goto_9
    return-void

    .line 186
    :cond_a
    iget-object v1, p0, Lcom/google/googlenav/R;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_118

    move v1, v2

    .line 197
    :goto_14
    new-instance v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v4, Lcom/google/wireless/googlenav/proto/j2me/dU;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 198
    iget-object v4, p0, Lcom/google/googlenav/R;->a:Ljava/lang/String;

    if-eqz v4, :cond_25

    .line 199
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/googlenav/R;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 201
    :cond_25
    iget-object v4, p0, Lcom/google/googlenav/R;->b:Ljava/lang/Integer;

    if-eqz v4, :cond_34

    .line 202
    const/16 v4, 0x8

    iget-object v5, p0, Lcom/google/googlenav/R;->b:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 204
    :cond_34
    iget-object v4, p0, Lcom/google/googlenav/R;->c:Ljava/lang/String;

    if-eqz v4, :cond_3e

    .line 205
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/googlenav/R;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 207
    :cond_3e
    iget-object v4, p0, Lcom/google/googlenav/R;->d:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 210
    invoke-static {v3}, Lcom/google/googlenav/Q;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 215
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v4}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Date;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 217
    iget-object v4, p0, Lcom/google/googlenav/R;->e:Ljava/lang/String;

    if-eqz v4, :cond_62

    .line 218
    iget-object v4, p0, Lcom/google/googlenav/R;->e:Ljava/lang/String;

    invoke-virtual {v3, v7, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 220
    :cond_62
    iget-object v4, p0, Lcom/google/googlenav/R;->f:Ljava/lang/Boolean;

    if-eqz v4, :cond_6f

    .line 221
    iget-object v4, p0, Lcom/google/googlenav/R;->f:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v8, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 225
    :cond_6f
    iget-object v4, p0, Lcom/google/googlenav/R;->g:Ljava/lang/String;

    if-nez v4, :cond_83

    iget-object v4, p0, Lcom/google/googlenav/R;->h:Ljava/lang/String;

    if-nez v4, :cond_83

    iget-object v4, p0, Lcom/google/googlenav/R;->i:Ljava/lang/String;

    if-nez v4, :cond_83

    iget-object v4, p0, Lcom/google/googlenav/R;->j:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-nez v4, :cond_83

    iget-object v4, p0, Lcom/google/googlenav/R;->m:Ljava/lang/Integer;

    if-eqz v4, :cond_ce

    .line 227
    :cond_83
    new-instance v4, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/wireless/googlenav/proto/j2me/dU;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 228
    const/4 v5, 0x7

    invoke-virtual {v3, v5, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 231
    iget-object v5, p0, Lcom/google/googlenav/R;->g:Ljava/lang/String;

    if-eqz v5, :cond_97

    .line 232
    iget-object v5, p0, Lcom/google/googlenav/R;->g:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 234
    :cond_97
    iget-object v5, p0, Lcom/google/googlenav/R;->h:Ljava/lang/String;

    if-eqz v5, :cond_a0

    .line 235
    iget-object v5, p0, Lcom/google/googlenav/R;->h:Ljava/lang/String;

    invoke-virtual {v4, v7, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 237
    :cond_a0
    iget-object v5, p0, Lcom/google/googlenav/R;->i:Ljava/lang/String;

    if-eqz v5, :cond_a9

    .line 238
    iget-object v5, p0, Lcom/google/googlenav/R;->i:Ljava/lang/String;

    invoke-virtual {v4, v8, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 240
    :cond_a9
    iget-object v5, p0, Lcom/google/googlenav/R;->j:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v5, :cond_b2

    .line 241
    iget-object v5, p0, Lcom/google/googlenav/R;->j:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v4, v2, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 243
    :cond_b2
    iget-object v2, p0, Lcom/google/googlenav/R;->k:Ljava/lang/Boolean;

    if-eqz v2, :cond_c0

    .line 244
    const/4 v2, 0x5

    iget-object v5, p0, Lcom/google/googlenav/R;->k:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 247
    :cond_c0
    iget-object v2, p0, Lcom/google/googlenav/R;->m:Ljava/lang/Integer;

    if-eqz v2, :cond_ce

    .line 248
    const/4 v2, 0x6

    iget-object v5, p0, Lcom/google/googlenav/R;->m:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 253
    :cond_ce
    iget-object v2, p0, Lcom/google/googlenav/R;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/googlenav/Q;->b(I)Z

    move-result v2

    if-eqz v2, :cond_ff

    iget-object v2, p0, Lcom/google/googlenav/R;->l:Ljava/util/List;

    if-eqz v2, :cond_ff

    move v2, v0

    .line 254
    :goto_df
    iget-object v0, p0, Lcom/google/googlenav/R;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_ff

    .line 255
    const/16 v4, 0xa

    iget-object v0, p0, Lcom/google/googlenav/R;->l:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 254
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_df

    :sswitch_fc
    move v1, v0

    .line 190
    goto/16 :goto_14

    .line 261
    :cond_ff
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    new-instance v2, Lcom/google/googlenav/Q;

    invoke-direct {v2, v3, v1}, Lcom/google/googlenav/Q;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V

    invoke-virtual {v0, v2}, Lac/h;->c(Lac/g;)V

    .line 265
    iget-object v0, p0, Lcom/google/googlenav/R;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_9

    .line 266
    invoke-static {v3}, Lcom/google/googlenav/Q;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto/16 :goto_9

    .line 186
    :sswitch_data_118
    .sparse-switch
        0x5 -> :sswitch_fc
        0x10 -> :sswitch_fc
    .end sparse-switch
.end method

.method public b(I)Lcom/google/googlenav/R;
    .registers 3
    .parameter

    .prologue
    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/R;->d:Ljava/lang/Integer;

    .line 114
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/googlenav/R;
    .registers 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/googlenav/R;->c:Ljava/lang/String;

    .line 108
    return-object p0
.end method

.method public b(Z)Lcom/google/googlenav/R;
    .registers 3
    .parameter

    .prologue
    .line 155
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/R;->k:Ljava/lang/Boolean;

    .line 156
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/googlenav/R;
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/googlenav/R;->e:Ljava/lang/String;

    .line 120
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/googlenav/R;
    .registers 2
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/googlenav/R;->g:Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/google/googlenav/R;
    .registers 2
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/googlenav/R;->h:Ljava/lang/String;

    .line 138
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/google/googlenav/R;
    .registers 2
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/googlenav/R;->i:Ljava/lang/String;

    .line 144
    return-object p0
.end method
