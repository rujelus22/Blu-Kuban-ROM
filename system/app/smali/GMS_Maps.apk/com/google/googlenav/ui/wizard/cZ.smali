.class public Lcom/google/googlenav/ui/wizard/cZ;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Z

.field d:Ljava/lang/Boolean;

.field e:LaJ/B;

.field f:I

.field g:Ljava/lang/String;

.field h:Lcom/google/googlenav/ui/wizard/cR;

.field i:I

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:B

.field m:Z

.field n:Z

.field o:Lam/b;

.field p:Lam/b;

.field q:Ljava/util/List;

.field r:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/cZ;->b:I

    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/cZ;->c:Z

    const v0, 0x1869f

    iput v0, p0, Lcom/google/googlenav/ui/wizard/cZ;->f:I

    iput v1, p0, Lcom/google/googlenav/ui/wizard/cZ;->i:I

    return-void
.end method


# virtual methods
.method public a(B)Lcom/google/googlenav/ui/wizard/cZ;
    .registers 2

    iput-byte p1, p0, Lcom/google/googlenav/ui/wizard/cZ;->l:B

    return-object p0
.end method

.method public a(I)Lcom/google/googlenav/ui/wizard/cZ;
    .registers 2

    iput p1, p0, Lcom/google/googlenav/ui/wizard/cZ;->b:I

    return-object p0
.end method

.method public a(Lam/b;)Lcom/google/googlenav/ui/wizard/cZ;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cZ;->o:Lam/b;

    return-object p0
.end method

.method public a(Lcom/google/googlenav/ui/wizard/cR;)Lcom/google/googlenav/ui/wizard/cZ;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cZ;->h:Lcom/google/googlenav/ui/wizard/cR;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/cZ;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cZ;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/google/googlenav/ui/wizard/cZ;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cZ;->q:Ljava/util/List;

    return-object p0
.end method

.method public a(Z)Lcom/google/googlenav/ui/wizard/cZ;
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cZ;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method a()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cZ;->h:Lcom/google/googlenav/ui/wizard/cR;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No callback provided to LocationSelectionWizard."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget v0, p0, Lcom/google/googlenav/ui/wizard/cZ;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sourceOption provided to LocationSelectionWizard."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    return-void
.end method

.method public b(I)Lcom/google/googlenav/ui/wizard/cZ;
    .registers 2

    iput p1, p0, Lcom/google/googlenav/ui/wizard/cZ;->i:I

    return-object p0
.end method

.method public b(Lam/b;)Lcom/google/googlenav/ui/wizard/cZ;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cZ;->p:Lam/b;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/cZ;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cZ;->g:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/google/googlenav/ui/wizard/cZ;
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/wizard/cZ;->c:Z

    return-object p0
.end method

.method b()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cZ;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cZ;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/google/googlenav/ui/wizard/cZ;->b:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_a

    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public c(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/cZ;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cZ;->j:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/google/googlenav/ui/wizard/cZ;
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/wizard/cZ;->m:Z

    return-object p0
.end method

.method c()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cZ;->p:Lam/b;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cZ;->q:Ljava/util/List;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public d(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/cZ;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cZ;->k:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)Lcom/google/googlenav/ui/wizard/cZ;
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/wizard/cZ;->n:Z

    return-object p0
.end method

.method public e(Z)Lcom/google/googlenav/ui/wizard/cZ;
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/wizard/cZ;->r:Z

    return-object p0
.end method
