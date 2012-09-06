.class final Lcom/google/googlenav/ui/wizard/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/dialog/bc;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dl;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/dl;)V
    .registers 2
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/do;->a:Lcom/google/googlenav/ui/wizard/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/dl;Lcom/google/googlenav/ui/wizard/dj;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/do;-><init>(Lcom/google/googlenav/ui/wizard/dl;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/do;->a:Lcom/google/googlenav/ui/wizard/dl;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/di;->b(Lcom/google/googlenav/ui/wizard/di;)Lcom/google/googlenav/ui/wizard/cX;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 375
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/do;->a:Lcom/google/googlenav/ui/wizard/dl;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/di;->b(Lcom/google/googlenav/ui/wizard/di;)Lcom/google/googlenav/ui/wizard/cX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cX;->a()V

    .line 377
    :cond_15
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/do;->a:Lcom/google/googlenav/ui/wizard/dl;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/di;->b(Lcom/google/googlenav/ui/wizard/di;)Lcom/google/googlenav/ui/wizard/cX;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 382
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/do;->a:Lcom/google/googlenav/ui/wizard/dl;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/di;->b(Lcom/google/googlenav/ui/wizard/di;)Lcom/google/googlenav/ui/wizard/cX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cX;->e()V

    .line 384
    :cond_15
    return-void
.end method
