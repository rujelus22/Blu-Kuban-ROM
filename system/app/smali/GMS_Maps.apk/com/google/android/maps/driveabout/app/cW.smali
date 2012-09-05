.class public Lcom/google/android/maps/driveabout/app/cW;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lu/I;

.field protected b:Z

.field protected c:Z

.field protected d:Z

.field protected e:Lcom/google/android/maps/driveabout/vector/I;

.field protected f:I

.field protected g:Z

.field protected final h:Lcom/google/android/maps/driveabout/app/cu;

.field protected i:Landroid/content/Context;

.field private final j:Lcom/google/android/maps/driveabout/app/bv;

.field private final k:Lcom/google/android/maps/driveabout/app/cX;

.field private final l:Lcom/google/android/maps/driveabout/app/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/a;Lcom/google/android/maps/driveabout/app/bv;Lcom/google/android/maps/driveabout/app/cX;Lcom/google/android/maps/driveabout/vector/dl;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->a:Lcom/google/android/maps/driveabout/vector/I;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cW;->e:Lcom/google/android/maps/driveabout/vector/I;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cW;->i:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cW;->l:Lcom/google/android/maps/driveabout/app/a;

    new-instance v0, Lcom/google/android/maps/driveabout/app/cu;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/app/cu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cW;->h:Lcom/google/android/maps/driveabout/app/cu;

    if-eqz p5, :cond_19

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cW;->h:Lcom/google/android/maps/driveabout/app/cu;

    invoke-virtual {v0, p5}, Lcom/google/android/maps/driveabout/app/cu;->a(Lcom/google/android/maps/driveabout/vector/dl;)V

    :cond_19
    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/cW;->j:Lcom/google/android/maps/driveabout/app/bv;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/cW;->k:Lcom/google/android/maps/driveabout/app/cX;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cW;->i:Landroid/content/Context;

    const-string v1, "HeadingUpPreferred"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lz/r;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cW;->d:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/maps/driveabout/app/cu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cW;->h:Lcom/google/android/maps/driveabout/app/cu;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/app/cW;->f:I

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/I;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cW;->e:Lcom/google/android/maps/driveabout/vector/I;

    return-void
.end method

.method public a(Lu/I;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cW;->a:Lu/I;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/cW;->b:Z

    return-void
.end method

.method public b()Lu/I;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cW;->a:Lu/I;

    return-object v0
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/cW;->g:Z

    return-void
.end method

.method public c()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/cW;->f:I

    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/cW;->c:Z

    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/cW;->f:I

    return v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cW;->d:Z

    return v0
.end method

.method public f()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cW;->d:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cW;->d:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cW;->i:Landroid/content/Context;

    const-string v1, "HeadingUpPreferred"

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/app/cW;->d:Z

    invoke-static {v0, v1, v2}, Lz/r;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cW;->b:Z

    return v0
.end method

.method public h()Lcom/google/android/maps/driveabout/vector/I;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cW;->e:Lcom/google/android/maps/driveabout/vector/I;

    return-object v0
.end method

.method public i()Lcom/google/android/maps/driveabout/app/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cW;->l:Lcom/google/android/maps/driveabout/app/a;

    return-object v0
.end method

.method public j()Lcom/google/android/maps/driveabout/app/bv;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cW;->j:Lcom/google/android/maps/driveabout/app/bv;

    return-object v0
.end method

.method public k()Lcom/google/android/maps/driveabout/app/cX;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cW;->k:Lcom/google/android/maps/driveabout/app/cX;

    return-object v0
.end method

.method public l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cW;->g:Z

    return v0
.end method

.method public m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cW;->c:Z

    return v0
.end method
