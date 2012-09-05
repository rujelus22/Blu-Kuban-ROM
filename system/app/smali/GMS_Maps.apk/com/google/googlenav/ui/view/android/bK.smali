.class Lcom/google/googlenav/ui/view/android/bK;
.super Ljava/lang/Object;

# interfaces
.implements LaY/f;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ah;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/googlenav/ui/view/android/bI;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bI;Lcom/google/googlenav/ah;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bK;->c:Lcom/google/googlenav/ui/view/android/bI;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bK;->a:Lcom/google/googlenav/ah;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/bK;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/E;)V
    .registers 9

    const/4 v6, 0x0

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bK;->c:Lcom/google/googlenav/ui/view/android/bI;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/bI;->h:Landroid/view/View;

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bK;->a:Lcom/google/googlenav/ah;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bK;->b:Ljava/lang/String;

    invoke-static {v0, p1, v1}, LaY/aq;->a(Lcom/google/googlenav/ah;Lcom/google/googlenav/E;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_9

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    new-instance v2, LaX/i;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bK;->c:Lcom/google/googlenav/ui/view/android/bI;

    iget-object v3, v3, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    invoke-virtual {v3}, LaY/m;->bD()Lay/p;

    move-result-object v3

    invoke-virtual {v3}, Lay/p;->a()Lay/a;

    move-result-object v3

    const/4 v4, 0x0

    sget v5, Lcom/google/googlenav/ui/bw;->bt:I

    invoke-direct {v2, v3, v4, v5}, LaX/i;-><init>(Lay/a;Lax/aS;I)V

    invoke-static {v1, v6, v0, v2}, LaY/aq;->a(Ljava/util/Vector;ILjava/util/Vector;LaX/i;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bK;->c:Lcom/google/googlenav/ui/view/android/bI;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bl;

    invoke-static {v2, v0}, Lcom/google/googlenav/ui/view/android/bI;->a(Lcom/google/googlenav/ui/view/android/bI;Lcom/google/googlenav/ui/bl;)Lcom/google/googlenav/ui/bl;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bK;->c:Lcom/google/googlenav/ui/view/android/bI;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/bI;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bK;->c:Lcom/google/googlenav/ui/view/android/bI;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/bI;->a(Lcom/google/googlenav/ui/view/android/bI;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method
