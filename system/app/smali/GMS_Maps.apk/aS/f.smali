.class LaS/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:LaS/e;


# direct methods
.method constructor <init>(LaS/e;)V
    .registers 2

    iput-object p1, p0, LaS/f;->a:LaS/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 5

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, LaS/f;->a:LaS/e;

    iget-object v0, v0, LaS/e;->a:Landroid/view/MenuItem;

    iget-object v1, p0, LaS/f;->a:LaS/e;

    invoke-static {v1}, LaS/e;->a(LaS/e;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, LaS/f;->a:LaS/e;

    iget-object v0, v0, LaS/e;->b:Landroid/widget/Button;

    iget-object v1, p0, LaS/f;->a:LaS/e;

    invoke-static {v1}, LaS/e;->a(LaS/e;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_17
.end method
