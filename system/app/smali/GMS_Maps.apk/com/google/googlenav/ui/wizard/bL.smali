.class public Lcom/google/googlenav/ui/wizard/bL;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/bN;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/bL;)Lcom/google/googlenav/ui/wizard/bN;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bL;->a:Lcom/google/googlenav/ui/wizard/bN;

    return-object v0
.end method


# virtual methods
.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bL;->o()V

    :cond_b
    const/4 v0, 0x3

    return v0
.end method

.method public a(Laq/c;)I
    .registers 3

    const/4 v0, 0x3

    return v0
.end method

.method public a(Lcom/google/googlenav/ui/wizard/bN;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bL;->a:Lcom/google/googlenav/ui/wizard/bN;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bL;->l()V

    return-void
.end method

.method public b()V
    .registers 3

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/K;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/K;-><init>(Lcom/google/googlenav/ui/p;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bL;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bL;->f:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/K;

    new-instance v1, Lcom/google/googlenav/ui/wizard/bM;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/ui/wizard/bM;-><init>(Lcom/google/googlenav/ui/wizard/bL;Lcom/google/googlenav/ui/view/dialog/K;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/K;->a(Lcom/google/googlenav/ui/view/dialog/O;)V

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/K;->k()V

    return-void
.end method

.method public o()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bL;->a:Lcom/google/googlenav/ui/wizard/bN;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/bN;->b()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bL;->a()V

    return-void
.end method
