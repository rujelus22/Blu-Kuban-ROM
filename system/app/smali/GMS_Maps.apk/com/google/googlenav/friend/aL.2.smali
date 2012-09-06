.class public Lcom/google/googlenav/friend/aL;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/util/Vector;

.field private final c:Lcom/google/googlenav/friend/aC;


# direct methods
.method private constructor <init>(ILjava/util/Vector;Lcom/google/googlenav/friend/aC;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 56
    iput p1, p0, Lcom/google/googlenav/friend/aL;->a:I

    .line 57
    iput-object p2, p0, Lcom/google/googlenav/friend/aL;->b:Ljava/util/Vector;

    .line 58
    iput-object p3, p0, Lcom/google/googlenav/friend/aL;->c:Lcom/google/googlenav/friend/aC;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Lcom/google/googlenav/friend/aC;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/googlenav/friend/aL;-><init>(ILjava/util/Vector;Lcom/google/googlenav/friend/aC;)V

    .line 50
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 63
    const/16 v0, 0x30

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 15
    .parameter

    .prologue
    .line 68
    new-instance v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/bJ;->H:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 71
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->e(I)I

    move-result v4

    .line 73
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->d(I)I

    move-result v5

    .line 75
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->e(I)I

    .line 77
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->d(I)I

    .line 79
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->e(I)I

    move-result v6

    .line 81
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->d(I)I

    move-result v7

    .line 83
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->e(I)I

    move-result v8

    .line 85
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->d(I)I

    move-result v9

    .line 88
    const/4 v1, 0x0

    iget v0, p0, Lcom/google/googlenav/friend/aL;->a:I

    move v2, v1

    move v1, v0

    .line 89
    :goto_52
    const/4 v0, 0x5

    if-ge v2, v0, :cond_bf

    iget-object v0, p0, Lcom/google/googlenav/friend/aL;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_bf

    .line 94
    iget-object v0, p0, Lcom/google/googlenav/friend/aL;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lah/n;

    .line 95
    invoke-virtual {v0}, Lah/n;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 97
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v12, Lcom/google/wireless/googlenav/proto/j2me/bJ;->G:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v12}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 99
    const/4 v12, 0x1

    invoke-virtual {v0, v12, v10, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 100
    const/4 v12, 0x2

    invoke-virtual {v0, v12, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 101
    const/4 v12, 0x3

    invoke-virtual {v0, v12, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 102
    const/4 v12, 0x1

    invoke-virtual {v3, v12, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 105
    invoke-static {}, Lcom/google/googlenav/ui/bn;->O()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 90
    :goto_8a
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_52

    .line 110
    :cond_90
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v12, Lcom/google/wireless/googlenav/proto/j2me/bJ;->G:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v12}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 112
    const/4 v12, 0x1

    invoke-virtual {v0, v12, v10, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 113
    const/4 v12, 0x2

    invoke-virtual {v0, v12, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 114
    const/4 v12, 0x3

    invoke-virtual {v0, v12, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 115
    const/4 v12, 0x1

    invoke-virtual {v3, v12, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 118
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v12, Lcom/google/wireless/googlenav/proto/j2me/bJ;->G:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v12}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 120
    const/4 v12, 0x1

    invoke-virtual {v0, v12, v10, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 121
    const/4 v10, 0x2

    invoke-virtual {v0, v10, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 122
    const/4 v10, 0x3

    invoke-virtual {v0, v10, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 123
    const/4 v10, 0x1

    invoke-virtual {v3, v10, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_8a

    .line 126
    :cond_bf
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v3, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 127
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 132
    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/bJ;->I:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v1, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 134
    invoke-static {v6, v2, v5}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v1

    .line 138
    const/4 v4, 0x2

    invoke-virtual {v6, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 140
    invoke-static {v4, v2, v5}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v4

    .line 143
    packed-switch v1, :pswitch_data_76

    .line 180
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0, v4}, Las/f;->a(I)V

    .line 182
    :cond_21
    :goto_21
    return v2

    .line 145
    :pswitch_22
    invoke-virtual {v6, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v7

    .line 148
    invoke-static {}, Lcom/google/googlenav/ui/bn;->O()Z

    move-result v1

    if-eqz v1, :cond_4e

    move v1, v2

    .line 154
    :goto_2d
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    move v4, v0

    move v5, v0

    .line 155
    :goto_34
    if-ge v5, v7, :cond_50

    .line 159
    iget-object v0, p0, Lcom/google/googlenav/friend/aL;->b:Ljava/util/Vector;

    iget v9, p0, Lcom/google/googlenav/friend/aL;->a:I

    add-int/2addr v9, v4

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lah/n;

    .line 160
    const/4 v9, 0x4

    invoke-static {v0, v5, v6, v3, v9}, Lah/m;->a(Lah/n;ILcom/google/googlenav/common/io/protocol/ProtoBuf;II)Lah/m;

    move-result-object v0

    .line 163
    invoke-virtual {v8, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 156
    add-int/2addr v5, v1

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_34

    :cond_4e
    move v1, v3

    .line 151
    goto :goto_2d

    .line 167
    :cond_50
    iget-object v0, p0, Lcom/google/googlenav/friend/aL;->c:Lcom/google/googlenav/friend/aC;

    invoke-interface {v0, v8}, Lcom/google/googlenav/friend/aC;->a(Ljava/util/Vector;)V

    .line 170
    iget v0, p0, Lcom/google/googlenav/friend/aL;->a:I

    add-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lcom/google/googlenav/friend/aL;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 171
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/friend/aL;

    iget v3, p0, Lcom/google/googlenav/friend/aL;->a:I

    add-int/lit8 v3, v3, 0x5

    iget-object v4, p0, Lcom/google/googlenav/friend/aL;->b:Ljava/util/Vector;

    iget-object v5, p0, Lcom/google/googlenav/friend/aL;->c:Lcom/google/googlenav/friend/aC;

    invoke-direct {v1, v3, v4, v5}, Lcom/google/googlenav/friend/aL;-><init>(ILjava/util/Vector;Lcom/google/googlenav/friend/aC;)V

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    goto :goto_21

    .line 143
    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_22
    .end packed-switch
.end method
