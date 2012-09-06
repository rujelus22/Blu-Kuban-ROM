.class public LaM/aR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, LaM/aR;->a:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static a(Lcom/google/googlenav/ai;Ljava/util/Hashtable;Ljava/lang/Object;)LaM/aP;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 515
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/aP;

    .line 516
    if-nez v0, :cond_18

    .line 517
    new-instance v0, LaM/aP;

    invoke-static {p0}, LaM/aR;->c(Lcom/google/googlenav/ai;)[I

    move-result-object v1

    invoke-static {p0}, LaM/aR;->h(Lcom/google/googlenav/ai;)[I

    move-result-object v2

    invoke-direct {v0, v1, v2}, LaM/aP;-><init>([I[I)V

    .line 519
    invoke-virtual {p1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    :cond_18
    return-object v0
.end method

.method public static a(LaM/aS;I)Lcom/google/googlenav/ui/view/android/a;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 226
    iget-object v0, p0, LaM/aS;->a:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 236
    :goto_9
    return-object v5

    .line 230
    :cond_a
    iget-boolean v0, p0, LaM/aS;->d:Z

    if-eqz v0, :cond_3a

    .line 231
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->p()LS/g;

    move-result-object v0

    iget v1, p0, LaM/aS;->c:I

    invoke-static {v1}, Lcom/google/googlenav/ui/bn;->f(I)C

    move-result v1

    invoke-interface {v0, v1}, LS/g;->e(C)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    move-object v4, v0

    .line 234
    :goto_23
    new-instance v6, Lcom/google/googlenav/ui/view/a;

    iget v0, p0, LaM/aS;->c:I

    const/4 v1, -0x1

    invoke-direct {v6, v0, v1, v5}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    .line 236
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    iget-object v2, p0, LaM/aS;->a:Ljava/lang/String;

    iget-object v3, p0, LaM/aS;->b:Ljava/lang/String;

    sget-object v7, Lcom/google/googlenav/ui/aV;->M:Lcom/google/googlenav/ui/aV;

    move v1, p1

    move-object v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/ui/view/android/a;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)V

    move-object v5, v0

    goto :goto_9

    :cond_3a
    move-object v4, v5

    goto :goto_23
.end method

.method public static a(LO/d;)Ljava/lang/CharSequence;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 588
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 589
    const/16 v1, 0x3ea

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/aV;->bQ:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;Z)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    .line 591
    const-string v1, " "

    sget-object v2, Lcom/google/googlenav/ui/aV;->bQ:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;Z)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    .line 593
    invoke-virtual {p0}, LO/d;->b()I

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/ai;->l(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/aV;->bP:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;Z)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    .line 596
    const-string v1, " "

    sget-object v2, Lcom/google/googlenav/ui/aV;->bP:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;Z)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    .line 598
    invoke-virtual {p0}, LO/d;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/aV;->bR:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    .line 600
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_50

    :goto_4f
    return-object v0

    :cond_50
    const/4 v0, 0x0

    goto :goto_4f
.end method

.method public static a(Lcom/google/googlenav/ac;)Ljava/lang/CharSequence;
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 558
    if-nez p0, :cond_4

    .line 569
    :goto_3
    return-object v2

    .line 561
    :cond_4
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 562
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/google/googlenav/ac;->a(J)Ljava/util/Vector;

    move-result-object v0

    .line 564
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aW;

    .line 567
    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    goto :goto_1d

    .line 569
    :cond_2d
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_36

    move-object v0, v1

    :goto_34
    move-object v2, v0

    goto :goto_3

    :cond_36
    move-object v0, v2

    goto :goto_34
.end method

.method public static a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Ljava/lang/CharSequence;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 573
    invoke-static {p0}, Laa/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 575
    invoke-static {v0, p1}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 577
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.google.com/m/place?hl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/common/Config;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/ai;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LaM/aR;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&ppmode=image&cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->W()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/ai;Z)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->S()Ljava/util/Vector;

    move-result-object v2

    .line 272
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 273
    :cond_c
    const/4 v0, 0x0

    .line 285
    :goto_d
    return-object v0

    .line 275
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    const/4 v0, 0x0

    move v1, v0

    :goto_15
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2f

    .line 277
    if-eqz v1, :cond_22

    .line 278
    const-string v0, " \u00b7 "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_22
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    .line 282
    :cond_2f
    if-eqz p1, :cond_36

    .line 283
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 480
    if-nez p0, :cond_4

    .line 481
    const/4 p0, 0x0

    .line 483
    :cond_3
    :goto_3
    return-object p0

    :cond_4
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method public static a(Lcom/google/googlenav/ai;I)Ljava/util/List;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    .line 445
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 446
    const/16 v0, 0x1a

    sget-object v2, Lbm/bb;->a:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v2}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 448
    if-nez v2, :cond_11

    move-object v0, v1

    .line 462
    :goto_10
    return-object v0

    .line 452
    :cond_11
    invoke-virtual {v2, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 453
    if-le v0, p1, :cond_28

    .line 455
    :goto_17
    const/4 v0, 0x0

    :goto_18
    if-ge v0, p1, :cond_2a

    .line 458
    invoke-virtual {v2, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 460
    invoke-static {v3}, Lcom/google/googlenav/aO;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/aO;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_28
    move p1, v0

    .line 453
    goto :goto_17

    :cond_2a
    move-object v0, v1

    .line 462
    goto :goto_10
.end method

.method public static a(Lcom/google/googlenav/ai;LaM/i;)Ljava/util/List;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 604
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->D()Lat/g;

    move-result-object v0

    .line 607
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 609
    invoke-virtual {p1, v0}, LaM/i;->b(Lat/g;)Z

    move-result v2

    .line 610
    invoke-virtual {p1, v0}, LaM/i;->c(Lat/g;)Z

    move-result v3

    .line 612
    if-eqz v2, :cond_28

    .line 613
    invoke-virtual {p1, v0}, LaM/i;->c(Lat/g;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/16 v0, 0x2fd

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 616
    :goto_1f
    const/16 v2, 0x25c

    invoke-static {v0, v2, v4, v1}, LaM/aR;->a(Ljava/lang/String;IILjava/util/List;)V

    .line 617
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ai;->o(I)V

    .line 622
    :cond_28
    if-eqz v3, :cond_39

    .line 623
    const/16 v0, 0x2ff

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x25d

    invoke-static {v0, v2, v4, v1}, LaM/aR;->a(Ljava/lang/String;IILjava/util/List;)V

    .line 625
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ai;->o(I)V

    .line 630
    :cond_39
    const/16 v0, 0x1c7

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x25b

    invoke-static {v0, v2, v4, v1}, LaM/aR;->a(Ljava/lang/String;IILjava/util/List;)V

    .line 631
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ai;->o(I)V

    .line 634
    return-object v1

    .line 613
    :cond_49
    const/16 v0, 0x2fc

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f
.end method

.method public static a(Lcom/google/googlenav/ai;ZZ)Ljava/util/Vector;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    const/16 v0, 0xf

    sget-object v1, Lbm/az;->d:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 198
    if-eqz v0, :cond_19

    .line 199
    new-instance v2, Lcom/google/googlenav/ad;

    invoke-direct {v2, v0}, Lcom/google/googlenav/ad;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 200
    if-eqz p1, :cond_1a

    .line 201
    invoke-virtual {v2, v1, p2}, Lcom/google/googlenav/ad;->a(Ljava/util/Vector;Z)V

    .line 206
    :cond_19
    :goto_19
    return-object v1

    .line 203
    :cond_1a
    invoke-virtual {v2, v1}, Lcom/google/googlenav/ad;->a(Ljava/util/Vector;)V

    goto :goto_19
.end method

.method public static a(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 644
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 648
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 650
    return-void
.end method

.method public static a(Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/g;Ljava/util/List;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ab()Z

    move-result v0

    if-nez v0, :cond_7

    .line 268
    :cond_6
    :goto_6
    return-void

    .line 257
    :cond_7
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aC()Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aD()Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aE()Ljava/lang/String;

    move-result-object v4

    .line 260
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aF()Ljava/lang/String;

    move-result-object v5

    .line 261
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aG()Ljava/lang/String;

    move-result-object v6

    .line 263
    if-nez v2, :cond_23

    if-nez v3, :cond_23

    if-nez v4, :cond_23

    if-eqz v5, :cond_6

    .line 264
    :cond_23
    new-instance v0, Lcom/google/googlenav/ui/view/android/bA;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/android/bA;-><init>(Lcom/google/googlenav/ui/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public static a(Lcom/google/googlenav/ai;Ljava/util/Vector;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bC()Z

    move-result v0

    if-nez v0, :cond_7

    .line 362
    :goto_6
    return-void

    .line 356
    :cond_7
    const/16 v0, 0x2ae

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c3

    invoke-static {p1, v0, v1, p2}, LaM/aR;->a(Ljava/util/Vector;Ljava/lang/String;IZ)V

    .line 360
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ai;->o(I)V

    goto :goto_6
.end method

.method public static a(Lcom/google/googlenav/ai;ZILjava/util/List;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 366
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->D()Lat/g;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->y()Z

    move-result v0

    if-nez v0, :cond_e

    .line 388
    :cond_d
    :goto_d
    return-void

    .line 373
    :cond_e
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->z()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3c

    const/16 v0, 0x4b1

    .line 377
    :goto_17
    if-eqz p1, :cond_3f

    const/16 v1, 0x260

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 381
    :goto_1f
    new-instance v6, Lcom/google/googlenav/ui/view/a;

    const/4 v1, -0x1

    invoke-direct {v6, v0, v1, v4}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    .line 383
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    invoke-static {p0, p1}, LaM/aR;->c(Lcom/google/googlenav/ai;Z)Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/google/googlenav/ui/aV;->M:Lcom/google/googlenav/ui/aV;

    move v1, p2

    move-object v5, v4

    move-object v8, v4

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/ui/view/android/a;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ai;->o(I)V

    goto :goto_d

    .line 373
    :cond_3c
    const/16 v0, 0x4b0

    goto :goto_17

    .line 377
    :cond_3f
    const/16 v1, 0x262

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1f
.end method

.method public static a(Ljava/lang/String;IILjava/util/List;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 242
    invoke-static {p0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 249
    :goto_7
    return-void

    .line 245
    :cond_8
    new-instance v6, Lcom/google/googlenav/ui/view/a;

    const/4 v0, -0x1

    invoke-direct {v6, p1, v0, v3}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    .line 247
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    sget-object v7, Lcom/google/googlenav/ui/aV;->M:Lcom/google/googlenav/ui/aV;

    move v1, p2

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/ui/view/android/a;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method static a(Ljava/util/Vector;Ljava/lang/String;IZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    new-instance v0, LaM/aS;

    invoke-direct {v0, p1, p2, p3}, LaM/aS;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method public static a(Lcom/google/googlenav/al;Ljava/util/Vector;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)Z
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    if-nez p0, :cond_6

    move v0, v2

    .line 190
    :goto_5
    return v0

    .line 172
    :cond_6
    invoke-virtual {p0}, Lcom/google/googlenav/al;->b()Ljava/util/Vector;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    move v0, v2

    .line 174
    goto :goto_5

    .line 181
    :cond_12
    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/am;

    .line 182
    invoke-virtual {v0}, Lcom/google/googlenav/am;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_20

    move v0, v2

    .line 183
    goto :goto_5

    .line 185
    :cond_20
    invoke-virtual {v0}, Lcom/google/googlenav/am;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, v2}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;Z)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/al;->a()Lcom/google/googlenav/am;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/am;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/googlenav/am;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    const/4 v0, 0x0

    :goto_51
    invoke-static {v4, p3, v3, v2, v0}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;ZZLcom/google/googlenav/ui/view/a;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v0, v3

    .line 190
    goto :goto_5

    .line 186
    :cond_5a
    new-instance v1, Lcom/google/googlenav/ui/view/a;

    const/4 v5, 0x5

    const/4 v6, -0x1

    invoke-virtual {v0}, Lcom/google/googlenav/am;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v6, v0}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    move-object v0, v1

    goto :goto_51
.end method

.method public static b(Lcom/google/googlenav/ai;ZZ)Lcom/google/googlenav/ui/view/a;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 310
    .line 311
    if-eqz p2, :cond_4a

    .line 312
    if-eqz p1, :cond_e

    .line 313
    new-instance v0, Lcom/google/googlenav/ui/view/a;

    const/16 v2, 0x258

    invoke-direct {v0, v2, v6, v1}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    .line 333
    :goto_d
    return-object v0

    .line 315
    :cond_e
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4a

    .line 316
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->P()[Lcom/google/googlenav/aw;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->P()[Lcom/google/googlenav/aw;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_3f

    .line 318
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->O()Ljava/lang/String;

    move-result-object v1

    .line 319
    if-eqz v1, :cond_33

    .line 320
    new-instance v0, Lcom/google/googlenav/ui/view/a;

    const/16 v2, 0x907

    invoke-direct {v0, v2, v6, v1}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    goto :goto_d

    .line 323
    :cond_33
    new-instance v0, Lcom/google/googlenav/ui/view/a;

    const/16 v1, 0x908

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->P()[Lcom/google/googlenav/aw;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    goto :goto_d

    .line 328
    :cond_3f
    new-instance v0, Lcom/google/googlenav/ui/view/a;

    const/4 v1, 0x5

    invoke-static {p0}, LaM/aR;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    goto :goto_d

    :cond_4a
    move-object v0, v1

    goto :goto_d
.end method

.method public static b(Lcom/google/googlenav/ai;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 337
    if-eqz p1, :cond_8

    const/16 v0, 0x1b

    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ai;->o(I)V

    .line 340
    return-void

    .line 337
    :cond_8
    const/16 v0, 0x1a

    goto :goto_4
.end method

.method public static b(Lcom/google/googlenav/ai;)Z
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 409
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->Z()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->Y()Z

    move-result v1

    if-nez v1, :cond_e

    .line 418
    :cond_d
    :goto_d
    return v0

    .line 415
    :cond_e
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->G()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->I()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 418
    :cond_22
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static c(Lcom/google/googlenav/ai;Z)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 392
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->A()[Lcom/google/googlenav/ai;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v1

    .line 393
    if-eqz p1, :cond_30

    const/16 v0, 0x25f

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 397
    :goto_14
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->z()I

    move-result v2

    if-le v2, v4, :cond_37

    .line 398
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v3

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->z()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    :goto_2f
    return-object v0

    .line 393
    :cond_30
    const/16 v0, 0x261

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_37
    move-object v0, v1

    goto :goto_2f
.end method

.method public static c(Lcom/google/googlenav/ai;)[I
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 429
    const/16 v0, 0xa

    sget-object v1, Lbm/e;->d:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 432
    if-nez v0, :cond_e

    .line 433
    sget-object v0, LaM/aR;->a:[I

    .line 438
    :goto_d
    return-object v0

    .line 436
    :cond_e
    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 437
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 438
    new-array v0, v3, [I

    const/4 v3, 0x0

    aput v1, v0, v3

    const/4 v1, 0x1

    aput v2, v0, v1

    goto :goto_d
.end method

.method public static d(Lcom/google/googlenav/ai;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 469
    const/16 v0, 0x1a

    sget-object v1, Lbm/bb;->a:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 471
    if-nez v0, :cond_d

    .line 472
    const/4 v0, 0x0

    .line 476
    :goto_c
    return-object v0

    .line 474
    :cond_d
    invoke-static {v0, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 476
    invoke-static {v0, v2}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static e(Lcom/google/googlenav/ai;)V
    .registers 3
    .parameter

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bR()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 493
    invoke-static {}, Lan/l;->p()Lan/h;

    move-result-object v0

    .line 494
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v1

    invoke-static {v0, v1}, LaB/g;->a(Lan/h;Lat/B;)I

    move-result v0

    .line 496
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    const/16 v1, 0xfa

    if-ge v0, v1, :cond_1d

    .line 501
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ai;->e(Z)V

    .line 504
    :cond_1d
    return-void
.end method

.method public static f(Lcom/google/googlenav/ai;)V
    .registers 2
    .parameter

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bS()Z

    move-result v0

    if-nez v0, :cond_11

    .line 509
    invoke-static {}, Lcom/google/googlenav/aM;->a()Lcom/google/googlenav/aM;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/aM;->a(Lcom/google/googlenav/ai;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ai;->f(Z)V

    .line 511
    :cond_11
    return-void
.end method

.method public static g(Lcom/google/googlenav/ai;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 653
    const/16 v0, 0x538

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bM()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h(Lcom/google/googlenav/ai;)[I
    .registers 9
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 126
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_46

    .line 128
    const/16 v1, 0xe

    sget-object v2, Lbm/aa;->d:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 131
    if-nez v1, :cond_15

    .line 155
    :cond_14
    :goto_14
    return-object v0

    .line 135
    :cond_15
    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 138
    if-eqz v2, :cond_2d

    .line 139
    invoke-virtual {v2, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 141
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v0, v5

    .line 142
    rsub-int/lit8 v2, v2, 0x3

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v0, v4

    .line 145
    :cond_2d
    invoke-virtual {v1, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_14

    .line 149
    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 151
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v0, v7

    .line 152
    rsub-int/lit8 v1, v1, 0x3

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v0, v6

    goto :goto_14

    .line 126
    :array_46
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
