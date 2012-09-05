.class public Lcom/google/googlenav/ui/wizard/fO;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field private a:Lcom/google/googlenav/aV;

.field private g:Lcom/google/googlenav/aX;

.field private h:Lcom/google/googlenav/L;

.field private i:Z

.field private j:Landroid/widget/ArrayAdapter;

.field private k:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/fO;->h:Lcom/google/googlenav/L;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/fO;)Landroid/view/LayoutInflater;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fO;->k:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/fO;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fO;->k:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/fO;Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fO;->j:Landroid/widget/ArrayAdapter;

    return-object p1
.end method

.method public static a(Lcom/google/googlenav/L;Lcom/google/googlenav/aV;ILcom/google/googlenav/aX;Ljava/lang/String;)V
    .registers 15

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->aD()[Ljava/lang/String;

    move-result-object v0

    aget-object v4, v0, p2

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->K()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string v1, ""

    const-string v1, " loc:"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_11f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x4eb

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "2"

    const-string v0, "l"

    :goto_41
    const/16 v5, 0x59

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "i="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "t="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v6}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, p4, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    const/16 v1, 0x70

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "u="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/google/googlenav/bI;->a(Lcom/google/googlenav/aV;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "q="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "s="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    const/4 v0, 0x3

    const-string v4, "ui=se"

    aput-object v4, v5, v0

    const/4 v0, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "i="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    invoke-static {v5}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p4, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Lcom/google/googlenav/bc;

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->m()Lcom/google/googlenav/bb;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/bc;-><init>(Lcom/google/googlenav/bb;)V

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bc;->c(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->b(I)Lcom/google/googlenav/bc;

    move-result-object v0

    const-string v1, "20"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->b(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/bc;->a(Lcom/google/googlenav/aX;)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->S()LaJ/H;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->a(LaJ/H;)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->ax()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->c(Z)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/googlenav/L;->a(Lcom/google/googlenav/bb;)V

    return-void

    :cond_11f
    invoke-static {v4, v0}, Lcom/google/googlenav/aV;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "1"

    const-string v0, "t"

    goto/16 :goto_41
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/fO;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fO;->e()V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/fO;)Landroid/widget/ArrayAdapter;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fO;->j:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/fO;)Lcom/google/googlenav/L;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fO;->h:Lcom/google/googlenav/L;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/wizard/fO;)Lcom/google/googlenav/aV;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fO;->a:Lcom/google/googlenav/aV;

    return-object v0
.end method

.method private e()V
    .registers 8

    const/4 v2, 0x0

    const/4 v6, -0x1

    move v1, v2

    :goto_3
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fO;->a:Lcom/google/googlenav/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->aD()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_80

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fO;->a:Lcom/google/googlenav/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->aD()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    const-string v3, " loc:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-boolean v4, p0, Lcom/google/googlenav/ui/wizard/fO;->i:Z

    if-eqz v4, :cond_24

    if-ne v3, v6, :cond_26

    :cond_20
    :goto_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_24
    if-ne v3, v6, :cond_20

    :cond_26
    if-eq v3, v6, :cond_54

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " loc:"

    const-string v4, ""

    invoke-static {v0, v4, v3}, Las/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I

    const/16 v0, 0x37c

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/fO;->a:Lcom/google/googlenav/aV;

    invoke-virtual {v5}, Lcom/google/googlenav/aV;->J()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v0, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_54
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    sget-object v3, Lcom/google/googlenav/ui/bg;->au:Lcom/google/googlenav/ui/bg;

    sget-object v5, Lcom/google/googlenav/ui/bg;->av:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v3, v5}, Lcom/google/googlenav/ui/bi;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;)Ljava/util/Vector;

    move-result-object v5

    move v3, v2

    :goto_62
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_75

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_62

    :cond_75
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fO;->j:Landroid/widget/ArrayAdapter;

    new-instance v3, Lcom/google/googlenav/ui/wizard/fQ;

    invoke-direct {v3, v4, v1}, Lcom/google/googlenav/ui/wizard/fQ;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_20

    :cond_80
    return-void
.end method

.method static synthetic f(Lcom/google/googlenav/ui/wizard/fO;)Lcom/google/googlenav/aX;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fO;->g:Lcom/google/googlenav/aX;

    return-object v0
.end method


# virtual methods
.method public W_()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fO;->a:Lcom/google/googlenav/aV;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fO;->a()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fO;->g:Lcom/google/googlenav/aX;

    iget-boolean v2, p0, Lcom/google/googlenav/ui/wizard/fO;->i:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlenav/ui/wizard/fO;->a(Lcom/google/googlenav/aV;Lcom/google/googlenav/aX;Z)V

    return-void
.end method

.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x2

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x3

    goto :goto_9
.end method

.method public a(Laq/c;)I
    .registers 3

    const/4 v0, 0x3

    return v0
.end method

.method public a(Lcom/google/googlenav/aV;Lcom/google/googlenav/aX;Z)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fO;->a:Lcom/google/googlenav/aV;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/fO;->g:Lcom/google/googlenav/aX;

    iput-boolean p3, p0, Lcom/google/googlenav/ui/wizard/fO;->i:Z

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->l()V

    return-void
.end method

.method protected b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fO;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/googlenav/ui/wizard/fR;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/fR;-><init>(Lcom/google/googlenav/ui/wizard/fO;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fO;->f:Lcom/google/googlenav/ui/view/android/bs;

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fO;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    return-void
.end method

.method protected c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fO;->a:Lcom/google/googlenav/aV;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fO;->g:Lcom/google/googlenav/aX;

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    return-void
.end method
