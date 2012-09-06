.class Lcom/google/googlenav/ui/wizard/gp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/g;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gy;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/gj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gj;Lcom/google/googlenav/ui/wizard/gy;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 666
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gp;->b:Lcom/google/googlenav/ui/wizard/gj;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/gp;->a:Lcom/google/googlenav/ui/wizard/gy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 669
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gp;->b:Lcom/google/googlenav/ui/wizard/gj;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 670
    if-eqz p2, :cond_17

    .line 671
    invoke-static {p2}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ai;

    move-result-object v0

    .line 672
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->e(Z)V

    .line 673
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gp;->a:Lcom/google/googlenav/ui/wizard/gy;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/wizard/gy;->a(Lcom/google/googlenav/ai;)V

    .line 677
    :goto_16
    return-void

    .line 675
    :cond_17
    const/16 v0, 0x3f3

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_16
.end method
