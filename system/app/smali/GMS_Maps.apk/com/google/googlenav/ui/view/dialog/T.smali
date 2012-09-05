.class Lcom/google/googlenav/ui/view/dialog/T;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/S;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/S;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/T;->a:Lcom/google/googlenav/ui/view/dialog/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/T;->a:Lcom/google/googlenav/ui/view/dialog/S;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/S;->c:Lcom/google/googlenav/ui/view/dialog/Q;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/T;->a:Lcom/google/googlenav/ui/view/dialog/S;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/dialog/S;->b:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/dialog/Q;->a(Lcom/google/googlenav/ui/view/dialog/Q;Landroid/widget/ImageView;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/T;->a:Lcom/google/googlenav/ui/view/dialog/S;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/S;->c:Lcom/google/googlenav/ui/view/dialog/Q;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/Q;->d(Lcom/google/googlenav/ui/view/dialog/Q;)Lay/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/T;->a:Lcom/google/googlenav/ui/view/dialog/S;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/dialog/S;->c:Lcom/google/googlenav/ui/view/dialog/Q;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/Q;->c(Lcom/google/googlenav/ui/view/dialog/Q;)Lay/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lay/a;->b(Lay/q;)V

    return-void
.end method
