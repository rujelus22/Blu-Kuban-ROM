.class Lcom/google/googlenav/ui/wizard/eV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaE/d;


# instance fields
.field final synthetic a:Lax/A;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/eT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eT;Lax/A;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eV;->b:Lcom/google/googlenav/ui/wizard/eT;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/eV;->a:Lax/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eV;->b:Lcom/google/googlenav/ui/wizard/eT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eT;->o()Z

    move-result v0

    if-nez v0, :cond_9

    .line 183
    :goto_8
    return-void

    .line 181
    :cond_9
    const/16 v0, 0x2eb

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(II)Landroid/widget/Toast;

    goto :goto_8
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eV;->b:Lcom/google/googlenav/ui/wizard/eT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eT;->o()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 172
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eV;->b:Lcom/google/googlenav/ui/wizard/eT;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eV;->a:Lax/A;

    invoke-static {v0, v1, p1}, Lcom/google/googlenav/ui/wizard/eT;->a(Lcom/google/googlenav/ui/wizard/eT;Lax/A;Ljava/util/List;)V

    .line 174
    :cond_f
    return-void
.end method
