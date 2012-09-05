.class Lcom/google/googlenav/ui/wizard/fD;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/g;


# instance fields
.field private final a:Lcom/google/googlenav/ui/wizard/fM;

.field private final b:Lcom/google/googlenav/ui/wizard/fE;

.field private final c:Lcom/google/googlenav/L;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/L;Lcom/google/googlenav/ui/wizard/fE;Lcom/google/googlenav/ui/wizard/fM;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/fD;->a:Lcom/google/googlenav/ui/wizard/fM;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/fD;->b:Lcom/google/googlenav/ui/wizard/fE;

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fD;->c:Lcom/google/googlenav/L;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lam/b;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fD;->c:Lcom/google/googlenav/L;

    invoke-interface {v0}, Lcom/google/googlenav/L;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fD;->b:Lcom/google/googlenav/ui/wizard/fE;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fE;->a(Lcom/google/googlenav/ui/wizard/fE;)Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_d
    return-void

    :cond_e
    if-eqz p2, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fD;->a:Lcom/google/googlenav/ui/wizard/fM;

    invoke-static {p2}, Lcom/google/googlenav/ah;->a(Lam/b;)Lcom/google/googlenav/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/fM;->a(Lcom/google/googlenav/ah;)V

    goto :goto_d

    :cond_1a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fD;->c:Lcom/google/googlenav/L;

    const/16 v1, 0x335

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fD;->a:Lcom/google/googlenav/ui/wizard/fM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fM;->a()V

    goto :goto_d
.end method
