.class public abstract Lcom/google/googlenav/ui/wizard/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/p;


# instance fields
.field protected final b:Lcom/google/googlenav/ui/wizard/hM;

.field protected final c:Lcom/google/googlenav/ui/bw;

.field protected d:Z

.field protected e:I

.field protected f:Lcom/google/googlenav/ui/view/android/bs;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/z;->e:I

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/z;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/z;->c:Lcom/google/googlenav/ui/bw;

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public W_()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/z;->a()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/z;->l()V

    return-void
.end method

.method public X_()V
    .registers 1

    return-void
.end method

.method public Y_()V
    .registers 1

    return-void
.end method

.method public Z_()Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlenav/ui/wizard/z;->e:I

    if-eq v1, v0, :cond_a

    iget v1, p0, Lcom/google/googlenav/ui/wizard/z;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(LaJ/B;)I
    .registers 3

    const/4 v0, 0x3

    return v0
.end method

.method public a(Laq/a;)I
    .registers 3

    const/4 v0, 0x4

    return v0
.end method

.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/z;->a()V

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x3

    goto :goto_c
.end method

.method public a(Laq/c;)I
    .registers 3

    const/4 v0, 0x4

    return v0
.end method

.method public final a()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/z;->d:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/z;->b:Lcom/google/googlenav/ui/wizard/hM;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/z;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/wizard/hM;->b(Lcom/google/googlenav/ui/wizard/z;)V

    :cond_f
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/C;)V
    .registers 2

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public a(Z)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public b(Laq/b;)I
    .registers 3

    const/4 v0, 0x3

    return v0
.end method

.method protected b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/z;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/z;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    :cond_9
    return-void
.end method

.method public b(Lcom/google/googlenav/ui/C;)V
    .registers 2

    return-void
.end method

.method protected c()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/z;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/z;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/z;->f:Lcom/google/googlenav/ui/view/android/bs;

    :cond_c
    return-void
.end method

.method public k()[Laq/a;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/z;->d:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/z;->b:Lcom/google/googlenav/ui/wizard/hM;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/z;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/wizard/z;)V

    :cond_c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/z;->b()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/z;->b:Lcom/google/googlenav/ui/wizard/hM;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/z;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->o()V

    :cond_18
    return-void
.end method

.method public m()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public o()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/z;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/hM;->a(ILaq/b;)V

    return-void
.end method

.method public q()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/z;->f:Lcom/google/googlenav/ui/view/android/bs;

    instance-of v0, v0, Lcom/google/googlenav/ui/view/android/ap;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/z;->f:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/view/android/ap;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ap;->L_()Z

    move-result v0

    goto :goto_7
.end method

.method public r()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/z;->d:Z

    return v0
.end method

.method public t()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public u()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public v()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public w()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public x()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public y()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected z()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
