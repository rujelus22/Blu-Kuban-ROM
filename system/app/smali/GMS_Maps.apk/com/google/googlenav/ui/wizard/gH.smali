.class Lcom/google/googlenav/ui/wizard/gh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lan/y;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gb;

.field private volatile b:Z


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/gb;)V
    .registers 3
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gh;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gh;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/gb;Lcom/google/googlenav/ui/wizard/gc;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/gh;-><init>(Lcom/google/googlenav/ui/wizard/gb;)V

    return-void
.end method


# virtual methods
.method public a(ILan/h;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gh;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gb;->d(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/fL;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 402
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gh;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gb;->d(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/fL;

    move-result-object v0

    const/16 v1, 0xbe

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/fL;->b(I)V

    .line 404
    :cond_13
    return-void
.end method

.method public a(Lat/B;Lan/h;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gh;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gb;->d(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/fL;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gh;->b:Z

    if-nez v0, :cond_3a

    .line 387
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gh;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gb;->f(Lcom/google/googlenav/ui/wizard/gb;)Lan/s;

    move-result-object v0

    .line 388
    if-eqz v0, :cond_3b

    .line 389
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/gh;->b:Z

    .line 390
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gh;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gb;->g(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/fH;

    move-result-object v1

    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v2

    invoke-virtual {v2}, Lat/B;->c()I

    move-result v2

    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v3

    invoke-virtual {v3}, Lat/B;->e()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ui/wizard/fH;->a(II)V

    .line 392
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gh;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gb;->g(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/fH;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/fH;->a(Lan/s;Ljava/lang/String;)V

    .line 397
    :cond_3a
    :goto_3a
    return-void

    .line 394
    :cond_3b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gh;->a:Lcom/google/googlenav/ui/wizard/gb;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gb;->d(Lcom/google/googlenav/ui/wizard/gb;)Lcom/google/googlenav/ui/wizard/fL;

    move-result-object v0

    const/16 v1, 0xbe

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/fL;->b(I)V

    goto :goto_3a
.end method
