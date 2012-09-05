.class public Lcom/google/googlenav/ui/wizard/hI;
.super Lcom/google/googlenav/ui/wizard/z;


# static fields
.field private static g:I

.field private static final h:[C

.field private static j:Z

.field private static final k:Lar/u;


# instance fields
.field private a:Z

.field private i:Lcom/google/googlenav/ui/D;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [C

    sget-char v1, Lcom/google/googlenav/ui/bw;->aO:C

    aput-char v1, v0, v3

    const/4 v1, 0x1

    sget-char v2, Lcom/google/googlenav/ui/bw;->aP:C

    aput-char v2, v0, v1

    const/4 v1, 0x2

    sget-char v2, Lcom/google/googlenav/ui/bw;->aQ:C

    aput-char v2, v0, v1

    const/4 v1, 0x3

    sget-char v2, Lcom/google/googlenav/ui/bw;->aR:C

    aput-char v2, v0, v1

    sput-object v0, Lcom/google/googlenav/ui/wizard/hI;->h:[C

    sput-boolean v3, Lcom/google/googlenav/ui/wizard/hI;->j:Z

    new-instance v0, Lar/u;

    const-string v1, "WhatsNewWizard duration"

    const-string v2, "wnwd"

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lar/u;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/hI;->k:Lar/u;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    return-void
.end method

.method private static B()Ljava/util/List;
    .registers 4

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->i()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/16 v2, 0x509

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    const/16 v2, 0x511

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2f

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/wizard/hI;->a(Ljava/util/List;Lcom/google/googlenav/M;)V

    :cond_2f
    return-object v1
.end method

.method private static C()Lai/f;
    .registers 4

    sget v0, Lcom/google/googlenav/ui/wizard/hI;->g:I

    sget-object v1, Lcom/google/googlenav/ui/wizard/hI;->h:[C

    array-length v1, v1

    if-lt v0, v1, :cond_a

    const/4 v0, 0x0

    sput v0, Lcom/google/googlenav/ui/wizard/hI;->g:I

    :cond_a
    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->N()Lah/g;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/wizard/hI;->h:[C

    sget v2, Lcom/google/googlenav/ui/wizard/hI;->g:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/google/googlenav/ui/wizard/hI;->g:I

    aget-char v1, v1, v2

    invoke-interface {v0, v1}, Lah/g;->e(C)Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    return-object v0
.end method

.method static a(I)V
    .registers 6

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v1, "whatsnew"

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    int-to-byte v4, p0

    aput-byte v4, v2, v3

    invoke-interface {v0, v1, v2}, Lak/m;->a(Ljava/lang/String;[B)Z

    return-void
.end method

.method private static a(Ljava/util/List;Lcom/google/googlenav/M;)V
    .registers 2

    return-void
.end method

.method public static e()Z
    .registers 1

    invoke-static {}, Lcom/google/googlenav/ui/wizard/hI;->B()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static f()Z
    .registers 2

    sget-boolean v0, Lcom/google/googlenav/ui/wizard/hI;->j:Z

    if-nez v0, :cond_14

    invoke-static {}, Lcom/google/googlenav/ui/wizard/hI;->e()Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x1f

    invoke-static {}, Lcom/google/googlenav/ui/wizard/hI;->i()I

    move-result v1

    if-le v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static synthetic g()Ljava/util/List;
    .registers 1

    invoke-static {}, Lcom/google/googlenav/ui/wizard/hI;->B()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h()Lai/f;
    .registers 1

    invoke-static {}, Lcom/google/googlenav/ui/wizard/hI;->C()Lai/f;

    move-result-object v0

    return-object v0
.end method

.method private static i()I
    .registers 3

    const/4 v0, 0x0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v1

    const-string v2, "whatsnew"

    invoke-interface {v1, v2}, Lak/m;->a_(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_14

    array-length v2, v1

    if-nez v2, :cond_15

    :cond_14
    :goto_14
    return v0

    :cond_15
    aget-byte v0, v1, v0

    goto :goto_14
.end method

.method private static j()V
    .registers 1

    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/hI;->a(I)V

    return-void
.end method


# virtual methods
.method public X_()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hI;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    sget-object v0, Lcom/google/googlenav/ui/wizard/hI;->k:Lar/u;

    invoke-virtual {v0}, Lar/u;->c()V

    return-void
.end method

.method public Y_()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hI;->b()V

    sget-object v0, Lcom/google/googlenav/ui/wizard/hI;->k:Lar/u;

    invoke-virtual {v0}, Lar/u;->c()V

    return-void
.end method

.method public Z_()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/hI;->a:Z

    return v0
.end method

.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hI;->a()V

    :cond_b
    const/4 v0, 0x3

    return v0
.end method

.method public a(Laq/c;)I
    .registers 3

    const/4 v0, 0x3

    return v0
.end method

.method public final a(Lcom/google/googlenav/ui/D;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hI;->i:Lcom/google/googlenav/ui/D;

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->l()V

    sget-object v0, Lcom/google/googlenav/ui/wizard/hI;->k:Lar/u;

    invoke-virtual {v0}, Lar/u;->a()V

    return-void
.end method

.method protected b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hI;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hI;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->hide()V

    :cond_9
    new-instance v0, Lcom/google/googlenav/ui/wizard/hJ;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/hJ;-><init>(Lcom/google/googlenav/ui/wizard/hI;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hI;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hI;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    return-void
.end method

.method protected c()V
    .registers 4

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    sget-object v0, Lcom/google/googlenav/ui/wizard/hI;->k:Lar/u;

    invoke-virtual {v0}, Lar/u;->b()V

    invoke-static {}, Lcom/google/googlenav/ui/wizard/hI;->j()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hI;->i:Lcom/google/googlenav/ui/D;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hI;->i:Lcom/google/googlenav/ui/D;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->e(Z)V

    :cond_16
    iput-boolean v2, p0, Lcom/google/googlenav/ui/wizard/hI;->a:Z

    iput v2, p0, Lcom/google/googlenav/ui/wizard/hI;->e:I

    return-void
.end method
