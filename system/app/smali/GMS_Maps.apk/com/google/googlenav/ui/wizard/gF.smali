.class Lcom/google/googlenav/ui/wizard/gF;
.super Ljava/lang/Object;

# interfaces
.implements LaN/c;


# instance fields
.field final synthetic a:Landroid/widget/CompoundButton;

.field final synthetic b:LaN/b;

.field final synthetic c:Lcom/google/googlenav/ui/wizard/gE;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gE;Landroid/widget/CompoundButton;LaN/b;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gF;->c:Lcom/google/googlenav/ui/wizard/gE;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/gF;->a:Landroid/widget/CompoundButton;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/gF;->b:LaN/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LaN/d;)V
    .registers 4

    sget-object v0, LaN/d;->c:LaN/d;

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gF;->c:Lcom/google/googlenav/ui/wizard/gE;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gF;->a:Landroid/widget/CompoundButton;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/gE;->a(Lcom/google/googlenav/ui/wizard/gE;Landroid/widget/CompoundButton;)V

    :goto_b
    return-void

    :cond_c
    sget-object v0, LaN/d;->b:LaN/d;

    if-ne p1, v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gF;->b:LaN/b;

    invoke-virtual {v0}, LaN/b;->m()V

    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gF;->a:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_b
.end method
