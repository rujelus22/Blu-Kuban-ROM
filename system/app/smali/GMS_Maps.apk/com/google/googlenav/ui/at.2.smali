.class public Lcom/google/googlenav/ui/aT;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 163
    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_1a

    .line 165
    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 166
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 167
    new-instance v0, Lat/B;

    div-int/lit8 v1, v1, 0xa

    div-int/lit8 v2, v2, 0xa

    invoke-direct {v0, v1, v2}, Lat/B;-><init>(II)V

    .line 169
    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;B)Lcom/google/googlenav/ai;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x4

    .line 138
    new-instance v0, Lcom/google/googlenav/ai;

    invoke-static {p0}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v5, v3}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v5, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ai;-><init>(Lat/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    .line 145
    const/16 v1, 0xb

    invoke-static {p0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->o(Ljava/lang/String;)V

    .line 148
    const/16 v1, 0xa

    invoke-static {p0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->d(Ljava/lang/String;)V

    .line 151
    invoke-static {p0}, Lcom/google/googlenav/ui/aT;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/B;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_36

    .line 153
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->a(Ln/B;)V

    .line 156
    :cond_36
    return-object v0
.end method

.method public static a(Lat/B;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter

    .prologue
    .line 218
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbq/G;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 219
    const/4 v1, 0x1

    invoke-virtual {p0}, Lat/B;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 220
    const/4 v1, 0x2

    invoke-virtual {p0}, Lat/B;->f()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 221
    return-object v0
.end method

.method public static a(Lat/B;[Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 202
    if-nez p0, :cond_4

    .line 203
    const/4 v0, 0x0

    .line 211
    :goto_3
    return-object v0

    .line 205
    :cond_4
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbq/G;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 206
    invoke-static {p0}, Lcom/google/googlenav/ui/aT;->a(Lat/B;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 207
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 209
    invoke-static {v0, p1}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;[Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static a(Lcom/google/googlenav/ai;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 9
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 311
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v0

    .line 312
    new-array v1, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 315
    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aT;->a(Lat/B;[Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 317
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2a

    .line 318
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->W()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 320
    :cond_2a
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 321
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 323
    :cond_3c
    invoke-static {p0}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_47

    .line 325
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 327
    :cond_47
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->b()Ljava/util/List;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_77

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_77

    .line 330
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/B;

    .line 332
    const/16 v2, 0x16

    invoke-virtual {v0}, Ln/B;->a()Ln/p;

    move-result-object v3

    invoke-virtual {v3}, Ln/p;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 333
    invoke-virtual {v0}, Ln/B;->b()I

    move-result v2

    const/high16 v3, -0x8000

    if-eq v2, v3, :cond_77

    .line 334
    const/16 v2, 0x17

    invoke-virtual {v0}, Ln/B;->b()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 338
    :cond_77
    return-object v1
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 288
    if-nez p1, :cond_9

    .line 289
    const/16 v0, 0x299

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 298
    :goto_8
    return-object v0

    .line 292
    :cond_9
    invoke-static {p0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 293
    const/16 v0, 0x3a3

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object p0

    .line 298
    :cond_15
    const/16 v0, 0x3a4

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/Vector;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 119
    invoke-static {p0, v2, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v0

    .line 120
    if-nez v0, :cond_16

    .line 121
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 122
    const/16 v0, 0x7e

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_16
    :goto_16
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 129
    sget-object v1, Lcom/google/googlenav/ui/aV;->aw:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 131
    :cond_25
    return-void

    .line 124
    :cond_26
    invoke-static {v2, v1, p0}, Lcom/google/googlenav/d;->a(IILcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;[Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 231
    if-nez p1, :cond_6

    .line 241
    :cond_5
    :goto_5
    return-void

    .line 235
    :cond_6
    array-length v0, p1

    if-lez v0, :cond_16

    aget-object v0, p1, v2

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 236
    aget-object v0, p1, v2

    invoke-virtual {p0, v3, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->insertString(IILjava/lang/String;)V

    .line 238
    :cond_16
    array-length v0, p1

    if-le v0, v1, :cond_5

    aget-object v0, p1, v1

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 239
    aget-object v0, p1, v1

    invoke-virtual {p0, v3, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->insertString(IILjava/lang/String;)V

    goto :goto_5
.end method

.method public static a(Ljava/util/List;Ljava/util/Vector;Ljava/util/List;Ljava/lang/String;I)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    .line 73
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1f

    .line 74
    new-instance v0, Lcom/google/googlenav/ui/be;

    invoke-direct {v0}, Lcom/google/googlenav/ui/be;-><init>()V

    .line 75
    sget-object v1, Lcom/google/googlenav/ui/aV;->aw:Lcom/google/googlenav/ui/aV;

    invoke-static {p3, v1}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/be;->a(Lcom/google/googlenav/ui/aW;)Lcom/google/googlenav/ui/be;

    .line 77
    invoke-virtual {v0, p4}, Lcom/google/googlenav/ui/be;->e(I)Lcom/google/googlenav/ui/be;

    .line 78
    invoke-virtual {v0}, Lcom/google/googlenav/ui/be;->a()Lcom/google/googlenav/ui/bd;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 82
    :cond_1f
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    :goto_25
    if-ge v2, v3, :cond_73

    .line 83
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 84
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4, v6}, Ljava/util/Vector;-><init>(I)V

    .line 87
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v1

    .line 88
    if-nez v1, :cond_3d

    .line 89
    invoke-static {v0, v6}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v1

    .line 92
    :cond_3d
    sget-object v5, Lcom/google/googlenav/ui/aV;->au:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v5}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 95
    invoke-static {v0, v4}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/Vector;)V

    .line 98
    new-instance v1, Lcom/google/googlenav/ui/be;

    invoke-direct {v1}, Lcom/google/googlenav/ui/be;-><init>()V

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/be;->a(Ljava/util/List;)Lcom/google/googlenav/ui/be;

    move-result-object v4

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/google/googlenav/ui/be;->e(I)Lcom/google/googlenav/ui/be;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/be;->h(I)Lcom/google/googlenav/ui/be;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/be;->a(Ljava/lang/Object;)Lcom/google/googlenav/ui/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/be;->a()Lcom/google/googlenav/ui/bd;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 82
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_25

    .line 105
    :cond_73
    return-void
.end method

.method public static a(Lat/B;Lat/B;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 275
    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Lat/B;->a(Lat/B;)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/B;
    .registers 5
    .parameter

    .prologue
    const/16 v3, 0x16

    .line 177
    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 180
    const/16 v1, 0x17

    const/high16 v2, -0x8000

    invoke-static {p0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v1

    .line 183
    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ln/p;->b(Ljava/lang/String;)Ln/p;

    move-result-object v2

    .line 184
    if-eqz v2, :cond_20

    .line 185
    new-instance v0, Ln/B;

    invoke-direct {v0, v2, v1}, Ln/B;-><init>(Ln/p;I)V

    .line 189
    :cond_20
    return-object v0
.end method
