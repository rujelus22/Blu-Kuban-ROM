.class public Lcom/google/googlenav/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/util/List;

.field final c:Lcom/google/googlenav/ar;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter

    .prologue
    .line 4166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4168
    invoke-direct {p0, p1}, Lcom/google/googlenav/ao;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ao;->a:Ljava/lang/String;

    .line 4169
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ao;->b:Ljava/util/List;

    .line 4170
    invoke-direct {p0, p1}, Lcom/google/googlenav/ao;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 4171
    invoke-direct {p0, p1}, Lcom/google/googlenav/ao;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ao;->c:Lcom/google/googlenav/ar;

    .line 4172
    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x2

    .line 4194
    invoke-virtual {p1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 4195
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_48

    .line 4196
    invoke-virtual {p1, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 4198
    invoke-virtual {v0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 4199
    if-nez v3, :cond_17

    .line 4195
    :cond_13
    :goto_13
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 4203
    :cond_17
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4205
    new-instance v4, Lcom/google/googlenav/ar;

    invoke-direct {v4, v3}, Lcom/google/googlenav/ar;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 4206
    invoke-virtual {v4}, Lcom/google/googlenav/ar;->d()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 4207
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 4208
    invoke-static {v4}, Lcom/google/googlenav/ar;->a(Lcom/google/googlenav/ar;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ai;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4211
    :cond_35
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 4212
    invoke-static {v0}, Lcom/google/googlenav/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4213
    invoke-virtual {v4, v0}, Lcom/google/googlenav/ar;->a(Ljava/lang/String;)V

    .line 4214
    iget-object v0, p0, Lcom/google/googlenav/ao;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 4218
    :cond_48
    return-void
.end method

.method private b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 4221
    invoke-static {p1, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 4223
    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ar;
    .registers 4
    .parameter

    .prologue
    .line 4229
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 4230
    if-nez v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Lcom/google/googlenav/ar;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ar;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_8
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4182
    iget-object v0, p0, Lcom/google/googlenav/ao;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .registers 2

    .prologue
    .line 4186
    iget-object v0, p0, Lcom/google/googlenav/ao;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()Lcom/google/googlenav/ar;
    .registers 2

    .prologue
    .line 4190
    iget-object v0, p0, Lcom/google/googlenav/ao;->c:Lcom/google/googlenav/ar;

    return-object v0
.end method
