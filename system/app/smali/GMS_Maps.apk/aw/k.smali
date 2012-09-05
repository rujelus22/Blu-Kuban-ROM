.class Law/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/CharSequence;

.field final synthetic c:Law/g;


# direct methods
.method constructor <init>(Law/g;ILjava/lang/CharSequence;)V
    .registers 4

    iput-object p1, p0, Law/k;->c:Law/g;

    iput p2, p0, Law/k;->a:I

    iput-object p3, p0, Law/k;->b:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Law/k;->c:Law/g;

    invoke-static {v0}, Law/g;->b(Law/g;)Lcom/google/googlenav/ui/view/dialog/I;

    move-result-object v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Law/k;->c:Law/g;

    invoke-static {v0}, Law/g;->b(Law/g;)Lcom/google/googlenav/ui/view/dialog/I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/I;->isShowing()Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p0, Law/k;->c:Law/g;

    invoke-static {v0}, Law/g;->b(Law/g;)Lcom/google/googlenav/ui/view/dialog/I;

    move-result-object v0

    iget v1, p0, Law/k;->a:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/I;->a(I)Z

    move-result v0

    iget-object v1, p0, Law/k;->c:Law/g;

    invoke-static {v1}, Law/g;->b(Law/g;)Lcom/google/googlenav/ui/view/dialog/I;

    move-result-object v1

    iget-object v2, p0, Law/k;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/dialog/I;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v2, p0, Law/k;->c:Law/g;

    invoke-static {v2}, Law/g;->b(Law/g;)Lcom/google/googlenav/ui/view/dialog/I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/dialog/I;->h()V

    iget-object v2, p0, Law/k;->c:Law/g;

    invoke-static {v2}, Law/g;->b(Law/g;)Lcom/google/googlenav/ui/view/dialog/I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/dialog/I;->show()V

    if-nez v0, :cond_4b

    iget-object v0, p0, Law/k;->c:Law/g;

    invoke-static {v0}, Law/g;->b(Law/g;)Lcom/google/googlenav/ui/view/dialog/I;

    move-result-object v0

    iget v2, p0, Law/k;->a:I

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/dialog/I;->a(I)Z

    :cond_4b
    if-nez v1, :cond_58

    iget-object v0, p0, Law/k;->c:Law/g;

    invoke-static {v0}, Law/g;->b(Law/g;)Lcom/google/googlenav/ui/view/dialog/I;

    move-result-object v0

    iget-object v1, p0, Law/k;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/I;->a(Ljava/lang/CharSequence;)Z

    :cond_58
    return-void
.end method
