.class Lcom/google/googlenav/ui/wizard/gG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/gN;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gH;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/gF;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gF;Lcom/google/googlenav/ui/wizard/gH;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gG;->b:Lcom/google/googlenav/ui/wizard/gF;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/gG;->a:Lcom/google/googlenav/ui/wizard/gH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gG;->a:Lcom/google/googlenav/ui/wizard/gH;

    if-eqz v0, :cond_9

    .line 295
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gG;->a:Lcom/google/googlenav/ui/wizard/gH;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/gH;->a()V

    .line 297
    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gG;->b:Lcom/google/googlenav/ui/wizard/gF;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gF;->a()V

    .line 298
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .parameter

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gG;->a:Lcom/google/googlenav/ui/wizard/gH;

    if-eqz v0, :cond_9

    .line 287
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gG;->a:Lcom/google/googlenav/ui/wizard/gH;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/wizard/gH;->a(Ljava/util/List;)V

    .line 289
    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gG;->b:Lcom/google/googlenav/ui/wizard/gF;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gF;->a()V

    .line 290
    return-void
.end method
