.class public LaI/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static a:I


# instance fields
.field private b:LaI/s;

.field private c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/16 v0, 0x14

    sput v0, LaI/z;->a:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    const-string v0, ""

    invoke-static {v0}, LaI/s;->a(Ljava/lang/String;)LaI/s;

    move-result-object v0

    invoke-direct {p0, v0}, LaI/z;-><init>(LaI/s;)V

    .line 38
    return-void
.end method

.method public constructor <init>(LaI/s;)V
    .registers 3
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LaI/z;-><init>(LaI/s;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(LaI/s;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget v0, LaI/z;->a:I

    if-le p2, v0, :cond_9

    .line 57
    sget p2, LaI/z;->a:I

    .line 59
    :cond_9
    iput-object p1, p0, LaI/z;->b:LaI/s;

    .line 60
    if-nez p2, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_12
    iput-object v0, p0, LaI/z;->c:Ljava/util/ArrayList;

    .line 62
    return-void

    .line 60
    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_12
.end method

.method private a(Lcom/google/common/base/Q;)Ljava/util/ArrayList;
    .registers 4
    .parameter

    .prologue
    .line 196
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LaI/z;->c:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/google/common/collect/R;->a(Ljava/util/Collection;Lcom/google/common/base/Q;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public a(I)LaI/w;
    .registers 3
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, LaI/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaI/w;

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, LaI/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 201
    return-void
.end method

.method public a(LaI/s;)V
    .registers 2
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, LaI/z;->b:LaI/s;

    .line 209
    return-void
.end method

.method public a(LaI/w;)V
    .registers 4
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, LaI/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, LaI/z;->a:I

    if-lt v0, v1, :cond_b

    .line 80
    :goto_a
    return-void

    .line 79
    :cond_b
    iget-object v0, p0, LaI/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a
.end method

.method public a(LaI/z;)V
    .registers 4
    .parameter

    .prologue
    .line 124
    iget-object v0, p1, LaI/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaI/w;

    .line 125
    invoke-virtual {p0, v0}, LaI/z;->b(LaI/w;)V

    goto :goto_6

    .line 127
    :cond_16
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .registers 3
    .parameter

    .prologue
    .line 151
    new-instance v0, LaI/B;

    invoke-direct {v0, p0, p1}, LaI/B;-><init>(LaI/z;Ljava/util/Set;)V

    invoke-direct {p0, v0}, LaI/z;->a(Lcom/google/common/base/Q;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaI/z;->c:Ljava/util/ArrayList;

    .line 157
    return-void
.end method

.method public b()LaI/s;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, LaI/z;->b:LaI/s;

    return-object v0
.end method

.method public b(I)V
    .registers 3
    .parameter

    .prologue
    .line 136
    new-instance v0, LaI/A;

    invoke-direct {v0, p0, p1}, LaI/A;-><init>(LaI/z;I)V

    invoke-direct {p0, v0}, LaI/z;->a(Lcom/google/common/base/Q;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaI/z;->c:Ljava/util/ArrayList;

    .line 142
    return-void
.end method

.method public b(LaI/w;)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 90
    move v1, v0

    move v2, v0

    .line 92
    :goto_3
    iget-object v0, p0, LaI/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_42

    .line 93
    iget-object v0, p0, LaI/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaI/w;

    .line 94
    if-nez v1, :cond_2c

    invoke-virtual {p1}, LaI/w;->f()I

    move-result v3

    invoke-virtual {v0}, LaI/w;->f()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 95
    iget-object v0, p0, LaI/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 96
    const/4 v1, 0x1

    .line 97
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    move v1, v2

    :goto_29
    move v2, v1

    move v1, v0

    .line 109
    goto :goto_3

    .line 98
    :cond_2c
    invoke-virtual {p1, v0}, LaI/w;->a(LaI/w;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 102
    if-nez v1, :cond_35

    .line 116
    :cond_34
    return-void

    .line 105
    :cond_35
    iget-object v0, p0, LaI/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    move v1, v2

    goto :goto_29

    .line 107
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    move v1, v2

    goto :goto_29

    .line 110
    :cond_42
    if-nez v1, :cond_47

    .line 111
    invoke-virtual {p0, p1}, LaI/z;->a(LaI/w;)V

    .line 113
    :cond_47
    :goto_47
    iget-object v0, p0, LaI/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, LaI/z;->a:I

    if-le v0, v1, :cond_34

    .line 114
    iget-object v0, p0, LaI/z;->c:Ljava/util/ArrayList;

    iget-object v1, p0, LaI/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_47
.end method

.method public c()LaI/z;
    .registers 4

    .prologue
    .line 214
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaI/z;

    .line 216
    iget-object v1, p0, LaI/z;->b:LaI/s;

    iput-object v1, v0, LaI/z;->b:LaI/s;

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, LaI/z;->c:Ljava/util/ArrayList;

    .line 219
    iget-object v1, v0, LaI/z;->c:Ljava/util/ArrayList;

    iget-object v2, p0, LaI/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_18
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_18} :catch_19

    .line 221
    return-object v0

    .line 222
    :catch_19
    move-exception v0

    .line 223
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Superclass does not support clone"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public c(I)V
    .registers 3
    .parameter

    .prologue
    .line 165
    new-instance v0, LaI/C;

    invoke-direct {v0, p0, p1}, LaI/C;-><init>(LaI/z;I)V

    invoke-direct {p0, v0}, LaI/z;->a(Lcom/google/common/base/Q;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaI/z;->c:Ljava/util/ArrayList;

    .line 171
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 19
    invoke-virtual {p0}, LaI/z;->c()LaI/z;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, LaI/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5

    .prologue
    .line 240
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/gV;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 241
    iget-object v0, p0, LaI/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaI/w;

    .line 242
    const/4 v3, 0x2

    invoke-virtual {v0}, LaI/w;->l()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_d

    .line 245
    :cond_22
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 265
    instance-of v0, p1, LaI/z;

    if-nez v0, :cond_6

    .line 266
    const/4 v0, 0x0

    .line 271
    :goto_5
    return v0

    .line 269
    :cond_6
    check-cast p1, LaI/z;

    .line 271
    iget-object v0, p0, LaI/z;->c:Ljava/util/ArrayList;

    iget-object v1, p1, LaI/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, LaI/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    iget-object v0, p0, LaI/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaI/w;

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, LaI/w;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 255
    :cond_37
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
