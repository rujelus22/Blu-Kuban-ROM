.class public LaY/aq;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, LaY/aq;->a:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/googlenav/ah;Ljava/util/Hashtable;Ljava/lang/Object;)LaY/ao;
    .registers 7

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/ao;

    if-nez v0, :cond_1c

    new-instance v0, LaY/ao;

    invoke-static {p0}, LaY/aq;->d(Lcom/google/googlenav/ah;)[I

    move-result-object v1

    invoke-static {p0}, LaY/aq;->c(Lcom/google/googlenav/ah;)[I

    move-result-object v2

    invoke-static {p0}, LaY/ap;->a(Lcom/google/googlenav/ah;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, LaY/ao;-><init>([I[II)V

    invoke-virtual {p1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-object v0
.end method

.method public static a(Lcom/google/googlenav/ah;Lcom/google/googlenav/ui/bF;Lay/q;Z)Lbd/S;
    .registers 7

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->n(I)V

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aZ()I

    move-result v0

    invoke-static {v0}, LK/bR;->c(I)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v0, 0x0

    :goto_e
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aZ()I

    move-result v2

    if-ge v0, v2, :cond_1e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->j(I)Lam/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1e
    new-instance v0, Lbd/S;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1, p1, p3}, Lbd/S;-><init>(ILjava/util/List;Lcom/google/googlenav/ui/bF;Z)V

    return-object v0
.end method

.method static a(Lcom/google/googlenav/ak;Lbb/c;)Lcom/google/googlenav/ui/bl;
    .registers 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sget-object v1, Lcom/google/googlenav/ui/bg;->aT:Lcom/google/googlenav/ui/bg;

    sget-object v2, Lcom/google/googlenav/ui/bg;->aW:Lcom/google/googlenav/ui/bg;

    invoke-static {p0, v0, v1, v2}, LaY/aq;->a(Lcom/google/googlenav/ak;Ljava/util/Vector;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v0, 0x0

    :goto_10
    return-object v0

    :cond_11
    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/bm;->a(Lbb/c;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    goto :goto_10
.end method

.method private static a(Lcom/google/googlenav/ao;ZLbb/a;Lbb/c;Lcom/google/googlenav/ui/bF;)Lcom/google/googlenav/ui/bl;
    .registers 12

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/ao;->a()[Lcom/google/googlenav/am;

    move-result-object v4

    if-eqz v4, :cond_10

    array-length v0, v4

    if-nez v0, :cond_12

    :cond_10
    move-object v0, v2

    :goto_11
    return-object v0

    :cond_12
    move v0, v1

    :goto_13
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_21

    aget-object v5, v4, v0

    const/4 v6, 0x1

    invoke-static {v1, v3, v5, v6, v2}, LaY/aq;->a(ZLjava/util/Vector;Lcom/google/googlenav/am;ZLbb/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_21
    if-eqz p1, :cond_86

    invoke-virtual {p0}, Lcom/google/googlenav/ao;->f()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-virtual {p0}, Lcom/google/googlenav/ao;->b()Lcom/google/googlenav/am;

    move-result-object v0

    invoke-static {v1, v3, v0, v1, v2}, LaY/aq;->a(ZLjava/util/Vector;Lcom/google/googlenav/am;ZLbb/a;)V

    :goto_30
    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/bm;->a(Lbb/c;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ao;->d()Z

    move-result v2

    if-eqz v2, :cond_8f

    new-instance v2, Lcom/google/googlenav/ui/bG;

    invoke-virtual {p0}, Lcom/google/googlenav/ao;->c()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/google/googlenav/ui/bw;->by:I

    invoke-direct {v2, v4, v5}, Lcom/google/googlenav/ui/bG;-><init>(Ljava/lang/String;I)V

    invoke-static {v2, p4}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aj;Lcom/google/googlenav/ui/ai;)Lcom/google/googlenav/ui/bn;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    :goto_5b
    invoke-virtual {p0}, Lcom/google/googlenav/ao;->f()Z

    move-result v2

    if-eqz v2, :cond_7d

    const-string v2, " "

    sget-object v4, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v4}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_9b

    const/16 v2, 0x375

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/google/googlenav/ui/bg;->aV:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v4, v1, v1, p2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;ZZLbb/a;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_7d
    :goto_7d
    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    goto :goto_11

    :cond_86
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v4, v0

    invoke-static {v1, v3, v0, v1, v2}, LaY/aq;->a(ZLjava/util/Vector;Lcom/google/googlenav/am;ZLbb/a;)V

    goto :goto_30

    :cond_8f
    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bw;->r()Lah/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->a(Lah/f;)Lcom/google/googlenav/ui/bm;

    goto :goto_5b

    :cond_9b
    const/16 v2, 0x376

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/google/googlenav/ui/bg;->aV:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v4, v1, v1, p2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;ZZLbb/a;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_7d
.end method

.method public static a(LaY/ar;I)Lcom/google/googlenav/ui/view/android/a;
    .registers 11

    const/4 v5, 0x0

    iget-object v0, p0, LaY/ar;->a:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_9
    return-object v5

    :cond_a
    iget-boolean v0, p0, LaY/ar;->d:Z

    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->p()Lah/g;

    move-result-object v0

    iget v1, p0, LaY/ar;->c:I

    invoke-static {v1}, Lcom/google/googlenav/ui/bw;->f(I)C

    move-result v1

    invoke-interface {v0, v1}, Lah/g;->e(C)Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    move-object v4, v0

    :goto_23
    new-instance v6, Lbb/a;

    iget v0, p0, LaY/ar;->c:I

    const/4 v1, -0x1

    invoke-direct {v6, v0, v1, v5}, Lbb/a;-><init>(IILjava/lang/Object;)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    iget-object v2, p0, LaY/ar;->a:Ljava/lang/String;

    iget-object v3, p0, LaY/ar;->b:Ljava/lang/String;

    sget-object v7, Lcom/google/googlenav/ui/bg;->O:Lcom/google/googlenav/ui/bg;

    move v1, p1

    move-object v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/ui/view/android/a;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lai/f;Lai/f;Lbb/a;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;)V

    move-object v5, v0

    goto :goto_9

    :cond_3a
    move-object v4, v5

    goto :goto_23
.end method

.method public static a(Lab/e;)Ljava/lang/CharSequence;
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/16 v1, 0x329

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->bY:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;Z)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    const-string v1, " "

    sget-object v2, Lcom/google/googlenav/ui/bg;->bY:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;Z)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {p0}, Lab/e;->b()I

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/ah;->k(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->bX:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;Z)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    const-string v1, " "

    sget-object v2, Lcom/google/googlenav/ui/bg;->bX:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;Z)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {p0}, Lab/e;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->bZ:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_50

    :goto_4f
    return-object v0

    :cond_50
    const/4 v0, 0x0

    goto :goto_4f
.end method

.method public static a(Lcom/google/googlenav/ab;)Ljava/lang/CharSequence;
    .registers 6

    const/4 v2, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v2

    :cond_4
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/google/googlenav/ab;->a(J)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    goto :goto_1d

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

.method public static a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Ljava/lang/CharSequence;
    .registers 4

    invoke-static {p0}, Las/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.google.com/m/place?hl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laf/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/ah;)Ljava/lang/String;
    .registers 4

    const/16 v2, 0x2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/reviews.html?cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v1

    invoke-virtual {v1}, LaJ/B;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v1

    invoke-virtual {v1}, LaJ/B;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/ah;Z)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->W()Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_15
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2f

    if-eqz v1, :cond_22

    const-string v0, " \u00b7 "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    :cond_2f
    if-eqz p1, :cond_36

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LaY/aq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&ppmode=google_reviews&start=0&cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/ah;I)Ljava/util/List;
    .registers 7

    const/4 v4, 0x2

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v0

    if-nez v0, :cond_f

    move-object v0, v1

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {v0}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v2

    if-nez v2, :cond_17

    move-object v0, v1

    goto :goto_e

    :cond_17
    invoke-virtual {v2, v4}, Lam/b;->l(I)I

    move-result v0

    if-le v0, p1, :cond_2e

    :goto_1d
    const/4 v0, 0x0

    :goto_1e
    if-ge v0, p1, :cond_30

    invoke-virtual {v2, v4, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/aO;->a(Lam/b;)Lcom/google/googlenav/aO;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_2e
    move p1, v0

    goto :goto_1d

    :cond_30
    move-object v0, v1

    goto :goto_e
.end method

.method public static a(Lcom/google/googlenav/ah;LaY/i;)Ljava/util/Vector;
    .registers 6

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->C()LaJ/g;

    move-result-object v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1, v0}, LaY/i;->b(LaJ/g;)Z

    move-result v2

    invoke-virtual {p1, v0}, LaY/i;->c(LaJ/g;)Z

    move-result v3

    if-eqz v2, :cond_2c

    invoke-virtual {p1, v0}, LaY/i;->c(LaJ/g;)Z

    move-result v0

    if-eqz v0, :cond_55

    const/16 v0, 0x279

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    const/16 v2, 0x25c

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bp;->a(Ljava/lang/String;I)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->n(I)V

    :cond_2c
    if-eqz v3, :cond_41

    const/16 v0, 0x27b

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x25d

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bp;->a(Ljava/lang/String;I)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->n(I)V

    :cond_41
    const/16 v0, 0x1b3

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x25b

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bp;->a(Ljava/lang/String;I)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->n(I)V

    return-object v1

    :cond_55
    const/16 v0, 0x278

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f
.end method

.method public static a(Lcom/google/googlenav/ah;Lcom/google/googlenav/E;Ljava/lang/String;)Ljava/util/Vector;
    .registers 13

    const/4 v1, 0x0

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    new-instance v4, Lax/aS;

    invoke-direct {v4, p1}, Lax/aS;-><init>(Lcom/google/googlenav/E;)V

    invoke-virtual {v4}, Lax/aS;->b()I

    move-result v5

    move v2, v1

    :goto_10
    if-ge v2, v5, :cond_5b

    invoke-virtual {v4, v2}, Lax/aS;->a(I)Lax/aP;

    move-result-object v6

    invoke-virtual {v6}, Lax/aP;->G()Lcom/google/googlenav/a;

    move-result-object v0

    if-eqz p2, :cond_3c

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/google/googlenav/a;->g()Z

    move-result v7

    if-eqz v7, :cond_3c

    invoke-virtual {v0}, Lcom/google/googlenav/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x1

    :goto_2f
    invoke-virtual {v6}, Lax/aP;->b()Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->e(Z)V

    :cond_38
    :goto_38
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10

    :cond_3c
    move v0, v1

    goto :goto_2f

    :cond_3e
    if-eqz v0, :cond_38

    const/16 v0, 0x93

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v7, LaY/aF;

    invoke-virtual {v6}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6}, Lax/aP;->f()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v8, v9, v6, v0}, LaY/aF;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_38

    :cond_5b
    return-object v3
.end method

.method public static a(Lcom/google/googlenav/ah;ZZ)Ljava/util/Vector;
    .registers 6

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    if-eqz v0, :cond_1b

    new-instance v2, Lcom/google/googlenav/ad;

    invoke-virtual {v0}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/googlenav/ad;-><init>(Lam/b;)V

    if-eqz p1, :cond_1c

    invoke-virtual {v2, v1, p2}, Lcom/google/googlenav/ad;->a(Ljava/util/Vector;Z)V

    :cond_1b
    :goto_1b
    return-object v1

    :cond_1c
    invoke-virtual {v2, v1}, Lcom/google/googlenav/ad;->a(Ljava/util/Vector;)V

    goto :goto_1b
.end method

.method private static a(ILcom/google/googlenav/ah;Ljava/util/Vector;Lbb/c;LaY/ao;Lcom/google/googlenav/ui/bF;Lay/q;)V
    .registers 15

    invoke-virtual {p1, p0}, Lcom/google/googlenav/ah;->g(I)[Lcom/google/googlenav/ao;

    move-result-object v1

    array-length v0, v1

    invoke-static {v0}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_a
    array-length v3, v1

    if-ge v0, v3, :cond_4c

    aget-object v3, v1, v0

    invoke-virtual {p4, v0, p0}, LaY/ao;->a(II)Z

    move-result v4

    new-instance v5, Lbb/a;

    const/16 v6, 0x903

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v0, v7}, Lbb/a;-><init>(IILjava/lang/Object;)V

    invoke-static {v3, v4, v5, p3, p5}, LaY/aq;->a(Lcom/google/googlenav/ao;ZLbb/a;Lbb/c;Lcom/google/googlenav/ui/bF;)Lcom/google/googlenav/ui/bl;

    move-result-object v3

    if-eqz v3, :cond_49

    invoke-virtual {p2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/google/googlenav/ao;->d()Z

    move-result v3

    if-eqz v3, :cond_49

    new-instance v3, Lcom/google/googlenav/ui/bG;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/google/googlenav/ao;->c()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/google/googlenav/ui/bw;->by:I

    invoke-direct {v3, v4, v5}, Lcom/google/googlenav/ui/bG;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p5}, Lcom/google/googlenav/ui/bF;->a()Lay/r;

    move-result-object v4

    invoke-virtual {v4, v3}, Lay/r;->c(Lcom/google/googlenav/ui/bG;)Z

    move-result v4

    if-nez v4, :cond_49

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_4c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_59

    invoke-virtual {p5}, Lcom/google/googlenav/ui/bF;->a()Lay/r;

    move-result-object v0

    invoke-virtual {v0, v2, p6}, Lay/r;->a(Ljava/util/List;Lay/q;)V

    :cond_59
    return-void
.end method

.method public static a(LaJ/B;Lcom/google/googlenav/ui/bm;)V
    .registers 3

    const/16 v0, 0x18

    invoke-static {p1, p0, v0}, LaP/g;->a(Lcom/google/googlenav/ui/bm;LaJ/B;I)V

    return-void
.end method

.method public static a(Lcom/google/googlenav/ah;Lcom/google/googlenav/ui/p;Ljava/util/List;)V
    .registers 10

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->af()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aD()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aE()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aG()Ljava/lang/String;

    move-result-object v6

    if-nez v2, :cond_23

    if-nez v3, :cond_23

    if-nez v4, :cond_23

    if-eqz v5, :cond_6

    :cond_23
    new-instance v0, Lcom/google/googlenav/ui/view/android/bE;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/android/bE;-><init>(Lcom/google/googlenav/ui/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public static a(Lcom/google/googlenav/ah;Ljava/util/List;)V
    .registers 7

    new-instance v0, Lbb/a;

    const/16 v1, 0x578

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2, p0}, Lbb/a;-><init>(IILjava/lang/Object;)V

    const/16 v1, 0x48c

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->by:Lcom/google/googlenav/ui/bg;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;ZZLbb/a;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->n(I)V

    return-void
.end method

.method public static a(Lcom/google/googlenav/ah;Ljava/util/Vector;LaY/i;Z)V
    .registers 7

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bo()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->ad()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->t()Z

    move-result v2

    if-eqz v2, :cond_2c

    const/16 v1, 0x37f

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c0

    invoke-static {p1, v1, v2, p3}, LaY/aq;->a(Ljava/util/Vector;Ljava/lang/String;IZ)V

    :goto_24
    if-eqz v0, :cond_7

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->n(I)V

    goto :goto_7

    :cond_2c
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->ac()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v2

    invoke-virtual {p2, v2}, LaY/i;->c(LaJ/B;)Z

    move-result v2

    if-eqz v2, :cond_48

    const/16 v1, 0x38a

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5dc

    invoke-static {p1, v1, v2, p3}, LaY/aq;->a(Ljava/util/Vector;Ljava/lang/String;IZ)V

    goto :goto_24

    :cond_48
    move v0, v1

    goto :goto_24
.end method

.method private static a(Lcom/google/googlenav/ah;Ljava/util/Vector;Lbb/c;)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->V()Ljava/util/Vector;

    move-result-object v1

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ak;

    invoke-static {v0, p2}, LaY/aq;->a(Lcom/google/googlenav/ak;Lbb/c;)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_23
    move v1, v0

    goto :goto_d

    :cond_25
    if-eqz v1, :cond_6

    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->n(I)V

    goto :goto_6

    :cond_2d
    move v0, v1

    goto :goto_23
.end method

.method public static a(Lcom/google/googlenav/ah;Ljava/util/Vector;Lbb/c;LaY/ao;Lcom/google/googlenav/ui/bF;Lay/q;)V
    .registers 15

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->Z()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p3}, LaY/ao;->b()Z

    move-result v7

    const/4 v0, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, LaY/aq;->a(ILcom/google/googlenav/ah;Ljava/util/Vector;Lbb/c;LaY/ao;Lcom/google/googlenav/ui/bF;Lay/q;)V

    if-eqz v7, :cond_28

    const/4 v0, 0x2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, LaY/aq;->a(ILcom/google/googlenav/ah;Ljava/util/Vector;Lbb/c;LaY/ao;Lcom/google/googlenav/ui/bF;Lay/q;)V

    :cond_28
    invoke-static {p0, v2, p2}, LaY/aq;->a(Lcom/google/googlenav/ah;Ljava/util/Vector;Lbb/c;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->S()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->T()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5b

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->Q()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/bg;->aS:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5b
    const/4 v0, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, LaY/aq;->a(ILcom/google/googlenav/ah;Ljava/util/Vector;Lbb/c;LaY/ao;Lcom/google/googlenav/ui/bF;Lay/q;)V

    if-eqz v7, :cond_6f

    const/4 v0, 0x3

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, LaY/aq;->a(ILcom/google/googlenav/ah;Ljava/util/Vector;Lbb/c;LaY/ao;Lcom/google/googlenav/ui/bF;Lay/q;)V

    :cond_6f
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->R()Z

    move-result v1

    if-eqz v1, :cond_a5

    if-eqz v7, :cond_f3

    const/16 v0, 0x375

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_7e
    sget-object v1, Lcom/google/googlenav/ui/bg;->aV:Lcom/google/googlenav/ui/bg;

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Lbb/a;

    const/16 v6, 0x904

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lbb/a;-><init>(IILjava/lang/Object;)V

    invoke-static {v0, v1, v3, v4, v5}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;ZZLbb/a;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/bm;->a(Lbb/c;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v0, 0x904

    :cond_a5
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_a

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->T()Z

    move-result v1

    if-nez v1, :cond_fa

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->Q()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_fa

    :goto_bb
    new-instance v3, Lcom/google/googlenav/ui/bm;

    invoke-direct {v3}, Lcom/google/googlenav/ui/bm;-><init>()V

    sget-object v4, Lcom/google/googlenav/ui/bg;->aP:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v4}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->n(I)V

    goto/16 :goto_a

    :cond_f3
    const/16 v0, 0x376

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7e

    :cond_fa
    move-object v1, v3

    goto :goto_bb
.end method

.method public static a(Lcom/google/googlenav/ah;Ljava/util/Vector;Z)V
    .registers 5

    const/16 v0, 0x4a6

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x258

    invoke-static {p1, v0, v1, p2}, LaY/aq;->a(Ljava/util/Vector;Ljava/lang/String;IZ)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->n(I)V

    return-void
.end method

.method public static a(Lcom/google/googlenav/ah;Ljava/util/Vector;ZZZ)V
    .registers 9

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->C()LaJ/g;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->x()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->y()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_38

    const/16 v0, 0x4b1

    move v1, v0

    :goto_17
    if-eqz p3, :cond_3c

    const/16 v0, 0x22c

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    new-instance v2, LaY/ar;

    invoke-static {p0, p3}, LaY/aq;->c(Lcom/google/googlenav/ah;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1, p4}, LaY/ar;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    if-eqz p2, :cond_43

    sget-object v0, Lcom/google/googlenav/ui/bg;->aP:Lcom/google/googlenav/ui/bg;

    :goto_2c
    invoke-virtual {v2, v0}, LaY/ar;->a(Lcom/google/googlenav/ui/bg;)V

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->n(I)V

    goto :goto_c

    :cond_38
    const/16 v0, 0x4b0

    move v1, v0

    goto :goto_17

    :cond_3c
    const/16 v0, 0x22e

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_43
    sget-object v0, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    goto :goto_2c
.end method

.method public static a(Ljava/util/Vector;ILjava/util/Vector;LaX/i;)V
    .registers 8

    const/4 v0, 0x0

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    move v1, v0

    move v2, v0

    :goto_8
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    const/4 v0, 0x6

    if-ge v2, v0, :cond_21

    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/aF;

    invoke-static {v3, v0, p3}, LaY/aq;->a(Ljava/util/Vector;LaY/aF;LaX/i;)V

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_8

    :cond_21
    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0x14e

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    return-void
.end method

.method private static a(Ljava/util/Vector;LaY/aF;LaX/i;)V
    .registers 8

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, LaY/aF;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, LaY/aF;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->bm:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    new-instance v1, LaX/j;

    invoke-virtual {p1}, LaY/aF;->a()J

    move-result-wide v2

    sget v4, Lcom/google/googlenav/ui/bw;->bu:I

    invoke-direct {v1, v2, v3, v4}, LaX/j;-><init>(JI)V

    invoke-static {v1, p2}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aj;Lcom/google/googlenav/ui/ai;)Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(Ljava/util/Vector;Lcom/google/googlenav/am;Z)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/google/googlenav/am;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/googlenav/am;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/googlenav/am;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1d

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    sget-object v2, Lcom/google/googlenav/ui/bg;->aS:Lcom/google/googlenav/ui/bg;

    invoke-static {p0, v0, v1, v2}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;)V

    return-void
.end method

.method private static a(Ljava/util/Vector;Lcom/google/googlenav/am;ZLbb/a;)V
    .registers 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/google/googlenav/am;->b:Ljava/lang/String;

    sget-object v1, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    sget-object v2, Lcom/google/googlenav/ui/bg;->aS:Lcom/google/googlenav/ui/bg;

    invoke-static {p0, v0, v1, v2}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;)V

    iget-object v0, p1, Lcom/google/googlenav/am;->a:Ljava/lang/String;

    sget-object v1, Lcom/google/googlenav/ui/bg;->aV:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1, v3, v4, p3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;ZZLbb/a;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/google/googlenav/am;->c:Ljava/lang/String;

    sget-object v1, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1, v3, v4, p3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;ZZLbb/a;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2e

    const-string v0, " "

    sget-object v1, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2e
    return-void
.end method

.method static a(Ljava/util/Vector;Ljava/lang/String;IZ)V
    .registers 5

    new-instance v0, LaY/ar;

    invoke-direct {v0, p1, p2, p3}, LaY/ar;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 7

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/ar;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iget-object v3, v0, LaY/ar;->a:Ljava/lang/String;

    iget-object v4, v0, LaY/ar;->e:Lcom/google/googlenav/ui/bg;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, LaY/ar;->b:Ljava/lang/String;

    invoke-static {v3}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_36

    iget-object v3, v0, LaY/ar;->b:Ljava/lang/String;

    sget-object v4, Lcom/google/googlenav/ui/bg;->y:Lcom/google/googlenav/ui/bg;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_36
    new-instance v3, Lcom/google/googlenav/ui/bm;

    invoke-direct {v3}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v2

    iget v3, v0, LaY/ar;->c:I

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v2

    iget-boolean v3, v0, LaY/ar;->d:Z

    if-eqz v3, :cond_57

    iget v0, v0, LaY/ar;->c:I

    invoke-static {v0}, Lcom/google/googlenav/ui/bw;->e(I)Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    :cond_57
    invoke-virtual {v2}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public static a(Ljava/util/Vector;Z)V
    .registers 5

    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v0, 0x69

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_3b

    sget-object v0, Lcom/google/googlenav/ui/bg;->aO:Lcom/google/googlenav/ui/bg;

    :goto_f
    invoke-static {v2, v0}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    if-nez p1, :cond_33

    sget-char v1, Lcom/google/googlenav/ui/bw;->au:C

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bw;->p()Lah/g;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;Lah/g;)Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    :cond_33
    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3b
    sget-object v0, Lcom/google/googlenav/ui/bg;->x:Lcom/google/googlenav/ui/bg;

    goto :goto_f
.end method

.method private static a(ZLjava/util/Vector;Lcom/google/googlenav/am;ZLbb/a;)V
    .registers 5

    if-eqz p0, :cond_6

    invoke-static {p1, p2, p3, p4}, LaY/aq;->a(Ljava/util/Vector;Lcom/google/googlenav/am;ZLbb/a;)V

    :goto_5
    return-void

    :cond_6
    invoke-static {p1, p2, p3}, LaY/aq;->a(Ljava/util/Vector;Lcom/google/googlenav/am;Z)V

    goto :goto_5
.end method

.method public static a(Lcom/google/googlenav/ak;Ljava/util/Vector;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;)Z
    .registers 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_6

    move v0, v2

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/googlenav/ak;->b()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    move v0, v2

    goto :goto_5

    :cond_12
    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/al;

    invoke-virtual {v0}, Lcom/google/googlenav/al;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_20

    move v0, v2

    goto :goto_5

    :cond_20
    invoke-virtual {v0}, Lcom/google/googlenav/al;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;Z)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/ak;->a()Lcom/google/googlenav/al;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/al;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/googlenav/al;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    const/4 v0, 0x0

    :goto_51
    invoke-static {v4, p3, v3, v2, v0}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;ZZLbb/a;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v0, v3

    goto :goto_5

    :cond_5a
    new-instance v1, Lbb/a;

    const/4 v5, 0x5

    const/4 v6, -0x1

    invoke-virtual {v0}, Lcom/google/googlenav/al;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v6, v0}, Lbb/a;-><init>(IILjava/lang/Object;)V

    move-object v0, v1

    goto :goto_51
.end method

.method public static b(Lcom/google/googlenav/ah;ZZ)Lbb/a;
    .registers 9

    const/4 v5, -0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_f

    if-eqz p1, :cond_10

    new-instance v0, Lbb/a;

    const/16 v1, 0xf

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lbb/a;-><init>(II)V

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->Z()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->O()[Lcom/google/googlenav/au;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->O()[Lcom/google/googlenav/au;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_41

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->N()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35

    new-instance v0, Lbb/a;

    const/16 v2, 0x907

    invoke-direct {v0, v2, v5, v1}, Lbb/a;-><init>(IILjava/lang/Object;)V

    goto :goto_f

    :cond_35
    new-instance v0, Lbb/a;

    const/16 v1, 0x908

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->O()[Lcom/google/googlenav/au;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lbb/a;-><init>(IILjava/lang/Object;)V

    goto :goto_f

    :cond_41
    new-instance v0, Lbb/a;

    const/4 v1, 0x5

    invoke-static {p0}, LaY/aq;->b(Lcom/google/googlenav/ah;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lbb/a;-><init>(IILjava/lang/Object;)V

    goto :goto_f
.end method

.method public static b(Lcom/google/googlenav/ah;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LaY/aq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&ppmode=image&cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

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

.method public static b(Lcom/google/googlenav/ah;Ljava/util/Vector;Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bs()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    const/16 v0, 0x254

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c3

    invoke-static {p1, v0, v1, p2}, LaY/aq;->a(Ljava/util/Vector;Ljava/lang/String;IZ)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->n(I)V

    goto :goto_6
.end method

.method public static b(Lcom/google/googlenav/ah;Z)V
    .registers 3

    if-eqz p1, :cond_8

    const/16 v0, 0x1b

    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->n(I)V

    return-void

    :cond_8
    const/16 v0, 0x1a

    goto :goto_4
.end method

.method public static c(Lcom/google/googlenav/ah;Z)Ljava/lang/String;
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->z()[Lcom/google/googlenav/ah;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_30

    const/16 v0, 0x22b

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_14
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->y()I

    move-result v2

    if-le v2, v4, :cond_37

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v3

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->y()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2f
    return-object v0

    :cond_30
    const/16 v0, 0x22d

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_37
    move-object v0, v1

    goto :goto_2f
.end method

.method public static c(Lcom/google/googlenav/ah;Ljava/util/Vector;Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->C()LaJ/g;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->af()Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x414

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x25a

    invoke-static {p1, v0, v1, p2}, LaY/aq;->a(Ljava/util/Vector;Ljava/lang/String;IZ)V

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->n(I)V

    goto :goto_6
.end method

.method public static c(Lcom/google/googlenav/ah;)[I
    .registers 9

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_4a

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v1

    if-nez v1, :cond_13

    :cond_12
    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {v1}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1, v4}, Lam/b;->h(I)Lam/b;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-virtual {v2, v4}, Lam/b;->l(I)I

    move-result v2

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v0, v5

    rsub-int/lit8 v2, v2, 0x3

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v0, v4

    :cond_31
    invoke-virtual {v1, v7}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1, v4}, Lam/b;->l(I)I

    move-result v1

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v0, v7

    rsub-int/lit8 v1, v1, 0x3

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v0, v6

    goto :goto_12

    :array_4a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static d(Lcom/google/googlenav/ah;Ljava/util/Vector;Z)V
    .registers 3

    return-void
.end method

.method public static d(Lcom/google/googlenav/ah;)[I
    .registers 5

    const/4 v3, 0x2

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v0

    if-nez v0, :cond_c

    sget-object v0, LaY/aq;->a:[I

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {v0}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v0

    if-nez v0, :cond_15

    sget-object v0, LaY/aq;->a:[I

    goto :goto_b

    :cond_15
    invoke-virtual {v0, v3}, Lam/b;->l(I)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lam/b;->l(I)I

    move-result v2

    new-array v0, v3, [I

    const/4 v3, 0x0

    aput v1, v0, v3

    const/4 v1, 0x1

    aput v2, v0, v1

    goto :goto_b
.end method

.method public static e(Lcom/google/googlenav/ah;)Ljava/util/Vector;
    .registers 4

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aC()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aC()Ljava/lang/String;

    move-result-object v0

    :goto_f
    sget-object v2, Lcom/google/googlenav/ui/bg;->C:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aD()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/bg;->D:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aE()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/bg;->D:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aF()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/bg;->D:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_40
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public static e(Lcom/google/googlenav/ah;Ljava/util/Vector;Z)V
    .registers 10

    const/4 v6, 0x0

    const/16 v5, 0x2c1

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->ak()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aW()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aU()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aV()I

    move-result v1

    if-eq v1, v4, :cond_a

    if-lez v1, :cond_66

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    const/16 v0, 0x1e0

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/String;

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v5, p2}, LaY/aq;->a(Ljava/util/Vector;Ljava/lang/String;IZ)V

    :goto_4b
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->n(I)V

    goto :goto_a

    :cond_51
    const/16 v2, 0x1de

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v6

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v5, p2}, LaY/aq;->a(Ljava/util/Vector;Ljava/lang/String;IZ)V

    goto :goto_4b

    :cond_66
    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_76

    const/16 v0, 0x1e1

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v5, p2}, LaY/aq;->a(Ljava/util/Vector;Ljava/lang/String;IZ)V

    goto :goto_4b

    :cond_76
    const/16 v1, 0x1df

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v5, p2}, LaY/aq;->a(Ljava/util/Vector;Ljava/lang/String;IZ)V

    goto :goto_4b
.end method

.method public static f(Lcom/google/googlenav/ah;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v1

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {v1}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {v1, v2}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    invoke-static {v0, v2}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static f(Lcom/google/googlenav/ah;Ljava/util/Vector;Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->af()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    const/16 v0, 0x43e

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p1, v0, v1, p2}, LaY/aq;->a(Ljava/util/Vector;Ljava/lang/String;IZ)V

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->n(I)V

    goto :goto_6
.end method

.method public static g(Lcom/google/googlenav/ah;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bM()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, LaE/h;->a()LaE/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v1

    invoke-static {v0, v1}, LaP/g;->a(LaE/h;LaJ/B;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    const/16 v1, 0xfa

    if-ge v0, v1, :cond_1d

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->d(Z)V

    :cond_1d
    return-void
.end method

.method public static g(Lcom/google/googlenav/ah;Ljava/util/Vector;Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->ad()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->ac()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->F()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->H()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_21
    const/16 v0, 0x21

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2bf

    invoke-static {p1, v0, v1, p2}, LaY/aq;->a(Ljava/util/Vector;Ljava/lang/String;IZ)V

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->n(I)V

    goto :goto_c
.end method

.method public static h(Lcom/google/googlenav/ah;)V
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bN()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/google/googlenav/aJ;->a()Lcom/google/googlenav/aJ;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/aJ;->a(Lcom/google/googlenav/ah;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->e(Z)V

    :cond_11
    return-void
.end method

.method public static h(Lcom/google/googlenav/ah;Ljava/util/Vector;Z)V
    .registers 5

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->n()Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, LaC/c;->a:LaC/c;

    invoke-virtual {v0}, LaC/c;->e()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_23

    const/16 v0, 0x2a2

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {p1, v0, v1, p2}, LaY/aq;->a(Ljava/util/Vector;Ljava/lang/String;IZ)V

    :cond_23
    return-void
.end method
