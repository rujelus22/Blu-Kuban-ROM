.class LaQ/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:LaS/c;

.field final synthetic b:LaS/h;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:LaQ/ao;


# direct methods
.method constructor <init>(LaQ/ao;LaS/c;LaS/h;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, LaQ/ax;->d:LaQ/ao;

    iput-object p2, p0, LaQ/ax;->a:LaS/c;

    iput-object p3, p0, LaQ/ax;->b:LaS/h;

    iput-object p4, p0, LaQ/ax;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 508
    iget-object v0, p0, LaQ/ax;->a:LaS/c;

    invoke-virtual {v0}, LaS/c;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaS/c;

    .line 509
    iget-object v1, p0, LaQ/ax;->b:LaS/h;

    iget-object v2, p0, LaQ/ax;->d:LaQ/ao;

    invoke-static {v2}, LaQ/ao;->a(LaQ/ao;)Lcom/google/googlenav/ai;

    move-result-object v2

    invoke-static {v1, v0, v2}, LaS/a;->a(LaS/h;LaS/c;Lcom/google/googlenav/ai;)V

    .line 510
    invoke-virtual {v0}, LaS/c;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "editlocation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 512
    iget-object v0, p0, LaQ/ax;->d:LaQ/ao;

    iget-object v1, p0, LaQ/ax;->c:Landroid/content/Context;

    iget-object v2, p0, LaQ/ax;->b:LaS/h;

    invoke-static {v0, v1, v2}, LaQ/ao;->b(LaQ/ao;Landroid/content/Context;LaS/h;)V

    .line 522
    :goto_2c
    return-void

    .line 515
    :cond_2d
    invoke-virtual {v0}, LaS/c;->e()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 516
    iget-object v1, p0, LaQ/ax;->d:LaQ/ao;

    invoke-static {v1}, LaQ/ao;->b(LaQ/ao;)Lcom/google/googlenav/be;

    move-result-object v1

    iget-object v2, p0, LaQ/ax;->d:LaQ/ao;

    invoke-static {v2}, LaQ/ao;->a(LaQ/ao;)Lcom/google/googlenav/ai;

    move-result-object v2

    invoke-virtual {v0}, LaS/c;->f()I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/googlenav/be;->b(Lcom/google/googlenav/ai;ILcom/google/googlenav/bf;)V

    .line 519
    :cond_47
    new-instance v0, Lcom/google/googlenav/ui/android/c;

    iget-object v1, p0, LaQ/ax;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/android/c;-><init>(Landroid/content/Context;)V

    .line 520
    iget-object v1, p0, LaQ/ax;->b:LaS/h;

    invoke-virtual {v1}, LaS/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/c;->b(Ljava/lang/String;)V

    goto :goto_2c
.end method
