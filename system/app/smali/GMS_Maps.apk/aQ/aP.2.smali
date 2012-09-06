.class public LaQ/aP;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Ljava/util/List;

.field d:Ljava/lang/CharSequence;

.field e:Ljava/util/List;


# direct methods
.method public constructor <init>(ZLcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LaQ/aP;->c:Ljava/util/List;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LaQ/aP;->e:Ljava/util/List;

    .line 223
    iput-boolean p1, p0, LaQ/aP;->a:Z

    .line 224
    invoke-direct {p0, p2, p3}, LaQ/aP;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 225
    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/CharSequence;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    invoke-virtual {p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    move v0, v1

    .line 404
    :goto_b
    if-ge v0, v3, :cond_20

    .line 405
    invoke-virtual {p1, p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    add-int/lit8 v4, v3, -0x1

    if-ge v0, v4, :cond_1d

    .line 407
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 410
    :cond_20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_40

    .line 411
    invoke-static {p3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    sget-object v1, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    sget-object v2, Lcom/google/googlenav/ui/aV;->aU:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 415
    :goto_3f
    return-object v0

    :cond_40
    const-string v0, ""

    goto :goto_3f
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 398
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    move-object p1, p2

    goto :goto_6
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    .line 251
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 253
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaQ/aP;->b:Ljava/lang/String;

    .line 255
    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 237
    if-eqz p1, :cond_1d

    .line 238
    invoke-direct {p0, p1}, LaQ/aP;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 239
    invoke-virtual {p1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 240
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_1d

    .line 241
    invoke-virtual {p1, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 243
    iget-object v3, p0, LaQ/aP;->c:Ljava/util/List;

    invoke-direct {p0, v2}, LaQ/aP;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)LaQ/aQ;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 247
    :cond_1d
    invoke-direct {p0, p2, p1}, LaQ/aP;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 248
    return-void
.end method

.method private b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)LaQ/aQ;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 258
    new-instance v1, LaQ/aQ;

    invoke-direct {v1}, LaQ/aQ;-><init>()V

    .line 259
    iput-object p1, v1, LaQ/aQ;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 261
    invoke-static {p1, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 263
    invoke-static {v0, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 266
    invoke-static {v0}, Lcom/google/googlenav/aV;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LaQ/aQ;->b:Ljava/lang/String;

    .line 267
    const/4 v0, 0x2

    invoke-static {v2, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LaQ/aQ;->c:Ljava/lang/String;

    .line 269
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 272
    invoke-static {p1}, LaQ/aE;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v2

    if-eqz v2, :cond_66

    :goto_2f
    iput-object v0, v1, LaQ/aQ;->d:Ljava/lang/String;

    .line 276
    :cond_31
    invoke-direct {p0, p1}, LaQ/aP;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, LaQ/aQ;->f:Ljava/lang/CharSequence;

    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LaQ/aP;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, LaQ/aQ;->g:Ljava/lang/CharSequence;

    .line 278
    invoke-virtual {p0, p1, v4}, LaQ/aP;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, LaQ/aQ;->h:Ljava/lang/CharSequence;

    .line 280
    new-instance v0, Lcom/google/googlenav/aV;

    invoke-direct {v0, p1}, Lcom/google/googlenav/aV;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 281
    invoke-virtual {v0}, Lcom/google/googlenav/aV;->a()Z

    move-result v0

    iput-boolean v0, v1, LaQ/aQ;->k:Z

    .line 283
    invoke-static {p1}, LaQ/aE;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 284
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 286
    invoke-direct {p0, v0}, LaQ/aP;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, LaQ/aQ;->e:Ljava/lang/CharSequence;

    .line 287
    iput-object v5, v1, LaQ/aQ;->i:Ljava/lang/CharSequence;

    .line 288
    iput-object v5, v1, LaQ/aQ;->j:Ljava/lang/CharSequence;

    .line 297
    :goto_65
    return-object v1

    .line 272
    :cond_66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    .line 290
    :cond_7a
    iput-object v5, v1, LaQ/aQ;->e:Ljava/lang/CharSequence;

    .line 291
    const/16 v0, 0x9

    const/16 v2, 0x3f

    invoke-direct {p0, p1, v0, v2}, LaQ/aP;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, LaQ/aQ;->i:Ljava/lang/CharSequence;

    .line 293
    const/16 v0, 0xa

    const/16 v2, 0x3e

    invoke-direct {p0, p1, v0, v2}, LaQ/aP;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, LaQ/aQ;->j:Ljava/lang/CharSequence;

    goto :goto_65
.end method

.method private b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 421
    if-eqz p1, :cond_17

    invoke-virtual {p1, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 424
    :goto_9
    const/4 v2, 0x4

    invoke-static {p2, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 427
    invoke-static {v2}, LaQ/aE;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Landroid/util/Pair;

    move-result-object v3

    .line 429
    if-nez v0, :cond_19

    if-nez v3, :cond_19

    .line 480
    :cond_16
    return-void

    :cond_17
    move v0, v1

    .line 421
    goto :goto_9

    .line 434
    :cond_19
    invoke-static {p1, v8}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 438
    if-eqz v2, :cond_96

    invoke-static {v2, v8}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    .line 441
    :goto_23
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 442
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 443
    sget-object v5, Lcom/google/googlenav/ui/aV;->bY:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v5}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v2

    .line 444
    invoke-static {v2, v4}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    .line 445
    iput-object v4, p0, LaQ/aP;->d:Ljava/lang/CharSequence;

    .line 449
    if-eqz v3, :cond_3e

    .line 450
    iget-object v2, p0, LaQ/aP;->e:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3e
    move v2, v1

    .line 454
    :goto_3f
    if-ge v2, v0, :cond_16

    .line 455
    invoke-virtual {p1, v9, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 457
    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v4

    .line 459
    invoke-static {v3, v9}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 461
    invoke-static {v5, v9}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v5

    .line 464
    if-eqz v4, :cond_93

    if-eqz v5, :cond_93

    .line 465
    const/16 v6, 0x40f

    invoke-static {v6}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/String;

    aput-object v4, v7, v1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 469
    invoke-static {v3, v8}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 470
    invoke-static {v3, v8}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v5

    .line 471
    const/4 v6, 0x3

    invoke-static {v3, v6}, Lcom/google/googlenav/common/io/protocol/b;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v6

    long-to-int v3, v6

    .line 473
    if-nez v3, :cond_93

    invoke-static {v5}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_93

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 475
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 476
    iget-object v4, p0, LaQ/aP;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_93
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 438
    :cond_96
    const/16 v2, 0x619

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_23
.end method

.method private c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/CharSequence;
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x2

    .line 301
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 302
    invoke-virtual {p1, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 303
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_55

    .line 304
    invoke-virtual {p1, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 305
    invoke-virtual {v3, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 306
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 307
    invoke-static {v4}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_26

    invoke-static {v3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 303
    :cond_26
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 310
    :cond_29
    sget-object v5, Lcom/google/googlenav/ui/aV;->bh:Lcom/google/googlenav/ui/aV;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    .line 313
    const-string v4, "\u00a0"

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 314
    sget-object v4, Lcom/google/googlenav/ui/aV;->bi:Lcom/google/googlenav/ui/aV;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    .line 316
    const-string v3, "\u00a0/\u00a03"

    sget-object v4, Lcom/google/googlenav/ui/aV;->bj:Lcom/google/googlenav/ui/aV;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    .line 319
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_26

    .line 320
    const-string v3, "  "

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_26

    .line 323
    :cond_55
    return-object v1
.end method

.method private d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/CharSequence;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 330
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 331
    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    .line 332
    invoke-static {p1}, LaQ/aE;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v2

    if-nez v2, :cond_2f

    if-eqz v0, :cond_2f

    .line 333
    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ai;->l(I)Ljava/lang/String;

    move-result-object v0

    .line 337
    sget-object v2, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    .line 339
    const-string v0, " "

    sget-object v2, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    .line 343
    :cond_2f
    invoke-virtual {p1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    .line 344
    if-eqz v0, :cond_61

    .line 347
    invoke-static {p1, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\<.*?>"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-static {p1}, LaQ/aE;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    if-eqz v0, :cond_62

    sget-object v0, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    :goto_49
    invoke-static {v2, v0}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    .line 352
    const-string v2, " "

    invoke-static {p1}, LaQ/aE;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    if-eqz v0, :cond_65

    sget-object v0, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    :goto_5a
    invoke-static {v2, v0}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    .line 356
    :cond_61
    return-object v1

    .line 349
    :cond_62
    sget-object v0, Lcom/google/googlenav/ui/aV;->aU:Lcom/google/googlenav/ui/aV;

    goto :goto_49

    .line 352
    :cond_65
    sget-object v0, Lcom/google/googlenav/ui/aV;->aU:Lcom/google/googlenav/ui/aV;

    goto :goto_5a
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, LaQ/aP;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)Ljava/lang/CharSequence;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 362
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 364
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v1

    .line 366
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-direct {p0, v2, v1}, LaQ/aP;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    if-lez v2, :cond_40

    const/4 v2, 0x1

    .line 371
    :goto_1f
    if-eqz v2, :cond_3f

    .line 373
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 375
    invoke-static {p1}, LaQ/aE;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 378
    if-eqz p2, :cond_42

    :goto_2e
    const-string v1, "\\<.*?>"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    sget-object v1, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    .line 380
    invoke-static {v0, v3}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    .line 390
    :cond_3f
    return-object v3

    .line 370
    :cond_40
    const/4 v2, 0x0

    goto :goto_1f

    :cond_42
    move-object v0, v1

    .line 378
    goto :goto_2e

    .line 382
    :cond_44
    if-eqz p2, :cond_61

    :goto_46
    sget-object v1, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    sget-object v4, Lcom/google/googlenav/ui/aV;->aU:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v0, v1, v4}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)V

    .line 385
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aW;

    .line 386
    invoke-static {v0, v3}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    goto :goto_51

    :cond_61
    move-object v0, v1

    .line 382
    goto :goto_46
.end method
