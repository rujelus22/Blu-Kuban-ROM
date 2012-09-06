.class public Lcom/google/googlenav/friend/by;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private a:Z

.field private final b:Lcom/google/googlenav/common/f;

.field private c:Ljava/util/Vector;

.field private d:Ljava/util/Vector;

.field private e:Lcom/google/googlenav/common/f;

.field private f:Lcom/google/googlenav/common/f;

.field private g:Lcom/google/googlenav/common/f;

.field private h:Lcom/google/googlenav/common/f;

.field private i:Lcom/google/googlenav/common/f;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/f;Ljava/util/Vector;Ljava/util/Vector;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/googlenav/friend/by;->b:Lcom/google/googlenav/common/f;

    .line 60
    iput-object p2, p0, Lcom/google/googlenav/friend/by;->c:Ljava/util/Vector;

    .line 61
    iput-object p3, p0, Lcom/google/googlenav/friend/by;->d:Ljava/util/Vector;

    .line 62
    iput-object p4, p0, Lcom/google/googlenav/friend/by;->e:Lcom/google/googlenav/common/f;

    .line 63
    iput-object p5, p0, Lcom/google/googlenav/friend/by;->f:Lcom/google/googlenav/common/f;

    .line 64
    iput-object p6, p0, Lcom/google/googlenav/friend/by;->g:Lcom/google/googlenav/common/f;

    .line 65
    iput-object p7, p0, Lcom/google/googlenav/friend/by;->h:Lcom/google/googlenav/common/f;

    .line 66
    iput-object p8, p0, Lcom/google/googlenav/friend/by;->i:Lcom/google/googlenav/common/f;

    .line 67
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 70
    const/16 v0, 0x2f

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 74
    new-instance v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/bJ;->k:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 78
    iget-object v0, p0, Lcom/google/googlenav/friend/by;->b:Lcom/google/googlenav/common/f;

    if-eqz v0, :cond_22

    .line 79
    iget-object v0, p0, Lcom/google/googlenav/friend/by;->b:Lcom/google/googlenav/common/f;

    invoke-virtual {v0}, Lcom/google/googlenav/common/f;->b()I

    move-result v2

    move v0, v1

    :goto_13
    if-ge v0, v2, :cond_22

    .line 80
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlenav/friend/by;->b:Lcom/google/googlenav/common/f;

    invoke-virtual {v5, v0}, Lcom/google/googlenav/common/f;->a(I)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 86
    :cond_22
    iget-object v0, p0, Lcom/google/googlenav/friend/by;->c:Ljava/util/Vector;

    if-eqz v0, :cond_3f

    .line 87
    iget-object v0, p0, Lcom/google/googlenav/friend/by;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    move v2, v1

    :goto_2d
    if-ge v2, v4, :cond_3f

    .line 88
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/google/googlenav/friend/by;->c:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 87
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2d

    .line 94
    :cond_3f
    iget-object v0, p0, Lcom/google/googlenav/friend/by;->d:Ljava/util/Vector;

    if-eqz v0, :cond_5c

    .line 95
    iget-object v0, p0, Lcom/google/googlenav/friend/by;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    move v2, v1

    :goto_4a
    if-ge v2, v4, :cond_5c

    .line 96
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/google/googlenav/friend/by;->d:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 95
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4a

    .line 102
    :cond_5c
    iget-object v0, p0, Lcom/google/googlenav/friend/by;->e:Lcom/google/googlenav/common/f;

    if-eqz v0, :cond_76

    .line 103
    iget-object v0, p0, Lcom/google/googlenav/friend/by;->e:Lcom/google/googlenav/common/f;

    invoke-virtual {v0}, Lcom/google/googlenav/common/f;->b()I

    move-result v2

    move v0, v1

    :goto_67
    if-ge v0, v2, :cond_76

    .line 104
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/google/googlenav/friend/by;->e:Lcom/google/googlenav/common/f;

    invoke-virtual {v5, v0}, Lcom/google/googlenav/common/f;->a(I)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    .line 110
    :cond_76
    iget-object v0, p0, Lcom/google/googlenav/friend/by;->f:Lcom/google/googlenav/common/f;

    if-eqz v0, :cond_90

    .line 111
    iget-object v0, p0, Lcom/google/googlenav/friend/by;->f:Lcom/google/googlenav/common/f;

    invoke-virtual {v0}, Lcom/google/googlenav/common/f;->b()I

    move-result v2

    move v0, v1

    :goto_81
    if-ge v0, v2, :cond_90

    .line 112
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/googlenav/friend/by;->f:Lcom/google/googlenav/common/f;

    invoke-virtual {v5, v0}, Lcom/google/googlenav/common/f;->a(I)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    .line 118
    :cond_90
    iget-object v0, p0, Lcom/google/googlenav/friend/by;->g:Lcom/google/googlenav/common/f;

    if-eqz v0, :cond_aa

    .line 119
    iget-object v0, p0, Lcom/google/googlenav/friend/by;->g:Lcom/google/googlenav/common/f;

    invoke-virtual {v0}, Lcom/google/googlenav/common/f;->b()I

    move-result v2

    move v0, v1

    :goto_9b
    if-ge v0, v2, :cond_aa

    .line 120
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/googlenav/friend/by;->g:Lcom/google/googlenav/common/f;

    invoke-virtual {v5, v0}, Lcom/google/googlenav/common/f;->a(I)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_9b

    .line 126
    :cond_aa
    iget-object v0, p0, Lcom/google/googlenav/friend/by;->h:Lcom/google/googlenav/common/f;

    if-eqz v0, :cond_c4

    .line 127
    iget-object v0, p0, Lcom/google/googlenav/friend/by;->h:Lcom/google/googlenav/common/f;

    invoke-virtual {v0}, Lcom/google/googlenav/common/f;->b()I

    move-result v2

    move v0, v1

    :goto_b5
    if-ge v0, v2, :cond_c4

    .line 128
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/googlenav/friend/by;->h:Lcom/google/googlenav/common/f;

    invoke-virtual {v5, v0}, Lcom/google/googlenav/common/f;->a(I)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    .line 134
    :cond_c4
    iget-object v0, p0, Lcom/google/googlenav/friend/by;->i:Lcom/google/googlenav/common/f;

    if-eqz v0, :cond_df

    .line 135
    iget-object v0, p0, Lcom/google/googlenav/friend/by;->i:Lcom/google/googlenav/common/f;

    invoke-virtual {v0}, Lcom/google/googlenav/common/f;->b()I

    move-result v2

    move v0, v1

    :goto_cf
    if-ge v0, v2, :cond_df

    .line 136
    const/16 v1, 0x8

    iget-object v4, p0, Lcom/google/googlenav/friend/by;->i:Lcom/google/googlenav/common/f;

    invoke-virtual {v4, v0}, Lcom/google/googlenav/common/f;->a(I)J

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_cf

    .line 142
    :cond_df
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v3, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 143
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 181
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 147
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/bJ;->l:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 149
    invoke-static {v0, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v1

    .line 153
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 155
    invoke-static {v0, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    .line 158
    iput-boolean v5, p0, Lcom/google/googlenav/friend/by;->a:Z

    .line 159
    packed-switch v1, :pswitch_data_2e

    .line 172
    :goto_1b
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Las/f;->a(I)V

    .line 175
    :goto_22
    return v3

    .line 161
    :pswitch_23
    iput-boolean v3, p0, Lcom/google/googlenav/friend/by;->a:Z

    .line 162
    invoke-virtual {p0, v3}, Lcom/google/googlenav/friend/by;->a(Z)V

    goto :goto_22

    .line 166
    :pswitch_29
    invoke-virtual {p0, v5}, Lcom/google/googlenav/friend/by;->a(Z)V

    goto :goto_1b

    .line 159
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_23
        :pswitch_29
    .end packed-switch
.end method
