.class Lcom/google/googlenav/ui/wizard/fw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/cb;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ft;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ft;)V
    .registers 2
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fw;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fw;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ft;->o()Z

    move-result v0

    if-nez v0, :cond_9

    .line 303
    :cond_8
    :goto_8
    return-void

    .line 294
    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fw;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ft;->e(Lcom/google/googlenav/ui/wizard/ft;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 297
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fw;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ft;->a()V

    goto :goto_8

    .line 299
    :cond_17
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fw;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ft;->c(Lcom/google/googlenav/ui/wizard/ft;)Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->aq()Lcom/google/googlenav/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ax;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 300
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fw;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ft;->f(Lcom/google/googlenav/ui/wizard/ft;)V

    goto :goto_8
.end method

.method public a(Lcom/google/googlenav/ui/wizard/cc;)V
    .registers 9
    .parameter

    .prologue
    const/16 v6, 0x37e

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 256
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fw;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ft;->o()Z

    move-result v0

    if-nez v0, :cond_d

    .line 286
    :goto_c
    return-void

    .line 261
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fw;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ft;->c(Lcom/google/googlenav/ui/wizard/ft;)Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->aq()Lcom/google/googlenav/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ax;->a()V

    .line 264
    :try_start_1a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fw;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ft;->c(Lcom/google/googlenav/ui/wizard/ft;)Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->aq()Lcom/google/googlenav/ax;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ay;

    const/16 v2, 0x200

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, LaT/a;->a(Lcom/google/googlenav/ui/wizard/cc;IZ)LS/f;

    move-result-object v2

    iget-object v3, p1, Lcom/google/googlenav/ui/wizard/cc;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/ay;-><init>(LS/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ax;->a(Lcom/google/googlenav/ay;)Z

    .line 269
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fw;->a:Lcom/google/googlenav/ui/wizard/ft;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/ft;->a(Lcom/google/googlenav/ui/wizard/ft;Z)Z
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_3b} :catch_3c
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_3b} :catch_5d

    goto :goto_c

    .line 270
    :catch_3c
    move-exception v0

    .line 271
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fw;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ft;->d(Lcom/google/googlenav/ui/wizard/ft;)Lcom/google/googlenav/ui/wizard/fG;

    move-result-object v0

    invoke-static {v6}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fw;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/ft;->c(Lcom/google/googlenav/ui/wizard/ft;)Lcom/google/googlenav/ai;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/fG;->a(Ljava/lang/String;)V

    goto :goto_c

    .line 274
    :catch_5d
    move-exception v0

    .line 275
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fw;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ft;->d(Lcom/google/googlenav/ui/wizard/ft;)Lcom/google/googlenav/ui/wizard/fG;

    move-result-object v0

    invoke-static {v6}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fw;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/ft;->c(Lcom/google/googlenav/ui/wizard/ft;)Lcom/google/googlenav/ai;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/fG;->a(Ljava/lang/String;)V

    goto :goto_c
.end method
