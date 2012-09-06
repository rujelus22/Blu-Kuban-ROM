.class public Lat/C;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)I
    .registers 3
    .parameter

    .prologue
    const v1, 0x15752a00

    .line 227
    const v0, 0xaba9500

    if-le p0, v0, :cond_a

    .line 228
    sub-int/2addr p0, v1

    .line 233
    :cond_9
    :goto_9
    return p0

    .line 230
    :cond_a
    const v0, -0xaba9500

    if-ge p0, v0, :cond_9

    .line 231
    add-int/2addr p0, v1

    goto :goto_9
.end method

.method public static a(II)I
    .registers 5
    .parameter
    .parameter

    .prologue
    const v2, 0xaba9500

    .line 208
    add-int v0, p0, p1

    div-int/lit8 v0, v0, 0x2

    .line 212
    sub-int v1, p1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v2, :cond_10

    .line 213
    add-int/2addr v0, v2

    .line 217
    :cond_10
    invoke-static {v0}, Lat/C;->a(I)I

    move-result v0

    return v0
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;
    .registers 4
    .parameter

    .prologue
    .line 34
    new-instance v0, Lat/B;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lat/B;-><init>(II)V

    return-object v0
.end method

.method public static a(Lat/B;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5
    .parameter

    .prologue
    .line 129
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 130
    const/16 v1, 0x16

    invoke-static {v1}, Lat/Y;->b(I)Lat/Y;

    move-result-object v1

    .line 131
    const/4 v2, 0x1

    invoke-virtual {p0, v1}, Lat/B;->a(Lat/Y;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 132
    const/4 v2, 0x2

    invoke-virtual {p0, v1}, Lat/B;->b(Lat/Y;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 133
    const/4 v2, 0x3

    invoke-virtual {v1}, Lat/Y;->a()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 134
    return-object v0
.end method

.method public static a(Lat/B;III)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/do;->g:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 186
    const/4 v1, 0x1

    invoke-static {p0}, Lat/C;->b(Lat/B;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 187
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 188
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 189
    if-lez p3, :cond_1d

    .line 190
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 192
    :cond_1d
    return-object v0
.end method

.method public static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;
    .registers 4
    .parameter

    .prologue
    .line 43
    new-instance v0, Lat/B;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lat/B;-><init>(II)V

    return-object v0
.end method

.method public static b(Lat/B;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter

    .prologue
    .line 144
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 145
    const/4 v1, 0x1

    invoke-virtual {p0}, Lat/B;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 146
    const/4 v1, 0x2

    invoke-virtual {p0}, Lat/B;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 147
    return-object v0
.end method

.method public static c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 53
    if-nez p0, :cond_4

    .line 70
    :goto_3
    return-object v0

    .line 57
    :cond_4
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v1

    .line 58
    packed-switch v1, :pswitch_data_2e

    :pswitch_c
    goto :goto_3

    .line 64
    :pswitch_d
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lat/C;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v0

    goto :goto_3

    .line 60
    :pswitch_17
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lat/C;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v0

    goto :goto_3

    .line 67
    :pswitch_22
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lat/C;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v0

    goto :goto_3

    .line 58
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_22
        :pswitch_17
    .end packed-switch
.end method

.method public static c(Lat/B;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter

    .prologue
    .line 154
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/do;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 156
    const/4 v1, 0x1

    invoke-virtual {p0}, Lat/B;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 157
    const/4 v1, 0x2

    invoke-virtual {p0}, Lat/B;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 158
    return-object v0
.end method

.method public static d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/Y;
    .registers 3
    .parameter

    .prologue
    .line 80
    if-eqz p0, :cond_a

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    .line 83
    :cond_a
    const/4 v0, 0x0

    invoke-static {v0}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    .line 87
    :goto_f
    return-object v0

    .line 86
    :cond_10
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 87
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    invoke-static {v0}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    goto :goto_f
.end method

.method public static d(Lat/B;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter

    .prologue
    .line 166
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/do;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 167
    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 169
    const/16 v1, 0xe

    invoke-static {p0}, Lat/C;->c(Lat/B;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 171
    return-object v0
.end method

.method public static e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;
    .registers 4
    .parameter

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lat/B;->a(III)Lat/B;

    move-result-object v0

    return-object v0
.end method
