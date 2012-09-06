.class public Lcom/google/googlenav/ui/wizard/iA;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lad/b;Lcom/google/googlenav/ui/bn;III)LaQ/bB;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 55
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 56
    const-string v2, ""

    .line 59
    invoke-virtual {p0, p2}, Lad/b;->l(I)Lad/h;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_2f

    .line 61
    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/iA;->a(Lad/h;)Ljava/util/Vector;

    move-result-object v4

    move v2, v3

    .line 63
    :goto_13
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_26

    .line 64
    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aW;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    .line 63
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    .line 66
    :cond_26
    invoke-static {p0, p1, p2, v3}, Lcom/google/googlenav/ui/wizard/iA;->a(Lad/b;Lcom/google/googlenav/ui/bn;IZ)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 71
    :cond_2f
    invoke-virtual {p0, p2}, Lad/b;->p(I)Ljava/lang/String;

    move-result-object v3

    .line 72
    const/4 v0, 0x0

    .line 73
    invoke-static {v3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 74
    sget-object v0, Lcom/google/googlenav/ui/aV;->M:Lcom/google/googlenav/ui/aV;

    invoke-static {v3, v0}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    move-object v3, v0

    .line 77
    :goto_41
    new-instance v0, LaQ/bB;

    invoke-static {v3}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v3

    move v4, p4

    move v5, p3

    move v6, p2

    invoke-direct/range {v0 .. v6}, LaQ/bB;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;III)V

    return-object v0

    :cond_4e
    move-object v3, v0

    goto :goto_41
.end method

.method private static a(Lad/t;)Lad/t;
    .registers 4
    .parameter

    .prologue
    .line 246
    new-instance v0, Lad/t;

    invoke-direct {v0}, Lad/t;-><init>()V

    .line 247
    invoke-virtual {p0}, Lad/t;->C()I

    move-result v1

    invoke-virtual {v0, v1}, Lad/t;->d(I)V

    .line 248
    invoke-virtual {p0}, Lad/t;->w()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lad/t;->a(J)V

    .line 249
    invoke-virtual {p0}, Lad/t;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Lad/t;->a(I)V

    .line 250
    invoke-virtual {p0}, Lad/t;->v()I

    move-result v1

    invoke-virtual {v0, v1}, Lad/t;->b(I)V

    .line 251
    return-object v0
.end method

.method public static a(Lad/b;Lcom/google/googlenav/ui/bn;IZ)Ljava/lang/String;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    invoke-virtual {p0, p2}, Lad/b;->l(I)Lad/h;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/iA;->c(Lad/h;)Ljava/util/Vector;

    move-result-object v4

    .line 170
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    move v2, v0

    move v1, v0

    .line 172
    :goto_14
    if-ge v2, v5, :cond_35

    .line 173
    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/t;

    .line 175
    invoke-static {v4, v2}, Lcom/google/googlenav/ui/wizard/iA;->a(Ljava/util/Vector;I)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 176
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_2b

    .line 177
    invoke-static {v3, p3}, Lcom/google/googlenav/ui/wizard/iA;->a(Ljava/lang/StringBuilder;Z)V

    .line 179
    :cond_2b
    invoke-static {v3, p1, v0, p3}, Lcom/google/googlenav/ui/wizard/iA;->a(Ljava/lang/StringBuilder;Lcom/google/googlenav/ui/bn;Lad/t;Z)Z

    move-result v0

    or-int/2addr v0, v1

    .line 172
    :goto_30
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_14

    .line 183
    :cond_35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_59

    if-lez v5, :cond_59

    .line 187
    invoke-virtual {v4}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/t;

    .line 188
    invoke-virtual {v0}, Lad/t;->C()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_59

    invoke-virtual {v0}, Lad/t;->w()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_59

    .line 189
    invoke-static {v3, p1, v0, p3}, Lcom/google/googlenav/ui/wizard/iA;->a(Ljava/lang/StringBuilder;Lcom/google/googlenav/ui/bn;Lad/t;Z)Z

    move-result v0

    or-int/2addr v1, v0

    .line 194
    :cond_59
    sget-boolean v0, Lcom/google/googlenav/android/E;->f:Z

    if-eqz v0, :cond_6a

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6a

    if-nez v1, :cond_6a

    .line 196
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_6a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6f
    move v0, v1

    goto :goto_30
.end method

.method private static a(Lad/h;)Ljava/util/Vector;
    .registers 5
    .parameter

    .prologue
    .line 89
    invoke-static {p0}, Lcom/google/googlenav/ui/wizard/iA;->b(Lad/h;)Ljava/util/Vector;

    move-result-object v1

    .line 90
    invoke-virtual {p0}, Lad/h;->y()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v2, Lcom/google/googlenav/ui/bn;->A:C

    invoke-static {v2}, Lcom/google/googlenav/ui/bn;->a(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/aV;->M:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    .line 93
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 95
    :cond_2d
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    .line 97
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aW;

    .line 98
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, v0, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    invoke-static {v3, v0}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_50
    return-object v1
.end method

.method private static a(Ljava/lang/StringBuilder;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 293
    if-eqz p1, :cond_c

    sget-char v0, Lcom/google/googlenav/ui/bn;->h:C

    :goto_4
    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    return-void

    .line 293
    :cond_c
    sget-char v0, Lcom/google/googlenav/ui/bn;->g:C

    goto :goto_4
.end method

.method private static a(Ljava/lang/StringBuilder;Lcom/google/googlenav/ui/bn;Lad/t;Z)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 306
    invoke-virtual {p2}, Lad/t;->C()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    .line 307
    if-eqz p3, :cond_26

    sget-char v0, Lcom/google/googlenav/ui/bn;->bl:C

    :goto_b
    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :goto_12
    invoke-virtual {p2}, Lad/t;->x()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 315
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const/4 v0, 0x1

    .line 319
    :goto_25
    return v0

    .line 307
    :cond_26
    sget-char v0, Lcom/google/googlenav/ui/bn;->bk:C

    goto :goto_b

    .line 310
    :cond_29
    invoke-virtual {p1}, Lcom/google/googlenav/ui/bn;->S()Lcom/google/googlenav/ui/p;

    move-result-object v0

    invoke-virtual {p2}, Lad/t;->w()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/p;->a(J)C

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 319
    :cond_3d
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private static a(Ljava/util/Vector;I)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/t;

    .line 267
    invoke-virtual {v0}, Lad/t;->w()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2e

    invoke-virtual {v0}, Lad/t;->C()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2e

    invoke-virtual {v0}, Lad/t;->C()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2c

    if-eqz p1, :cond_2c

    invoke-static {p0, p1}, Lcom/google/googlenav/ui/wizard/iA;->b(Ljava/util/Vector;I)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/iA;->b(Lad/t;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_2c
    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method private static b(Lad/h;)Ljava/util/Vector;
    .registers 7
    .parameter

    .prologue
    .line 115
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 116
    if-nez p0, :cond_9

    move-object v0, v1

    .line 152
    :goto_8
    return-object v0

    .line 119
    :cond_9
    invoke-virtual {p0}, Lad/h;->s()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bi;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lad/h;->t()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bi;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_86

    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_86

    const/16 v3, 0x5bf

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_38
    invoke-virtual {p0}, Lad/h;->l()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 127
    invoke-virtual {p0}, Lad/h;->k()I

    move-result v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bi;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_89

    .line 130
    sget-object v3, Lcom/google/googlenav/ui/aV;->M:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    .line 134
    sget-object v3, Lcom/google/googlenav/ui/aV;->bS:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v2

    .line 135
    const/16 v3, 0x374

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/aV;->M:Lcom/google/googlenav/ui/aV;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v3

    .line 139
    invoke-static {v3, v0, v2}, Lcom/google/googlenav/ui/aX;->a(Lcom/google/googlenav/ui/aW;Lcom/google/googlenav/ui/aW;Lcom/google/googlenav/ui/aW;)Ljava/util/Vector;

    move-result-object v0

    .line 141
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 148
    :cond_6b
    :goto_6b
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-virtual {p0}, Lad/h;->m()I

    move-result v0

    if-lez v0, :cond_84

    .line 149
    invoke-virtual {p0}, Lad/h;->o()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/aV;->M:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_84
    move-object v0, v1

    .line 152
    goto :goto_8

    .line 121
    :cond_86
    const-string v0, ""

    goto :goto_38

    .line 143
    :cond_89
    sget-object v0, Lcom/google/googlenav/ui/aV;->M:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v0}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_6b
.end method

.method private static b(Lad/t;)Z
    .registers 3
    .parameter

    .prologue
    .line 285
    invoke-virtual {p0}, Lad/t;->C()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    invoke-virtual {p0}, Lad/t;->v()I

    move-result v0

    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_17

    invoke-virtual {p0}, Lad/t;->t()I

    move-result v0

    const/16 v1, 0x29a

    if-le v0, v1, :cond_19

    :cond_17
    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private static b(Ljava/util/Vector;I)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 276
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 277
    add-int/lit8 v1, v0, -0x1

    .line 278
    invoke-virtual {p0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/t;

    .line 279
    if-ge p1, v1, :cond_26

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lad/t;

    invoke-virtual {v1}, Lad/t;->C()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_26

    invoke-virtual {v0}, Lad/t;->C()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private static c(Lad/h;)Ljava/util/Vector;
    .registers 9
    .parameter

    .prologue
    const/4 v7, 0x2

    .line 208
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 209
    if-nez p0, :cond_a

    move-object v0, v1

    .line 238
    :goto_9
    return-object v0

    .line 213
    :cond_a
    invoke-virtual {p0}, Lad/h;->e()I

    move-result v3

    .line 214
    const/4 v0, 0x0

    move v2, v0

    :goto_10
    if-ge v2, v3, :cond_5a

    .line 215
    invoke-virtual {p0, v2}, Lad/h;->b(I)Lad/t;

    move-result-object v4

    .line 217
    invoke-virtual {v4}, Lad/t;->C()I

    move-result v0

    if-ne v0, v7, :cond_56

    .line 218
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_47

    const/4 v0, 0x0

    .line 220
    :goto_23
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lad/t;->C()I

    move-result v5

    if-ne v5, v7, :cond_4e

    .line 223
    invoke-virtual {v0}, Lad/t;->t()I

    move-result v5

    invoke-virtual {v4}, Lad/t;->t()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lad/t;->a(I)V

    .line 225
    invoke-virtual {v0}, Lad/t;->v()I

    move-result v5

    invoke-virtual {v4}, Lad/t;->v()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lad/t;->b(I)V

    .line 214
    :goto_43
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10

    .line 218
    :cond_47
    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/t;

    goto :goto_23

    .line 230
    :cond_4e
    invoke-static {v4}, Lcom/google/googlenav/ui/wizard/iA;->a(Lad/t;)Lad/t;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_43

    .line 234
    :cond_56
    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_43

    :cond_5a
    move-object v0, v1

    .line 238
    goto :goto_9
.end method
