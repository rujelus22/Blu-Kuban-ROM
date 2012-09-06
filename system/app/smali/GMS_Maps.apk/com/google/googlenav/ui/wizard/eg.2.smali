.class Lcom/google/googlenav/ui/wizard/eG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eE;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eE;)V
    .registers 2
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eG;->a:Lcom/google/googlenav/ui/wizard/eE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eG;->a:Lcom/google/googlenav/ui/wizard/eE;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eE;->d(Lcom/google/googlenav/ui/wizard/eE;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/eJ;

    .line 411
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eJ;->a()V

    goto :goto_a

    .line 413
    :cond_1a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eG;->a:Lcom/google/googlenav/ui/wizard/eE;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eE;->e(Lcom/google/googlenav/ui/wizard/eE;)I

    move-result v0

    if-ltz v0, :cond_37

    .line 414
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eG;->a:Lcom/google/googlenav/ui/wizard/eE;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eE;->d(Lcom/google/googlenav/ui/wizard/eE;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eG;->a:Lcom/google/googlenav/ui/wizard/eE;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/eE;->e(Lcom/google/googlenav/ui/wizard/eE;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/eJ;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eJ;->b()V

    .line 416
    :cond_37
    return-void
.end method
