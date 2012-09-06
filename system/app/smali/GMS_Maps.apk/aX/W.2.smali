.class public Lax/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lax/K;
.implements Lax/U;


# instance fields
.field private a:Lax/R;

.field private b:Lax/J;

.field private c:Ljava/util/Vector;

.field private d:Lax/V;

.field private e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method constructor <init>(Lax/R;)V
    .registers 3
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lax/W;->c:Ljava/util/Vector;

    .line 53
    iput-object p1, p0, Lax/W;->a:Lax/R;

    .line 54
    return-void
.end method

.method private a(ILax/I;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sa="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lax/I;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    const/16 v1, 0x7b

    const-string v2, "y"

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method static synthetic a(Lax/W;)V
    .registers 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lax/W;->b()V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2
    .parameter

    .prologue
    .line 36
    invoke-static {p0}, Lax/W;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lax/W;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_c

    .line 143
    iget-object v0, p0, Lax/W;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lax/W;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lax/W;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 146
    :cond_c
    return-void
.end method

.method private c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lax/W;->b:Lax/J;

    if-eqz v0, :cond_9

    .line 159
    iget-object v0, p0, Lax/W;->b:Lax/J;

    invoke-virtual {v0}, Lax/J;->Z()V

    .line 161
    :cond_9
    new-instance v0, Lax/J;

    invoke-direct {v0, p1}, Lax/J;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    iput-object v0, p0, Lax/W;->b:Lax/J;

    .line 162
    iget-object v0, p0, Lax/W;->b:Lax/J;

    invoke-virtual {v0, p0}, Lax/J;->a(Lax/K;)V

    .line 163
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    iget-object v1, p0, Lax/W;->b:Lax/J;

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 164
    iget-object v0, p0, Lax/W;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/V;

    .line 165
    iget-object v2, p0, Lax/W;->b:Lax/J;

    invoke-interface {v0, v2}, Lax/V;->a(Lax/J;)V

    goto :goto_24

    .line 167
    :cond_36
    iget-object v0, p0, Lax/W;->d:Lax/V;

    if-eqz v0, :cond_41

    .line 168
    iget-object v0, p0, Lax/W;->d:Lax/V;

    iget-object v1, p0, Lax/W;->b:Lax/J;

    invoke-interface {v0, v1}, Lax/V;->a(Lax/J;)V

    .line 170
    :cond_41
    return-void
.end method

.method private static d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 12
    .parameter

    .prologue
    const/4 v10, 0x4

    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 221
    invoke-virtual {p0, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 222
    invoke-virtual {p0, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 223
    const/4 v3, -0x1

    invoke-static {v2, v8, v3}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v2

    .line 225
    if-eqz v2, :cond_17

    .line 257
    :cond_16
    :goto_16
    return-object v0

    .line 231
    :cond_17
    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    if-ne v2, v8, :cond_16

    .line 234
    invoke-virtual {p0, v8, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 235
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-nez v3, :cond_16

    .line 241
    invoke-virtual {v2, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 242
    :goto_2c
    if-ge v1, v3, :cond_16

    .line 243
    invoke-virtual {v2, v10, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 244
    invoke-virtual {v4, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 245
    invoke-virtual {v4, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 246
    invoke-static {v5, v8}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v6

    .line 248
    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 249
    invoke-virtual {v5, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 252
    invoke-virtual {v4, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto :goto_16

    .line 242
    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c
.end method


# virtual methods
.method public a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;Lax/n;Lax/I;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 183
    invoke-direct {p0, p1, p4}, Lax/W;->a(ILax/I;)V

    .line 185
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/hc;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 189
    const-string v1, "0"

    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 190
    invoke-virtual {v0, v4, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 192
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/hc;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 193
    invoke-virtual {v1, v3, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 194
    invoke-virtual {v1, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 196
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/hc;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 197
    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 198
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 200
    new-instance v1, Lax/J;

    invoke-direct {v1, v0}, Lax/J;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 201
    new-instance v0, Lax/Y;

    invoke-direct {v0, p0, p3}, Lax/Y;-><init>(Lax/W;Lax/n;)V

    invoke-virtual {v1, v0}, Lax/J;->a(Lax/K;)V

    .line 212
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 213
    return-void
.end method

.method public a(Lax/V;)V
    .registers 3
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lax/W;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 79
    iget-object v0, p0, Lax/W;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_d
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lax/W;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/V;

    .line 94
    invoke-interface {v0, p1}, Lax/V;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_6

    .line 96
    :cond_16
    iget-object v0, p0, Lax/W;->d:Lax/V;

    if-eqz v0, :cond_1f

    .line 97
    iget-object v0, p0, Lax/W;->d:Lax/V;

    invoke-interface {v0, p1}, Lax/V;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 99
    :cond_1f
    iget-object v0, p0, Lax/W;->a:Lax/R;

    invoke-interface {v0, p1}, Lax/R;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lax/W;->b:Lax/J;

    .line 101
    iget-object v0, p0, Lax/W;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/V;

    .line 102
    invoke-interface {v0}, Lax/V;->b()V

    goto :goto_2d

    .line 104
    :cond_3d
    iget-object v0, p0, Lax/W;->d:Lax/V;

    if-eqz v0, :cond_46

    .line 105
    iget-object v0, p0, Lax/W;->d:Lax/V;

    invoke-interface {v0}, Lax/V;->b()V

    .line 107
    :cond_46
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILax/I;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-direct {p0, p2, p3}, Lax/W;->a(ILax/I;)V

    .line 125
    sget-object v0, Lcom/google/googlenav/z;->c:Lcom/google/googlenav/z;

    invoke-static {v0}, Lcom/google/googlenav/u;->c(Lcom/google/googlenav/z;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 126
    iput-object p1, p0, Lax/W;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 127
    sget-object v0, Lcom/google/googlenav/z;->c:Lcom/google/googlenav/z;

    new-instance v1, Lax/X;

    invoke-direct {v1, p0}, Lax/X;-><init>(Lax/W;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    .line 136
    :goto_17
    return-void

    .line 134
    :cond_18
    invoke-direct {p0, p1}, Lax/W;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_17
.end method

.method a()Z
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lax/W;->b:Lax/J;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lax/W;->b:Lax/J;

    invoke-virtual {v0}, Lax/J;->k()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public b(Lax/V;)V
    .registers 3
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lax/W;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public g()V
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lax/W;->b:Lax/J;

    if-eqz v0, :cond_c

    .line 175
    iget-object v0, p0, Lax/W;->b:Lax/J;

    invoke-virtual {v0}, Lax/J;->Z()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lax/W;->b:Lax/J;

    .line 178
    :cond_c
    return-void
.end method
