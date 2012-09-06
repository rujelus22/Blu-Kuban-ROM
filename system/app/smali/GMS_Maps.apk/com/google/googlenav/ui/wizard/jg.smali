.class Lcom/google/googlenav/ui/wizard/jg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/aV;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ja;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ja;)V
    .registers 2
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/jg;->a:Lcom/google/googlenav/ui/wizard/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jg;->a:Lcom/google/googlenav/ui/wizard/ja;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ja;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 598
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jg;->a:Lcom/google/googlenav/ui/wizard/ja;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ja;->o()Z

    move-result v0

    if-nez v0, :cond_10

    .line 609
    :goto_f
    return-void

    .line 602
    :cond_10
    if-nez p1, :cond_18

    .line 604
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jg;->a:Lcom/google/googlenav/ui/wizard/ja;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ja;->d(Lcom/google/googlenav/ui/wizard/ja;)V

    goto :goto_f

    .line 607
    :cond_18
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jg;->a:Lcom/google/googlenav/ui/wizard/ja;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/ja;->a(Lcom/google/googlenav/ui/wizard/ja;Z)V

    goto :goto_f
.end method
