.class Lbd/G;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/util/List;

.field d:Ljava/lang/String;

.field e:Ljava/lang/CharSequence;

.field f:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lam/b;Lam/b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbd/G;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbd/G;->f:Ljava/util/List;

    iput-object p1, p0, Lbd/G;->a:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lbd/G;->a(Lam/b;Lam/b;)V

    return-void
.end method

.method private a(Lam/b;II)Ljava/lang/CharSequence;
    .registers 9

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Lam/b;->l(I)I

    move-result v3

    move v0, v1

    :goto_b
    if-ge v0, v3, :cond_20

    invoke-virtual {p1, p2, v0}, Lam/b;->f(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, -0x1

    if-ge v0, v4, :cond_1d

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_40

    invoke-static {p3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    sget-object v2, Lcom/google/googlenav/ui/bg;->aS:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :goto_3f
    return-object v0

    :cond_40
    const-string v0, ""

    goto :goto_3f
.end method

.method private a(Lam/b;Z)Ljava/lang/CharSequence;
    .registers 12

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v0, v6

    if-lez v0, :cond_42

    move v0, v3

    :goto_1d
    if-eqz v0, :cond_6f

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    if-eqz p2, :cond_44

    move-object v0, v1

    :goto_27
    sget-object v7, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    sget-object v8, Lcom/google/googlenav/ui/bg;->aS:Lcom/google/googlenav/ui/bg;

    invoke-static {v6, v0, v7, v8}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;)V

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_32
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    invoke-static {v0, v5}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    goto :goto_32

    :cond_42
    move v0, v4

    goto :goto_1d

    :cond_44
    move-object v0, v2

    goto :goto_27

    :cond_46
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_70

    move v0, v3

    :goto_51
    if-eqz v0, :cond_6f

    const-string v0, " "

    sget-object v1, Lcom/google/googlenav/ui/bg;->aV:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    if-eqz p2, :cond_72

    const/16 v0, 0x3ab

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_66
    sget-object v1, Lcom/google/googlenav/ui/bg;->aV:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    :cond_6f
    return-object v5

    :cond_70
    move v0, v4

    goto :goto_51

    :cond_72
    const/16 v0, 0x3ac

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_66
.end method

.method private a(Lam/b;)V
    .registers 4

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbd/G;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Lam/b;Lam/b;)V
    .registers 8

    const/4 v4, 0x1

    if-eqz p1, :cond_20

    invoke-direct {p0, p1}, Lbd/G;->a(Lam/b;)V

    invoke-virtual {p1, v4}, Lam/b;->l(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_1d

    invoke-virtual {p1, v4, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    iget-object v3, p0, Lbd/G;->c:Ljava/util/List;

    invoke-direct {p0, v2}, Lbd/G;->b(Lam/b;)Lbd/H;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1d
    invoke-direct {p0, p1}, Lbd/G;->d(Lam/b;)V

    :cond_20
    if-eqz p2, :cond_25

    invoke-direct {p0, p2}, Lbd/G;->e(Lam/b;)V

    :cond_25
    return-void
.end method

.method private b(Lam/b;)Lbd/H;
    .registers 7

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-instance v0, Lbd/H;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbd/H;-><init>(Lbd/y;)V

    iput-object p1, v0, Lbd/H;->a:Lam/b;

    invoke-static {p1, v4}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v1

    invoke-static {v1, v4}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v2

    invoke-static {v1, v3}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbd/H;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbd/H;->c:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {p1, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbd/H;->d:Ljava/lang/String;

    :cond_3e
    invoke-direct {p0, p1}, Lbd/G;->c(Lam/b;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lbd/H;->e:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lbd/G;->a(Lam/b;Z)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lbd/H;->f:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v4}, Lbd/G;->a(Lam/b;Z)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lbd/H;->g:Ljava/lang/CharSequence;

    const/16 v1, 0x9

    const/16 v2, 0x3d

    invoke-direct {p0, p1, v1, v2}, Lbd/G;->a(Lam/b;II)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lbd/H;->h:Ljava/lang/CharSequence;

    const/16 v1, 0xa

    const/16 v2, 0x3c

    invoke-direct {p0, p1, v1, v2}, Lbd/G;->a(Lam/b;II)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lbd/H;->i:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private c(Lam/b;)Ljava/lang/CharSequence;
    .registers 6

    const/4 v3, 0x3

    const/4 v2, 0x2

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {p1, v2}, Lam/b;->d(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/ah;->k(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    const-string v1, " "

    sget-object v2, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    :cond_29
    invoke-virtual {p1, v3}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-static {p1, v3}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\<.*?>"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->aS:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    const-string v1, " "

    sget-object v2, Lcom/google/googlenav/ui/bg;->aS:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    :cond_4f
    return-object v0
.end method

.method private d(Lam/b;)V
    .registers 5

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " \u00bb"

    const-string v2, ""

    invoke-static {v0, v2, v1}, Las/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbd/G;->d:Ljava/lang/String;

    return-void
.end method

.method private e(Lam/b;)V
    .registers 12

    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    invoke-virtual {p1, v9}, Lam/b;->l(I)I

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    return-void

    :cond_a
    invoke-static {p1, v8}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    invoke-static {v0, v8}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/google/googlenav/ui/bg;->aX:Lcom/google/googlenav/ui/bg;

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    iput-object v4, p0, Lbd/G;->e:Ljava/lang/CharSequence;

    move v0, v1

    :goto_27
    if-ge v0, v2, :cond_9

    invoke-virtual {p1, v9, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v9}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v5

    invoke-static {v5, v9}, Lam/g;->e(Lam/b;I)I

    move-result v5

    if-eqz v4, :cond_7b

    if-eqz v5, :cond_7b

    const/16 v6, 0x353

    invoke-static {v6}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/String;

    aput-object v4, v7, v1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v8}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v3

    invoke-static {v3, v8}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v3, v6}, Lam/g;->g(Lam/b;I)J

    move-result-wide v6

    long-to-int v3, v6

    if-nez v3, :cond_7b

    invoke-static {v5}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7b

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    iget-object v4, p0, Lbd/G;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_27
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lbd/G;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
