.class Lcom/google/googlenav/ui/wizard/er;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/bw;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eo;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eo;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/er;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/er;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eo;->e(Lcom/google/googlenav/ui/wizard/eo;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/er;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eo;->a()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/er;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eo;->c(Lcom/google/googlenav/ui/wizard/eo;)Lcom/google/googlenav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->at()Lcom/google/googlenav/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/av;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/er;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eo;->f(Lcom/google/googlenav/ui/wizard/eo;)V

    goto :goto_d
.end method

.method public a(Lcom/google/googlenav/ui/wizard/bx;)V
    .registers 9

    const/16 v6, 0x2d0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/er;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eo;->c(Lcom/google/googlenav/ui/wizard/eo;)Lcom/google/googlenav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->at()Lcom/google/googlenav/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/av;->a()V

    :try_start_11
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/er;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eo;->c(Lcom/google/googlenav/ui/wizard/eo;)Lcom/google/googlenav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->at()Lcom/google/googlenav/av;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/aw;

    const/16 v2, 0x200

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lbf/a;->a(Lcom/google/googlenav/ui/wizard/bx;IZ)Lah/f;

    move-result-object v2

    iget-object v3, p1, Lcom/google/googlenav/ui/wizard/bx;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/aw;-><init>(Lah/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/av;->a(Lcom/google/googlenav/aw;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/er;->a:Lcom/google/googlenav/ui/wizard/eo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/eo;->a(Lcom/google/googlenav/ui/wizard/eo;Z)Z
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_32} :catch_33
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_32} :catch_54

    :goto_32
    return-void

    :catch_33
    move-exception v0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/er;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eo;->d(Lcom/google/googlenav/ui/wizard/eo;)Lcom/google/googlenav/ui/wizard/ey;

    move-result-object v0

    invoke-static {v6}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/er;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/eo;->c(Lcom/google/googlenav/ui/wizard/eo;)Lcom/google/googlenav/ah;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/ey;->a(Ljava/lang/String;)V

    goto :goto_32

    :catch_54
    move-exception v0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/er;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eo;->d(Lcom/google/googlenav/ui/wizard/eo;)Lcom/google/googlenav/ui/wizard/ey;

    move-result-object v0

    invoke-static {v6}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/er;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/eo;->c(Lcom/google/googlenav/ui/wizard/eo;)Lcom/google/googlenav/ah;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/ey;->a(Ljava/lang/String;)V

    goto :goto_32
.end method
