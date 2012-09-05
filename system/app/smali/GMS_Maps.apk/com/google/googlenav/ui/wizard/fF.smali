.class Lcom/google/googlenav/ui/wizard/fF;
.super Ljava/lang/Object;

# interfaces
.implements LaS/b;


# instance fields
.field private final a:Lcom/google/googlenav/L;

.field private final b:LaY/Y;

.field private final c:Lcom/google/googlenav/ah;

.field private final d:Lcom/google/googlenav/ui/wizard/fM;

.field private final e:Lcom/google/googlenav/ui/wizard/fE;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/L;LaY/Y;Lcom/google/googlenav/ah;Lcom/google/googlenav/ui/wizard/fE;Lcom/google/googlenav/ui/wizard/fM;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fF;->a:Lcom/google/googlenav/L;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/fF;->b:LaY/Y;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/fF;->c:Lcom/google/googlenav/ah;

    iput-object p5, p0, Lcom/google/googlenav/ui/wizard/fF;->d:Lcom/google/googlenav/ui/wizard/fM;

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/fF;->e:Lcom/google/googlenav/ui/wizard/fE;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fF;->a:Lcom/google/googlenav/L;

    invoke-interface {v0}, Lcom/google/googlenav/L;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fF;->a:Lcom/google/googlenav/L;

    const/16 v1, 0x331

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fF;->a:Lcom/google/googlenav/L;

    invoke-interface {v0}, Lcom/google/googlenav/L;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fF;->e:Lcom/google/googlenav/ui/wizard/fE;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fE;->a(Lcom/google/googlenav/ui/wizard/fE;)Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_d
    return-void

    :cond_e
    if-eqz p1, :cond_3f

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fF;->c:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bz()V

    invoke-static {}, Lcom/google/googlenav/aA;->a()Lcom/google/googlenav/aA;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fF;->c:Lcom/google/googlenav/ah;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/aA;->a(Lcom/google/googlenav/ah;Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fF;->b:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaY/i;->f(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fF;->d:Lcom/google/googlenav/ui/wizard/fM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fM;->b()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fF;->a:Lcom/google/googlenav/L;

    const/16 v1, 0x332

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fF;->d:Lcom/google/googlenav/ui/wizard/fM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fM;->a()V

    goto :goto_d

    :cond_3f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fF;->a:Lcom/google/googlenav/L;

    const/16 v1, 0x331

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    goto :goto_d
.end method
