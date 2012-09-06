.class public Lcom/google/googlenav/ui/wizard/dc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lah/s;

.field private final b:Lcom/google/googlenav/android/Y;

.field private c:Lcom/google/googlenav/ui/wizard/dh;

.field private d:Lcom/google/googlenav/friend/reporting/s;


# direct methods
.method public constructor <init>(Lah/s;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/reporting/s;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dc;->a:Lah/s;

    .line 77
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/dc;->b:Lcom/google/googlenav/android/Y;

    .line 78
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/dc;->d:Lcom/google/googlenav/friend/reporting/s;

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dc;)Lcom/google/googlenav/ui/wizard/dh;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->c:Lcom/google/googlenav/ui/wizard/dh;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dc;Lcom/google/googlenav/friend/ah;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/dc;->e(Lcom/google/googlenav/friend/ah;)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/dc;)Lcom/google/googlenav/android/Y;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->b:Lcom/google/googlenav/android/Y;

    return-object v0
.end method

.method private e(Lcom/google/googlenav/friend/ah;)V
    .registers 5
    .parameter

    .prologue
    .line 257
    invoke-virtual {p1}, Lcom/google/googlenav/friend/ah;->f()Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dc;->a:Lah/s;

    if-eqz v1, :cond_18

    if-eqz v0, :cond_18

    .line 259
    new-instance v1, Lcom/google/googlenav/ui/bx;

    const v2, 0x7f0b00af

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/ui/bx;-><init>(Ljava/lang/String;I)V

    .line 261
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->a:Lah/s;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lah/s;->a(Lcom/google/googlenav/ui/bx;Lah/p;)V

    .line 263
    :cond_18
    return-void
.end method


# virtual methods
.method a(Lcom/google/googlenav/friend/U;)Lcom/google/googlenav/friend/V;
    .registers 3
    .parameter

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/google/googlenav/friend/U;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/V;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/friend/ah;)V
    .registers 4
    .parameter

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/friend/ah;->a(Z)V

    .line 93
    new-instance v0, Lcom/google/googlenav/ui/wizard/dd;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/googlenav/ui/wizard/dd;-><init>(Lcom/google/googlenav/ui/wizard/dc;LY/c;Lcom/google/googlenav/friend/ah;)V

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dd;->g()V

    .line 109
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->c:Lcom/google/googlenav/ui/wizard/dh;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/dh;->a()V

    .line 110
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/dh;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dc;->c:Lcom/google/googlenav/ui/wizard/dh;

    .line 83
    return-void
.end method

.method b(Lcom/google/googlenav/friend/ah;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 122
    new-instance v0, Lcom/google/googlenav/friend/U;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/friend/U;-><init>(Ljava/util/List;Lcom/google/googlenav/friend/aq;Z)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dc;->a(Lcom/google/googlenav/friend/U;)Lcom/google/googlenav/friend/V;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_37

    iget-boolean v1, v0, Lcom/google/googlenav/friend/V;->a:Z

    if-eqz v1, :cond_37

    .line 127
    new-instance v1, Lcom/google/googlenav/friend/W;

    iget-object v0, v0, Lcom/google/googlenav/friend/V;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {v1, v0}, Lcom/google/googlenav/friend/W;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 129
    invoke-virtual {v1, v3}, Lcom/google/googlenav/friend/W;->a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/friend/ah;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 130
    invoke-virtual {v1, v4}, Lcom/google/googlenav/friend/W;->a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/friend/ah;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 131
    invoke-virtual {p1, v3}, Lcom/google/googlenav/friend/ah;->a(Z)V

    .line 136
    :goto_36
    return-void

    .line 135
    :cond_37
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/friend/ah;->a(Z)V

    goto :goto_36
.end method

.method public c(Lcom/google/googlenav/friend/ah;)V
    .registers 4
    .parameter

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/friend/ah;->a(Z)V

    .line 159
    new-instance v0, Lcom/google/googlenav/ui/wizard/df;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/googlenav/ui/wizard/df;-><init>(Lcom/google/googlenav/ui/wizard/dc;LY/c;Lcom/google/googlenav/friend/ah;)V

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/df;->g()V

    .line 166
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->c:Lcom/google/googlenav/ui/wizard/dh;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/dh;->a()V

    .line 167
    return-void
.end method

.method d(Lcom/google/googlenav/friend/ah;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 176
    invoke-virtual {p1}, Lcom/google/googlenav/friend/ah;->i()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 177
    new-instance v0, Lcom/google/googlenav/friend/aR;

    invoke-direct {v0, v2, v2, v1, v6}, Lcom/google/googlenav/friend/aR;-><init>(ZIILcom/google/googlenav/friend/aS;)V

    .line 182
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aR;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/aT;

    .line 184
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aT;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 185
    invoke-static {v2}, Lcom/google/googlenav/friend/au;->a(Z)Z

    .line 186
    invoke-static {}, Lcom/google/googlenav/friend/aJ;->f()V

    .line 190
    :cond_22
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v3, Lbq/G;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 192
    invoke-virtual {p1}, Lcom/google/googlenav/friend/ah;->j()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 195
    const/4 v3, 0x7

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 199
    invoke-virtual {v0, v2, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 203
    invoke-virtual {p1}, Lcom/google/googlenav/friend/ah;->c()Z

    move-result v3

    if-nez v3, :cond_99

    .line 204
    invoke-virtual {v0, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move v1, v2

    .line 216
    :goto_41
    new-instance v3, Lcom/google/googlenav/friend/aO;

    invoke-direct {v3, v0, v6}, Lcom/google/googlenav/friend/aO;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/friend/aP;)V

    .line 219
    invoke-virtual {v3}, Lcom/google/googlenav/friend/aO;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/aQ;

    .line 220
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aQ;->a()Z

    move-result v0

    if-nez v0, :cond_67

    .line 222
    :cond_54
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->b:Lcom/google/googlenav/android/Y;

    new-instance v1, Lcom/google/googlenav/ui/wizard/dg;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/dg;-><init>(Lcom/google/googlenav/ui/wizard/dc;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 253
    :cond_5e
    :goto_5e
    return-void

    .line 209
    :cond_5f
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 213
    invoke-virtual {v0, v5, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_41

    .line 232
    :cond_67
    if-eqz v1, :cond_6e

    .line 235
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->d:Lcom/google/googlenav/friend/reporting/s;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/friend/reporting/s;->a(Z)V

    .line 241
    :cond_6e
    new-instance v0, Lcom/google/googlenav/friend/U;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1, v6, v2}, Lcom/google/googlenav/friend/U;-><init>(Ljava/util/List;Lcom/google/googlenav/friend/aq;Z)V

    .line 244
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dc;->a(Lcom/google/googlenav/friend/U;)Lcom/google/googlenav/friend/V;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_5e

    iget-boolean v1, v0, Lcom/google/googlenav/friend/V;->a:Z

    if-eqz v1, :cond_5e

    .line 246
    new-instance v1, Lcom/google/googlenav/friend/W;

    iget-object v0, v0, Lcom/google/googlenav/friend/V;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {v1, v0}, Lcom/google/googlenav/friend/W;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 248
    new-instance v0, Lcom/google/googlenav/friend/ag;

    invoke-virtual {v1, v7}, Lcom/google/googlenav/friend/W;->a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/friend/ag;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 251
    invoke-static {v0}, Lcom/google/googlenav/friend/aJ;->a(Lcom/google/googlenav/friend/ag;)V

    goto :goto_5e

    :cond_99
    move v1, v2

    goto :goto_41
.end method
