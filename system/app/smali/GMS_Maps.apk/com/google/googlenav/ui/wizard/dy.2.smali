.class Lcom/google/googlenav/ui/wizard/dy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LaL/c;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/dx;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dx;LaL/c;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dy;->b:Lcom/google/googlenav/ui/wizard/dx;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/dy;->a:LaL/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dy;->b:Lcom/google/googlenav/ui/wizard/dx;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dx;->a:Lcom/google/googlenav/ui/wizard/dv;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dv;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dy;->b:Lcom/google/googlenav/ui/wizard/dx;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dx;->a:Lcom/google/googlenav/ui/wizard/dv;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dy;->a:LaL/c;

    invoke-virtual {v1}, LaL/c;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dy;->a:LaL/c;

    invoke-virtual {v2}, LaL/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/dv;->a(Lcom/google/googlenav/ui/wizard/dv;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dy;->b:Lcom/google/googlenav/ui/wizard/dx;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dx;->a:Lcom/google/googlenav/ui/wizard/dv;

    const/4 v1, 0x3

    iput v1, v0, Lcom/google/googlenav/ui/wizard/dv;->e:I

    return-void
.end method
