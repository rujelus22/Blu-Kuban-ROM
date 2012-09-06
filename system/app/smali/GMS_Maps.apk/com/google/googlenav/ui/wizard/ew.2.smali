.class Lcom/google/googlenav/ui/wizard/eW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/bn;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lax/A;

.field final synthetic c:Lcom/google/googlenav/ui/wizard/eT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eT;Ljava/util/List;Lax/A;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eW;->c:Lcom/google/googlenav/ui/wizard/eT;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/eW;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/eW;->b:Lax/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 5
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eW;->a:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 251
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eW;->c:Lcom/google/googlenav/ui/wizard/eT;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eW;->b:Lax/A;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eW;->a:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/eT;->b(Lcom/google/googlenav/ui/wizard/eT;Lax/A;Ljava/util/List;)V

    .line 256
    :goto_d
    return-void

    .line 254
    :cond_e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eW;->c:Lcom/google/googlenav/ui/wizard/eT;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eW;->b:Lax/A;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/eT;->b(Lcom/google/googlenav/ui/wizard/eT;Lax/A;)V

    goto :goto_d
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 259
    return-void
.end method

.method public c(Z)V
    .registers 2
    .parameter

    .prologue
    .line 262
    return-void
.end method
