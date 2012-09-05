.class public Lcom/google/googlenav/ui/ad;
.super Lcom/google/googlenav/ui/ae;


# static fields
.field private static final f:Ljava/lang/Character;

.field private static final g:Ljava/lang/Character;

.field private static final h:Ljava/lang/Character;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/google/googlenav/ui/ad;->f:Ljava/lang/Character;

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/google/googlenav/ui/ad;->g:Ljava/lang/Character;

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/google/googlenav/ui/ad;->h:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 5

    invoke-direct {p0}, Lcom/google/googlenav/ui/ae;-><init>()V

    iput-boolean p2, p0, Lcom/google/googlenav/ui/ad;->b:Z

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/google/googlenav/ui/n;->F:Laq/a;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/ad;->b(Laq/a;)V

    :cond_14
    invoke-static {}, Lcom/google/googlenav/M;->A()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/google/googlenav/ui/n;->G:Laq/a;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/ad;->b(Laq/a;)V

    :cond_1f
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->an()Z

    move-result v0

    if-nez v0, :cond_3c

    sget-object v0, Lcom/google/googlenav/ui/n;->H:Laq/a;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/ad;->b(Laq/a;)V

    sget-object v0, Lcom/google/googlenav/ui/n;->I:Laq/a;

    sget-object v1, Lcom/google/googlenav/ui/ad;->f:Ljava/lang/Character;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/ad;->a(Laq/a;Ljava/lang/Character;)V

    sget-object v0, Lcom/google/googlenav/ui/n;->P:Laq/a;

    sget-object v1, Lcom/google/googlenav/ui/ad;->h:Ljava/lang/Character;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/ad;->a(Laq/a;Ljava/lang/Character;)V

    :cond_3c
    sget-object v0, Lcom/google/googlenav/ui/n;->Q:Laq/a;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/ad;->b(Laq/a;)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->an()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->q()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-static {}, Laf/d;->b()Z

    move-result v0

    if-eqz v0, :cond_6c

    :cond_5b
    sget-object v0, Lcom/google/googlenav/ui/n;->K:Laq/a;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/ad;->b(Laq/a;)V

    sget-object v0, Lcom/google/googlenav/ui/n;->J:Laq/a;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/ad;->b(Laq/a;)V

    sget-object v0, Lcom/google/googlenav/ui/n;->R:Laq/a;

    sget-object v1, Lcom/google/googlenav/ui/ad;->g:Ljava/lang/Character;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/ad;->a(Laq/a;Ljava/lang/Character;)V

    :cond_6c
    sget-object v0, Lcom/google/googlenav/ui/n;->Z:Laq/a;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/ad;->b(Laq/a;)V

    sget-object v0, Lcom/google/googlenav/ui/n;->aa:Laq/a;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/ad;->b(Laq/a;)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->q()Z

    move-result v0

    if-eqz v0, :cond_85

    sget-object v0, Lcom/google/googlenav/ui/n;->Y:Laq/a;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/ad;->b(Laq/a;)V

    :cond_85
    sget-object v0, Lcom/google/googlenav/ui/n;->ay:Laq/a;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/ad;->b(Laq/a;)V

    sget-object v0, Lcom/google/googlenav/ui/n;->az:Laq/a;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/ad;->b(Laq/a;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/ad;->a:Z

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/google/googlenav/ui/ad;->a:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/ad;->b()V

    goto :goto_4
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/ad;->e:Z

    return v0
.end method

.method public a(Laq/a;)Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/ad;->a()Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object v0, Lcom/google/googlenav/ui/n;->ay:Laq/a;

    invoke-virtual {v0, p1}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lcom/google/googlenav/ui/n;->az:Laq/a;

    invoke-virtual {v1, p1}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_15
    :goto_15
    return v0

    :cond_16
    sget-object v2, Lcom/google/googlenav/ui/n;->ay:Laq/a;

    invoke-virtual {v2, p1}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    sget-object v2, Lcom/google/googlenav/ui/n;->az:Laq/a;

    invoke-virtual {v2, p1}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :cond_26
    invoke-virtual {p0}, Lcom/google/googlenav/ui/ad;->a()Z

    move-result v0

    goto :goto_15

    :cond_2b
    sget-object v2, Lcom/google/googlenav/ui/n;->N:Laq/a;

    invoke-virtual {v2, p1}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-boolean v2, p0, Lcom/google/googlenav/ui/ad;->b:Z

    if-eqz v2, :cond_15

    move v0, v1

    goto :goto_15

    :cond_39
    sget-object v2, Lcom/google/googlenav/ui/n;->O:Laq/a;

    invoke-virtual {v2, p1}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-boolean v0, p0, Lcom/google/googlenav/ui/ad;->b:Z

    goto :goto_15

    :cond_44
    sget-object v2, Lcom/google/googlenav/ui/n;->L:Laq/a;

    invoke-virtual {v2, p1}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    iget-boolean v2, p0, Lcom/google/googlenav/ui/ad;->a:Z

    if-eqz v2, :cond_15

    move v0, v1

    goto :goto_15

    :cond_52
    sget-object v2, Lcom/google/googlenav/ui/n;->M:Laq/a;

    invoke-virtual {v2, p1}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-boolean v0, p0, Lcom/google/googlenav/ui/ad;->a:Z

    goto :goto_15

    :cond_5d
    sget-object v2, Lcom/google/googlenav/ui/n;->K:Laq/a;

    invoke-virtual {v2, p1}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->i()Z

    move-result v2

    if-eqz v2, :cond_73

    iget-boolean v2, p0, Lcom/google/googlenav/ui/ad;->c:Z

    if-nez v2, :cond_15

    :cond_73
    move v0, v1

    goto :goto_15

    :cond_75
    sget-object v2, Lcom/google/googlenav/ui/n;->J:Laq/a;

    invoke-virtual {v2, p1}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->i()Z

    move-result v2

    if-eqz v2, :cond_8b

    iget-boolean v2, p0, Lcom/google/googlenav/ui/ad;->c:Z

    if-eqz v2, :cond_15

    :cond_8b
    move v0, v1

    goto :goto_15

    :cond_8d
    sget-object v2, Lcom/google/googlenav/ui/n;->af:Laq/a;

    invoke-virtual {v2, p1}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    iget-boolean v2, p0, Lcom/google/googlenav/ui/ad;->d:Z

    if-eqz v2, :cond_15

    move v0, v1

    goto/16 :goto_15

    :cond_9c
    sget-object v1, Lcom/google/googlenav/ui/n;->ag:Laq/a;

    invoke-virtual {v1, p1}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    iget-boolean v0, p0, Lcom/google/googlenav/ui/ad;->d:Z

    goto/16 :goto_15

    :cond_a8
    sget-object v1, Lcom/google/googlenav/ui/n;->ad:Laq/a;

    invoke-virtual {v1, p1}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v0, LaB/f;->a:LaB/f;

    invoke-virtual {v0}, LaB/f;->e()Z

    move-result v0

    goto/16 :goto_15
.end method

.method public b(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/ad;->b:Z

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/google/googlenav/ui/ad;->b:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/ad;->b()V

    goto :goto_4
.end method

.method public c(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/ad;->c:Z

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/google/googlenav/ui/ad;->c:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/ad;->b()V

    goto :goto_4
.end method

.method public d(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/ad;->d:Z

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/google/googlenav/ui/ad;->d:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/ad;->b()V

    goto :goto_4
.end method

.method public e(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/ad;->e:Z

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/google/googlenav/ui/ad;->e:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/ad;->b()V

    goto :goto_4
.end method
