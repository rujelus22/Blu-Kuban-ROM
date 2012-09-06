.class Lcom/google/googlenav/ui/friend/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/ui/friend/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/friend/a;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 657
    iput-object p1, p0, Lcom/google/googlenav/ui/friend/e;->b:Lcom/google/googlenav/ui/friend/a;

    iput p2, p0, Lcom/google/googlenav/ui/friend/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 660
    iget v0, p0, Lcom/google/googlenav/ui/friend/e;->a:I

    if-eq p2, v0, :cond_24

    .line 661
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/e;->b:Lcom/google/googlenav/ui/friend/a;

    invoke-static {v0}, Lcom/google/googlenav/ui/friend/a;->a(Lcom/google/googlenav/ui/friend/a;)Lcom/google/googlenav/ui/friend/p;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/ui/friend/a;->k()Lcom/google/common/collect/bx;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/bx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/friend/p;->a(I)V

    .line 662
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/e;->b:Lcom/google/googlenav/ui/friend/a;

    invoke-static {v0}, Lcom/google/googlenav/ui/friend/a;->d(Lcom/google/googlenav/ui/friend/a;)V

    .line 664
    :cond_24
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 665
    return-void
.end method
