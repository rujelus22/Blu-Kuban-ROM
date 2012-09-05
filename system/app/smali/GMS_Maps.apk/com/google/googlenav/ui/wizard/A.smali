.class public Lcom/google/googlenav/ui/wizard/A;
.super Lcom/google/googlenav/ui/wizard/z;


# static fields
.field private static h:Ljava/util/List;

.field private static i:Ljava/util/List;

.field private static j:Ljava/util/List;


# instance fields
.field private a:Ljava/util/List;

.field private g:Ljava/util/Set;

.field private k:Lcom/google/googlenav/ui/wizard/B;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/googlenav/ui/wizard/A;->E()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/wizard/A;->h:Ljava/util/List;

    invoke-static {}, Lcom/google/googlenav/ui/wizard/A;->F()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/wizard/A;->i:Ljava/util/List;

    invoke-static {}, Lcom/google/googlenav/ui/wizard/A;->G()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/wizard/A;->j:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/A;->B()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/A;->C()V

    return-void
.end method

.method private B()V
    .registers 7

    const/4 v5, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/A;->a:Ljava/util/List;

    new-instance v1, Lam/b;

    sget-object v0, LbD/Z;->F:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    const-string v0, "PLACES_CUSTOM_CATEGORIES"

    invoke-static {v0, v1}, Lbf/c;->a(Ljava/lang/String;Lam/b;)Lam/b;

    invoke-virtual {v1, v5}, Lam/b;->l(I)I

    move-result v2

    const/16 v0, 0x57

    const-string v3, "n"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    :goto_24
    if-ge v0, v2, :cond_32

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/A;->a:Ljava/util/List;

    invoke-virtual {v1, v5, v0}, Lam/b;->f(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_32
    return-void
.end method

.method private C()V
    .registers 7

    const/4 v5, 0x1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/A;->g:Ljava/util/Set;

    new-instance v1, Lam/b;

    sget-object v0, LbD/Z;->G:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    const-string v0, "PLACES_HIDDEN_CATEGORIES"

    invoke-static {v0, v1}, Lbf/c;->a(Ljava/lang/String;Lam/b;)Lam/b;

    invoke-virtual {v1, v5}, Lam/b;->l(I)I

    move-result v2

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v2, :cond_2b

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/A;->g:Ljava/util/Set;

    invoke-virtual {v1, v5, v0}, Lam/b;->c(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2b
    return-void
.end method

.method private D()Ljava/util/List;
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/A;->f()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/C;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/C;->c:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/google/googlenav/ui/wizard/A;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget-object v3, Lcom/google/googlenav/ui/wizard/A;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lcom/google/googlenav/ui/wizard/A;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v2, Lcom/google/googlenav/ui/wizard/A;->j:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/A;->a(Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V

    sget-object v2, Lcom/google/googlenav/ui/wizard/A;->i:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/A;->a(Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V

    sget-object v2, Lcom/google/googlenav/ui/wizard/A;->h:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/A;->a(Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method private static E()Ljava/util/List;
    .registers 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/google/googlenav/ui/wizard/C;

    const/16 v2, 0x2e5

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Lcom/google/googlenav/ui/wizard/C;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/googlenav/ui/wizard/C;

    const/16 v2, 0x2df

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/google/googlenav/ui/wizard/C;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/googlenav/ui/wizard/C;

    const/16 v2, 0x2dc

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v4, v3}, Lcom/google/googlenav/ui/wizard/C;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/googlenav/ui/wizard/C;

    const/16 v2, 0x2db

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4, v5}, Lcom/google/googlenav/ui/wizard/C;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static F()Ljava/util/List;
    .registers 6

    const/4 v5, 0x6

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/google/googlenav/ui/wizard/C;

    const/16 v2, 0x2e0

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-direct {v1, v2, v4, v3}, Lcom/google/googlenav/ui/wizard/C;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/googlenav/ui/wizard/C;

    const/16 v2, 0x2da

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v4, v3}, Lcom/google/googlenav/ui/wizard/C;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/googlenav/ui/wizard/C;

    const/16 v2, 0x2e1

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4, v5}, Lcom/google/googlenav/ui/wizard/C;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/googlenav/ui/wizard/C;

    const/16 v2, 0x2e2

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v4, v3}, Lcom/google/googlenav/ui/wizard/C;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/googlenav/ui/wizard/C;

    const/16 v2, 0x2e4

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {v1, v2, v4, v3}, Lcom/google/googlenav/ui/wizard/C;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/googlenav/ui/wizard/C;

    const/16 v2, 0x2e8

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    invoke-direct {v1, v2, v4, v3}, Lcom/google/googlenav/ui/wizard/C;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static G()Ljava/util/List;
    .registers 5

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/google/googlenav/ui/wizard/C;

    const/16 v2, 0x2e3

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    invoke-direct {v1, v2, v4, v3}, Lcom/google/googlenav/ui/wizard/C;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/googlenav/ui/wizard/C;

    const/16 v2, 0x2dd

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    invoke-direct {v1, v2, v4, v3}, Lcom/google/googlenav/ui/wizard/C;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/googlenav/ui/wizard/C;

    const/16 v2, 0x2e6

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    invoke-direct {v1, v2, v4, v3}, Lcom/google/googlenav/ui/wizard/C;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ui/view/android/bs;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/A;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/A;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/A;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->hide()V

    :cond_11
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/A;->f:Lcom/google/googlenav/ui/view/android/bs;

    return-void
.end method

.method private static a(Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V
    .registers 6

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/C;

    iget-object v2, v0, Lcom/google/googlenav/ui/wizard/C;->c:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1c
    return-void
.end method

.method private b(Z)V
    .registers 3

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/A;->k:Lcom/google/googlenav/ui/wizard/B;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/A;->k:Lcom/google/googlenav/ui/wizard/B;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/B;->d()V

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/A;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/A;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/A;->f:Lcom/google/googlenav/ui/view/android/bs;

    :cond_17
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/A;->a()V

    return-void
.end method

.method public static h()V
    .registers 1

    invoke-static {}, Lcom/google/googlenav/ui/wizard/A;->E()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/wizard/A;->h:Ljava/util/List;

    invoke-static {}, Lcom/google/googlenav/ui/wizard/A;->F()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/wizard/A;->i:Ljava/util/List;

    return-void
.end method

.method private i()V
    .registers 6

    new-instance v2, Lam/b;

    sget-object v0, LbD/Z;->F:Lam/e;

    invoke-direct {v2, v0}, Lam/b;-><init>(Lam/e;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/A;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    if-ge v1, v3, :cond_21

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/A;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Lam/b;->a(ILjava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_21
    const-string v0, "PLACES_CUSTOM_CATEGORIES"

    invoke-static {v0, v2}, Lbf/c;->b(Ljava/lang/String;Lam/b;)V

    return-void
.end method

.method private j()V
    .registers 5

    new-instance v1, Lam/b;

    sget-object v0, LbD/Z;->G:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/A;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lam/b;->a(II)V

    goto :goto_d

    :cond_22
    const-string v0, "PLACES_HIDDEN_CATEGORIES"

    invoke-static {v0, v1}, Lbf/c;->b(Ljava/lang/String;Lam/b;)V

    return-void
.end method


# virtual methods
.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/A;->o()V

    :cond_b
    const/4 v0, 0x3

    return v0
.end method

.method public a(Laq/c;)I
    .registers 3

    const/4 v0, 0x3

    return v0
.end method

.method protected a(Lcom/google/googlenav/ui/wizard/B;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/A;->k:Lcom/google/googlenav/ui/wizard/B;

    new-instance v0, Lcom/google/googlenav/ui/wizard/a;

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/A;->D()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/wizard/a;-><init>(Lcom/google/googlenav/ui/wizard/A;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/A;->a(Lcom/google/googlenav/ui/view/android/bs;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/C;)V
    .registers 6

    const/16 v3, 0x57

    const/4 v2, 0x1

    iget-boolean v0, p1, Lcom/google/googlenav/ui/wizard/C;->a:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/A;->a:Ljava/util/List;

    iget v1, p1, Lcom/google/googlenav/ui/wizard/C;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/wizard/A;->b(Z)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/A;->i()V

    const-string v0, "rm"

    iget v1, p1, Lcom/google/googlenav/ui/wizard/C;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/A;->g:Ljava/util/Set;

    iget v1, p1, Lcom/google/googlenav/ui/wizard/C;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/wizard/A;->b(Z)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/A;->j()V

    const-string v0, "hdn"

    iget v1, p1, Lcom/google/googlenav/ui/wizard/C;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_1f
.end method

.method a(Lcom/google/googlenav/ui/wizard/C;Lcom/google/googlenav/ui/wizard/B;)V
    .registers 4

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/A;->k:Lcom/google/googlenav/ui/wizard/B;

    new-instance v0, Lcom/google/googlenav/ui/wizard/fV;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/wizard/fV;-><init>(Lcom/google/googlenav/ui/wizard/A;Lcom/google/googlenav/ui/wizard/C;)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/A;->a(Lcom/google/googlenav/ui/view/android/bs;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/A;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x57

    const-string v1, "a"

    invoke-static {v0, v1, p1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/A;->b(Z)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/A;->i()V

    return-void
.end method

.method protected b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/A;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/A;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    :cond_9
    return-void
.end method

.method protected c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/A;->k:Lcom/google/googlenav/ui/wizard/B;

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    return-void
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/A;->b(Z)V

    return-void
.end method

.method public f()Ljava/util/List;
    .registers 8

    new-instance v3, Ljava/util/ArrayList;

    sget-object v0, Lcom/google/googlenav/ui/wizard/A;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/A;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v0, Lcom/google/googlenav/ui/wizard/A;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/C;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/A;->g:Ljava/util/Set;

    iget v4, v0, Lcom/google/googlenav/ui/wizard/C;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_36
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/A;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Lcom/google/googlenav/ui/wizard/C;

    const/4 v6, 0x1

    add-int/lit8 v2, v1, 0x1

    invoke-direct {v5, v0, v6, v1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_3e

    :cond_57
    return-object v3
.end method

.method public g()Ljava/util/List;
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/A;->f()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/C;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/C;->c:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/google/googlenav/ui/wizard/A;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v2, Lcom/google/googlenav/ui/wizard/A;->i:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/A;->a(Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
