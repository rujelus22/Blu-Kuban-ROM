.class LaM/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/g;


# instance fields
.field final synthetic a:LaM/m;

.field private final b:Lcom/google/googlenav/ai;


# direct methods
.method private constructor <init>(LaM/m;Lcom/google/googlenav/ai;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2113
    iput-object p1, p0, LaM/v;->a:LaM/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2114
    iput-object p2, p0, LaM/v;->b:Lcom/google/googlenav/ai;

    .line 2115
    return-void
.end method

.method synthetic constructor <init>(LaM/m;Lcom/google/googlenav/ai;LaM/n;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2110
    invoke-direct {p0, p1, p2}, LaM/v;-><init>(LaM/m;Lcom/google/googlenav/ai;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x9e

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2119
    if-nez p2, :cond_7

    .line 2160
    :cond_6
    :goto_6
    return-void

    .line 2124
    :cond_7
    invoke-virtual {p2, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    move v2, v0

    .line 2125
    :goto_c
    if-ge v2, v3, :cond_3e

    .line 2126
    invoke-virtual {p2, v7, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 2127
    invoke-virtual {v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v5

    .line 2128
    iget-object v6, p0, LaM/v;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v6, v5}, Lcom/google/googlenav/ai;->i(I)Lcom/google/googlenav/au;

    move-result-object v6

    if-nez v6, :cond_3b

    .line 2129
    iget-object v0, p0, LaM/v;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ai;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 2137
    const/16 v0, 0x4c

    if-ne v5, v0, :cond_3a

    .line 2138
    iget-object v0, p0, LaM/v;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->cc()LaS/o;

    move-result-object v0

    invoke-static {v4}, Lcom/google/googlenav/au;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/au;

    move-result-object v4

    sget-object v5, Lbm/bm;->e:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {v4, v5}, Lcom/google/googlenav/au;->a(Lcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-virtual {v0, v4}, LaS/o;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    :cond_3a
    move v0, v1

    .line 2125
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2145
    :cond_3e
    iget-object v1, p0, LaM/v;->b:Lcom/google/googlenav/ai;

    sget-object v2, Lcom/google/googlenav/av;->c:Lcom/google/googlenav/av;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/av;)V

    .line 2146
    iget-object v1, p0, LaM/v;->a:LaM/m;

    iget-object v2, p0, LaM/v;->b:Lcom/google/googlenav/ai;

    invoke-static {v1, v2}, LaM/m;->b(LaM/m;Lcom/google/googlenav/ai;)V

    .line 2149
    if-eqz v0, :cond_6

    .line 2155
    iget-object v0, p0, LaM/v;->a:LaM/m;

    iget-object v0, v0, LaM/m;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 2156
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->f()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, LaM/v;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->f()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2158
    iget-object v0, p0, LaM/v;->a:LaM/m;

    invoke-virtual {v0}, LaM/m;->bo()V

    goto :goto_6
.end method
