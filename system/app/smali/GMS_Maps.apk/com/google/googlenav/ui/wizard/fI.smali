.class Lcom/google/googlenav/ui/wizard/fI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/bB;


# instance fields
.field private final a:Lcom/google/googlenav/L;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ah;Lcom/google/googlenav/L;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/fI;->a:Lcom/google/googlenav/L;

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->as()Lcom/google/googlenav/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/av;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/fI;->b:Z

    return-void
.end method

.method private a(Z)V
    .registers 9

    if-eqz p1, :cond_29

    const-string v0, "s"

    :goto_4
    const/16 v1, 0x65

    const-string v2, "r"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_29
    const-string v0, "e"

    goto :goto_4
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fI;->a:Lcom/google/googlenav/L;

    const/16 v1, 0x347

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/fI;->a(Z)V

    return-void
.end method

.method public a(Lcom/google/googlenav/bC;)V
    .registers 4

    invoke-virtual {p1}, Lcom/google/googlenav/bC;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/fI;->b:Z

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/google/googlenav/bC;->b()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/fI;->a(Z)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    invoke-virtual {p1}, Lcom/google/googlenav/bC;->e()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Lcom/google/googlenav/bC;->f()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2f

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fI;->a:Lcom/google/googlenav/L;

    const/16 v1, 0x34d

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    :goto_2a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/fI;->a(Z)V

    goto :goto_11

    :cond_2f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fI;->a:Lcom/google/googlenav/L;

    const/16 v1, 0x347

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    goto :goto_2a
.end method
