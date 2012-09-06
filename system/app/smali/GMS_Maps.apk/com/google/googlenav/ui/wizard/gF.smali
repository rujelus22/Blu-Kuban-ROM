.class Lcom/google/googlenav/ui/wizard/gf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/fJ;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gb;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/gb;)V
    .registers 2
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gf;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/gb;Lcom/google/googlenav/ui/wizard/gc;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/gf;-><init>(Lcom/google/googlenav/ui/wizard/gb;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/aU;)V
    .registers 4
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gf;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gb;->d(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/fL;

    move-result-object v0

    if-eqz v0, :cond_26

    if-eqz p1, :cond_26

    .line 368
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gf;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gb;->d(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/fL;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/aU;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/fL;->b(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gf;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gb;->d(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/fL;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/fL;->b(Z)V

    .line 370
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gf;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/wizard/gb;->a(Lcom/google/googlenav/ui/wizard/gb;Lcom/google/googlenav/aU;)Lcom/google/googlenav/aU;

    .line 372
    :cond_26
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .parameter

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gf;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gb;->d(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/fL;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 350
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gf;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gb;->d(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/fL;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/fL;->a(Ljava/util/List;)V

    .line 351
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gf;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gb;->d(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/fL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fL;->m()V

    .line 352
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gf;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gb;->d(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/fL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fL;->i()V

    .line 354
    :cond_23
    return-void
.end method
