.class public Lcom/google/googlenav/ui/wizard/eR;
.super Lcom/google/googlenav/ui/wizard/z;


# static fields
.field static final synthetic a:Z


# instance fields
.field private g:Lcom/google/googlenav/ui/wizard/eT;

.field private h:Lcom/google/googlenav/ui/wizard/eV;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/googlenav/ui/wizard/eR;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/googlenav/ui/wizard/eR;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eR;->g:Lcom/google/googlenav/ui/wizard/eT;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eR;)Lcom/google/googlenav/ui/wizard/eT;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eR;->g:Lcom/google/googlenav/ui/wizard/eT;

    return-object v0
.end method


# virtual methods
.method public W_()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eR;->g:Lcom/google/googlenav/ui/wizard/eT;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/eR;->g:Lcom/google/googlenav/ui/wizard/eT;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eR;->a()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eR;->g:Lcom/google/googlenav/ui/wizard/eT;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eR;->l()V

    return-void
.end method

.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eR;->o()V

    iget v0, p0, Lcom/google/googlenav/ui/wizard/eR;->e:I

    :goto_d
    return v0

    :cond_e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/eR;->e:I

    goto :goto_d
.end method

.method public a(Laq/c;)I
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/eR;->e:I

    return v0
.end method

.method protected a(Ljava/util/List;ZLcom/google/googlenav/ui/wizard/eU;)V
    .registers 6

    const-string v0, "o"

    invoke-static {v0}, Lax/aA;->g(Ljava/lang/String;)V

    sget-boolean v0, Lcom/google/googlenav/ui/wizard/eR;->a:Z

    if-nez v0, :cond_11

    if-nez p1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    new-instance v0, Lcom/google/googlenav/ui/wizard/eT;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/eT;-><init>(Lcom/google/googlenav/ui/wizard/eS;)V

    iput-object p1, v0, Lcom/google/googlenav/ui/wizard/eT;->a:Ljava/util/List;

    iput-boolean p2, v0, Lcom/google/googlenav/ui/wizard/eT;->b:Z

    iput-object p3, v0, Lcom/google/googlenav/ui/wizard/eT;->c:Lcom/google/googlenav/ui/wizard/eU;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eR;->g:Lcom/google/googlenav/ui/wizard/eT;

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->l()V

    return-void
.end method

.method public b()V
    .registers 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/eR;->e:I

    new-instance v0, Lcom/google/googlenav/ui/wizard/eV;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eR;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->H()Lay/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eR;->g:Lcom/google/googlenav/ui/wizard/eT;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/eT;->a:Ljava/util/List;

    new-instance v3, Lcom/google/googlenav/ui/wizard/eS;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/wizard/eS;-><init>(Lcom/google/googlenav/ui/wizard/eR;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/eV;-><init>(Lay/a;Ljava/util/List;Lcom/google/googlenav/ui/wizard/eZ;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eR;->h:Lcom/google/googlenav/ui/wizard/eV;

    new-instance v0, Lcom/google/googlenav/ui/wizard/fe;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eR;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->H()Lay/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eR;->g:Lcom/google/googlenav/ui/wizard/eT;

    iget-boolean v2, v2, Lcom/google/googlenav/ui/wizard/eT;->b:Z

    invoke-direct {v0, v1, v2, p0}, Lcom/google/googlenav/ui/wizard/fe;-><init>(Lay/a;ZLcom/google/googlenav/ui/p;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eR;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eR;->f:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/wizard/fe;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eR;->h:Lcom/google/googlenav/ui/wizard/eV;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/eV;->a()Lcom/google/googlenav/ui/wizard/eX;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/fe;->a(Lcom/google/googlenav/ui/wizard/eX;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eR;->h:Lcom/google/googlenav/ui/wizard/eV;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eR;->f:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/wizard/fe;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/eV;->a(Lcom/google/googlenav/ui/wizard/fe;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eR;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eR;->h:Lcom/google/googlenav/ui/wizard/eV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eV;->b()V

    return-void
.end method

.method protected c()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eR;->h:Lcom/google/googlenav/ui/wizard/eV;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/eV;->a(Lcom/google/googlenav/ui/wizard/fe;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eR;->f:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/wizard/fe;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/fe;->a(Lcom/google/googlenav/ui/wizard/eX;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/eR;->h:Lcom/google/googlenav/ui/wizard/eV;

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/eR;->g:Lcom/google/googlenav/ui/wizard/eT;

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    return-void
.end method

.method public o()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eR;->g:Lcom/google/googlenav/ui/wizard/eT;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/eT;->c:Lcom/google/googlenav/ui/wizard/eU;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eR;->g:Lcom/google/googlenav/ui/wizard/eT;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/eT;->c:Lcom/google/googlenav/ui/wizard/eU;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/eU;->a(Ljava/util/List;)V

    :cond_e
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eR;->a()V

    const-string v0, "d"

    invoke-static {v0}, Lax/aA;->g(Ljava/lang/String;)V

    return-void
.end method
