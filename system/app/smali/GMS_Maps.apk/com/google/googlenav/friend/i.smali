.class public Lcom/google/googlenav/friend/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z

.field private static final b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# instance fields
.field private c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21
    const-class v0, Lcom/google/googlenav/friend/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/googlenav/friend/i;->a:Z

    .line 29
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbq/G;->A:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    sput-object v0, Lcom/google/googlenav/friend/i;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-void

    .line 21
    :cond_15
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/friend/i;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 36
    iput-object p1, p0, Lcom/google/googlenav/friend/i;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 37
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/friend/i;->d:J

    .line 50
    return-void
.end method

.method private f()V
    .registers 1

    .prologue
    .line 268
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/google/googlenav/friend/i;->d:J

    return-wide v0
.end method

.method public a(Lcom/google/googlenav/cu;)V
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x4

    .line 192
    iget-object v0, p1, Lcom/google/googlenav/cu;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_e

    .line 193
    iget-object v0, p0, Lcom/google/googlenav/friend/i;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget-object v1, p1, Lcom/google/googlenav/cu;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 197
    :cond_e
    iget-object v0, p1, Lcom/google/googlenav/cu;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_35

    .line 198
    iget-object v0, p0, Lcom/google/googlenav/friend/i;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    move v0, v2

    .line 199
    :goto_19
    if-ge v0, v1, :cond_35

    .line 200
    iget-object v3, p0, Lcom/google/googlenav/friend/i;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 202
    iget-object v4, p1, Lcom/google/googlenav/cu;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v4, v3}, Lcom/google/googlenav/az;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 203
    iget-object v3, p0, Lcom/google/googlenav/friend/i;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->remove(II)V

    .line 204
    add-int/lit8 v0, v0, -0x1

    .line 205
    add-int/lit8 v1, v1, -0x1

    .line 199
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 211
    :cond_35
    iget-object v0, p1, Lcom/google/googlenav/cu;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_40

    .line 212
    iget-object v0, p0, Lcom/google/googlenav/friend/i;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget-object v1, p1, Lcom/google/googlenav/cu;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 216
    :cond_40
    iget-object v0, p1, Lcom/google/googlenav/cu;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_67

    .line 217
    iget-object v0, p0, Lcom/google/googlenav/friend/i;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    move v0, v2

    .line 218
    :goto_4b
    if-ge v0, v1, :cond_67

    .line 219
    iget-object v2, p0, Lcom/google/googlenav/friend/i;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 221
    iget-object v3, p1, Lcom/google/googlenav/cu;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v3, v2}, Lcom/google/googlenav/az;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 222
    iget-object v2, p0, Lcom/google/googlenav/friend/i;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->remove(II)V

    .line 223
    add-int/lit8 v0, v0, -0x1

    .line 224
    add-int/lit8 v1, v1, -0x1

    .line 218
    :cond_64
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 229
    :cond_67
    iget-object v0, p1, Lcom/google/googlenav/cu;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_74

    .line 230
    iget-object v0, p0, Lcom/google/googlenav/friend/i;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/googlenav/cu;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 232
    :cond_74
    return-void
.end method

.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/googlenav/friend/i;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 67
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x0

    .line 111
    iget-object v1, p0, Lcom/google/googlenav/friend/i;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    move v1, v0

    .line 112
    :goto_9
    if-ge v1, v2, :cond_18

    .line 113
    iget-object v3, p0, Lcom/google/googlenav/friend/i;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 115
    invoke-static {v3, p1}, Lcom/google/googlenav/az;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 116
    const/4 v0, 0x1

    .line 119
    :cond_18
    return v0

    .line 112
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method public b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/googlenav/friend/i;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 100
    invoke-direct {p0}, Lcom/google/googlenav/friend/i;->f()V

    .line 101
    return-void
.end method

.method public b()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 60
    iget-object v0, p0, Lcom/google/googlenav/friend/i;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/friend/i;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    sget-object v0, Lcom/google/googlenav/friend/i;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    goto :goto_f
.end method

.method public b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x0

    .line 145
    iget-object v1, p0, Lcom/google/googlenav/friend/i;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    move v1, v0

    .line 146
    :goto_9
    if-ge v1, v2, :cond_18

    .line 147
    iget-object v3, p0, Lcom/google/googlenav/friend/i;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 149
    invoke-static {v3, p1}, Lcom/google/googlenav/az;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 150
    const/4 v0, 0x1

    .line 153
    :cond_18
    return v0

    .line 146
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method public c()Z
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 86
    iget-object v0, p0, Lcom/google/googlenav/friend/i;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 87
    iget-object v0, p0, Lcom/google/googlenav/friend/i;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    .line 92
    :goto_f
    return v0

    :cond_10
    sget-object v0, Lcom/google/googlenav/friend/i;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    goto :goto_f
.end method

.method public d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/googlenav/friend/i;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/googlenav/friend/i;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method
