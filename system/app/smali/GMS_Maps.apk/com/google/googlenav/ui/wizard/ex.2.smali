.class Lcom/google/googlenav/ui/wizard/eX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaE/b;


# instance fields
.field final synthetic a:Lax/A;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/eT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eT;Lax/A;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eX;->b:Lcom/google/googlenav/ui/wizard/eT;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/eX;->a:Lax/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eX;->b:Lcom/google/googlenav/ui/wizard/eT;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/eT;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 279
    if-nez p1, :cond_11

    .line 280
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eX;->b:Lcom/google/googlenav/ui/wizard/eT;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eX;->a:Lax/A;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/eT;->b(Lcom/google/googlenav/ui/wizard/eT;Lax/A;)V

    .line 285
    :goto_10
    return-void

    .line 282
    :cond_11
    const/16 v0, 0x2eb

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(II)Landroid/widget/Toast;

    goto :goto_10
.end method
