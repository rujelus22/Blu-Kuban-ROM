.class Lcom/google/googlenav/ui/view/dialog/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/aY;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/bm;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bm;)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bq;->a:Lcom/google/googlenav/ui/view/dialog/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/aW;)V
    .registers 3
    .parameter

    .prologue
    .line 130
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->n()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->r()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 131
    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bq;->a:Lcom/google/googlenav/ui/view/dialog/bm;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/bm;->a(Lcom/google/googlenav/ui/view/dialog/bm;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 133
    :cond_15
    return-void
.end method

.method public a(Lcom/google/googlenav/aW;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 126
    return-void
.end method

.method public b(Lcom/google/googlenav/aW;)V
    .registers 3
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bq;->a:Lcom/google/googlenav/ui/view/dialog/bm;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/bm;->a(Lcom/google/googlenav/ui/view/dialog/bm;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 138
    return-void
.end method
