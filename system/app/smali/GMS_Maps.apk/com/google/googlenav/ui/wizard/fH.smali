.class Lcom/google/googlenav/ui/wizard/fH;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/bB;


# instance fields
.field private final a:Lcom/google/googlenav/ah;

.field private final b:Lcom/google/googlenav/L;

.field private final c:LaY/Y;

.field private final d:Lcom/google/googlenav/ui/wizard/fM;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ah;Lcom/google/googlenav/L;LaY/Y;Lcom/google/googlenav/ui/wizard/fM;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fH;->a:Lcom/google/googlenav/ah;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/fH;->b:Lcom/google/googlenav/L;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/fH;->c:LaY/Y;

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/fH;->d:Lcom/google/googlenav/ui/wizard/fM;

    return-void
.end method

.method private a(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fH;->b:Lcom/google/googlenav/L;

    invoke-interface {v0}, Lcom/google/googlenav/L;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fH;->b:Lcom/google/googlenav/L;

    invoke-static {p1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/16 v0, 0x34c

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/fH;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fH;->d:Lcom/google/googlenav/ui/wizard/fM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fM;->a()V

    return-void
.end method

.method public a(Lcom/google/googlenav/bC;)V
    .registers 7

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/googlenav/bC;->b()Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fH;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bB()Z

    move-result v0

    if-nez v0, :cond_84

    move v0, v1

    :goto_10
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/fH;->a:Lcom/google/googlenav/ah;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fH;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->bt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ah;->m(I)V

    invoke-static {}, Lcom/google/googlenav/aA;->a()Lcom/google/googlenav/aA;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fH;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/aA;->a(Lcom/google/googlenav/ah;Z)V

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/fH;->b:Lcom/google/googlenav/L;

    invoke-interface {v2}, Lcom/google/googlenav/L;->j()LaY/aT;

    move-result-object v2

    invoke-virtual {v2}, LaY/aT;->bJ()LaM/f;

    move-result-object v2

    invoke-interface {v2}, LaM/f;->g()LaM/i;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/fH;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v4}, Lcom/google/googlenav/ah;->A()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, LaM/i;->a(Ljava/lang/String;)LaM/m;

    move-result-object v3

    if-eqz v3, :cond_53

    invoke-virtual {v3}, LaM/m;->h()Z

    move-result v3

    if-eqz v3, :cond_53

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fH;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->A()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/fH;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v4}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v4

    invoke-interface {v2, v3, v4}, LaM/f;->b(Ljava/lang/String;Lam/b;)Z

    :cond_53
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/fH;->c:LaY/Y;

    invoke-virtual {v2}, LaY/Y;->I()LaY/i;

    move-result-object v2

    invoke-virtual {v2, v1}, LaY/i;->f(Z)V

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/fH;->d:Lcom/google/googlenav/ui/wizard/fM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/fM;->b()V

    if-eqz v0, :cond_86

    const/16 v0, 0x34e

    :goto_65
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/fH;->d:Lcom/google/googlenav/ui/wizard/fM;

    invoke-virtual {v2, p1}, Lcom/google/googlenav/ui/wizard/fM;->a(Lcom/google/googlenav/bC;)Z

    move-result v2

    if-nez v2, :cond_70

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/fH;->a(I)V

    :cond_70
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fH;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->as()Lcom/google/googlenav/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/av;->b()Z

    move-result v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fH;->d:Lcom/google/googlenav/ui/wizard/fM;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/fH;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/ui/wizard/fM;->a(Lcom/google/googlenav/ah;Z)V

    :cond_83
    :goto_83
    return-void

    :cond_84
    const/4 v0, 0x0

    goto :goto_10

    :cond_86
    const/16 v0, 0x357

    goto :goto_65

    :cond_89
    invoke-virtual {p1}, Lcom/google/googlenav/bC;->e()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-virtual {p1}, Lcom/google/googlenav/bC;->f()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a1

    const/16 v0, 0x34d

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/fH;->a(I)V

    :goto_9b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fH;->d:Lcom/google/googlenav/ui/wizard/fM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fM;->a()V

    goto :goto_83

    :cond_a1
    const/16 v0, 0x34c

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/fH;->a(I)V

    goto :goto_9b
.end method
